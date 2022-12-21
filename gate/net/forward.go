package net

import (
	"bytes"
	"encoding/base64"
	"encoding/binary"
	"fmt"
	"math/rand"
	"strconv"
	"strings"
	"time"

	"hk4e/common/mq"
	"hk4e/dispatch/controller"
	"hk4e/gate/kcp"
	"hk4e/pkg/endec"
	"hk4e/pkg/httpclient"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

const (
	ConnEst = iota
	ConnActive
	ConnClose
)

// 发送消息到GS
func (k *KcpConnectManager) recvMsgHandle(protoMsg *ProtoMsg, session *Session) {
	userId := session.userId
	connState := session.connState
	if protoMsg.HeadMessage == nil {
		logger.Error("recv null head msg: %v", protoMsg)
	}
	// gate本地处理的请求
	switch protoMsg.CmdId {
	case cmd.GetPlayerTokenReq:
		// 获取玩家token请求
		if connState != ConnEst {
			return
		}
		getPlayerTokenReq := protoMsg.PayloadMessage.(*proto.GetPlayerTokenReq)
		getPlayerTokenRsp := k.getPlayerToken(getPlayerTokenReq, session)
		if getPlayerTokenRsp == nil {
			return
		}
		// 返回数据到客户端
		rsp := new(ProtoMsg)
		rsp.ConvId = protoMsg.ConvId
		rsp.CmdId = cmd.GetPlayerTokenRsp
		rsp.HeadMessage = k.getHeadMsg(protoMsg.HeadMessage.ClientSequenceId)
		rsp.PayloadMessage = getPlayerTokenRsp
		k.localMsgOutput <- rsp
	case cmd.PlayerForceExitReq:
		// 玩家退出游戏请求
		if connState != ConnActive {
			return
		}
		k.kcpEventInput <- &KcpEvent{
			ConvId:       protoMsg.ConvId,
			EventId:      KcpConnForceClose,
			EventMessage: uint32(kcp.EnetClientClose),
		}
	case cmd.PingReq:
		// ping请求
		pingReq := protoMsg.PayloadMessage.(*proto.PingReq)
		logger.Debug("user ping req, data: %v", pingReq.String())
		// 返回数据到客户端
		pingRsp := new(proto.PingRsp)
		pingRsp.ClientTime = pingReq.ClientTime
		rsp := new(ProtoMsg)
		rsp.ConvId = protoMsg.ConvId
		rsp.CmdId = cmd.PingRsp
		rsp.HeadMessage = k.getHeadMsg(protoMsg.HeadMessage.ClientSequenceId)
		rsp.PayloadMessage = pingRsp
		k.localMsgOutput <- rsp
		logger.Debug("convId: %v, RTO: %v, SRTT: %v, RTTVar: %v", protoMsg.ConvId, session.conn.GetRTO(), session.conn.GetSRTT(), session.conn.GetSRTTVar())
		if connState != ConnActive {
			return
		}
		// 通知GS玩家客户端的本地时钟
		connCtrlMsg := new(mq.ConnCtrlMsg)
		connCtrlMsg.UserId = userId
		connCtrlMsg.ClientTime = pingReq.ClientTime
		k.messageQueue.SendToGs("1", &mq.NetMsg{
			MsgType:     mq.MsgTypeConnCtrl,
			EventId:     mq.ClientTimeNotify,
			ConnCtrlMsg: connCtrlMsg,
		})
		// 通知GS玩家客户端往返时延
		rtt := session.conn.GetSRTT()
		connCtrlMsg = new(mq.ConnCtrlMsg)
		connCtrlMsg.UserId = userId
		connCtrlMsg.ClientRtt = uint32(rtt)
		k.messageQueue.SendToGs("1", &mq.NetMsg{
			MsgType:     mq.MsgTypeConnCtrl,
			EventId:     mq.ClientRttNotify,
			ConnCtrlMsg: connCtrlMsg,
		})
	default:
		if connState != ConnActive && !(protoMsg.CmdId == cmd.PlayerLoginReq || protoMsg.CmdId == cmd.SetPlayerBornDataReq) {
			logger.Error("conn not active so drop packet, cmdId: %v, userId: %v, convId: %v", protoMsg.CmdId, userId, protoMsg.ConvId)
			return
		}
		// 转发到GS
		gameMsg := new(mq.GameMsg)
		gameMsg.UserId = userId
		gameMsg.CmdId = protoMsg.CmdId
		gameMsg.ClientSeq = protoMsg.HeadMessage.ClientSequenceId
		gameMsg.PayloadMessage = protoMsg.PayloadMessage
		k.messageQueue.SendToGs("1", &mq.NetMsg{
			MsgType: mq.MsgTypeGame,
			EventId: mq.NormalMsg,
			GameMsg: gameMsg,
		})
		// 转发到FIGHT
		if protoMsg.CmdId == cmd.CombatInvocationsNotify {
			gameMsg := new(mq.GameMsg)
			gameMsg.UserId = userId
			gameMsg.CmdId = protoMsg.CmdId
			gameMsg.ClientSeq = protoMsg.HeadMessage.ClientSequenceId
			gameMsg.PayloadMessage = protoMsg.PayloadMessage
			k.messageQueue.SendToFight("1", &mq.NetMsg{
				MsgType: mq.MsgTypeGame,
				EventId: mq.NormalMsg,
				GameMsg: gameMsg,
			})
		}
	}
}

// 从GS接收消息
func (k *KcpConnectManager) sendMsgHandle() {
	logger.Debug("send msg handle start")
	kcpRawSendChanMap := make(map[uint64]chan *ProtoMsg)
	userIdConvMap := make(map[uint32]uint64)
	sendToClientFn := func(protoMsg *ProtoMsg) {
		// 分发到每个连接具体的发送协程
		kcpRawSendChan := kcpRawSendChanMap[protoMsg.ConvId]
		if kcpRawSendChan != nil {
			select {
			case kcpRawSendChan <- protoMsg:
			default:
				logger.Error("kcpRawSendChan is full, convId: %v", protoMsg.ConvId)
			}
		} else {
			logger.Error("kcpRawSendChan is nil, convId: %v", protoMsg.ConvId)
		}
	}
	for {
		select {
		case session := <-k.createSessionChan:
			kcpRawSendChanMap[session.conn.GetConv()] = session.kcpRawSendChan
			userIdConvMap[session.userId] = session.conn.GetConv()
		case session := <-k.destroySessionChan:
			delete(kcpRawSendChanMap, session.conn.GetConv())
			delete(userIdConvMap, session.userId)
			close(session.kcpRawSendChan)
		case protoMsg := <-k.localMsgOutput:
			sendToClientFn(protoMsg)
		case netMsg := <-k.messageQueue.GetNetMsg():
			switch netMsg.MsgType {
			case mq.MsgTypeGame:
				if netMsg.EventId != mq.NormalMsg {
					logger.Error("recv unknown event from game server, event id: %v", netMsg.EventId)
					continue
				}
				gameMsg := netMsg.GameMsg
				convId, exist := userIdConvMap[gameMsg.UserId]
				if !exist {
					logger.Error("can not find convId by userId")
					continue
				}
				protoMsg := new(ProtoMsg)
				protoMsg.ConvId = convId
				protoMsg.CmdId = gameMsg.CmdId
				protoMsg.HeadMessage = k.getHeadMsg(gameMsg.ClientSeq)
				protoMsg.PayloadMessage = gameMsg.PayloadMessage
				sendToClientFn(protoMsg)
			case mq.MsgTypeConnCtrl:
				if netMsg.EventId != mq.KickPlayerNotify {
					continue
				}
				connCtrlMsg := netMsg.ConnCtrlMsg
				convId, exist := userIdConvMap[connCtrlMsg.KickUserId]
				if !exist {
					logger.Error("can not find convId by userId")
					continue
				}
				k.kcpEventInput <- &KcpEvent{
					ConvId:       convId,
					EventId:      KcpConnForceClose,
					EventMessage: connCtrlMsg.KickReason,
				}
			}
		}
	}
}

func (k *KcpConnectManager) getHeadMsg(clientSeq uint32) (headMsg *proto.PacketHead) {
	headMsg = new(proto.PacketHead)
	if clientSeq != 0 {
		headMsg.ClientSequenceId = clientSeq
		headMsg.SentMs = uint64(time.Now().UnixMilli())
	}
	return headMsg
}

func (k *KcpConnectManager) getPlayerToken(req *proto.GetPlayerTokenReq, session *Session) (rsp *proto.GetPlayerTokenRsp) {
	tokenVerifyRsp, err := httpclient.Post[controller.TokenVerifyRsp]("http://127.0.0.1:8080/gate/token/verify", &controller.TokenVerifyReq{
		AccountId:    req.AccountUid,
		AccountToken: req.AccountToken,
	}, "")
	if err != nil {
		logger.Error("verify token error: %v", err)
		return nil
	}
	if !tokenVerifyRsp.Valid {
		logger.Error("token error")
		return nil
	}
	// comboToken验证成功
	if tokenVerifyRsp.Forbid {
		// 封号通知
		rsp = new(proto.GetPlayerTokenRsp)
		rsp.Uid = tokenVerifyRsp.PlayerID
		rsp.IsProficientPlayer = true
		rsp.Retcode = 21
		rsp.Msg = "FORBID_CHEATING_PLUGINS"
		rsp.BlackUidEndTime = tokenVerifyRsp.ForbidEndTime
		if rsp.BlackUidEndTime == 0 {
			rsp.BlackUidEndTime = 2051193600 // 2035-01-01 00:00:00
		}
		rsp.RegPlatform = 3
		rsp.CountryCode = "US"
		addr := session.conn.RemoteAddr().String()
		split := strings.Split(addr, ":")
		rsp.ClientIpStr = split[0]
		return rsp
	}
	oldSession := k.GetSessionByUserId(tokenVerifyRsp.PlayerID)
	if oldSession != nil {
		// 顶号
		kickFinishNotifyChan := make(chan bool)
		k.kcpEventInput <- &KcpEvent{
			ConvId:       oldSession.conn.GetConv(),
			EventId:      KcpConnRelogin,
			EventMessage: kickFinishNotifyChan,
		}
		<-kickFinishNotifyChan
	}
	// 关联玩家uid和连接信息
	session.userId = tokenVerifyRsp.PlayerID
	k.SetSession(session, session.conn.GetConv(), session.userId)
	k.createSessionChan <- session
	// 返回响应
	rsp = new(proto.GetPlayerTokenRsp)
	rsp.Uid = tokenVerifyRsp.PlayerID
	rsp.AccountUid = req.AccountUid
	rsp.Token = req.AccountToken
	data := make([]byte, 16+32)
	rand.Read(data)
	rsp.SecurityCmdBuffer = data[16:]
	rsp.ClientVersionRandomKey = fmt.Sprintf("%03x-%012x", data[:3], data[4:16])
	rsp.AccountType = 1
	rsp.IsProficientPlayer = true
	rsp.PlatformType = 3
	rsp.ChannelId = 1
	rsp.SubChannelId = 1
	rsp.RegPlatform = 2
	rsp.Birthday = "2000-01-01"
	addr := session.conn.RemoteAddr().String()
	split := strings.Split(addr, ":")
	rsp.ClientIpStr = split[0]
	if req.GetKeyId() != 0 {
		logger.Debug("do hk4e 2.8 rsa logic")
		keyId := strconv.Itoa(int(req.GetKeyId()))
		encPubPrivKey, exist := k.encRsaKeyMap[keyId]
		if !exist {
			logger.Error("can not found key id: %v", keyId)
			return
		}
		pubKey, err := endec.RsaParsePubKeyByPrivKey(encPubPrivKey)
		if err != nil {
			logger.Error("parse rsa pub key error: %v", err)
			return nil
		}
		signPrivkey, err := endec.RsaParsePrivKey(k.signRsaKey)
		if err != nil {
			logger.Error("parse rsa priv key error: %v", err)
			return nil
		}
		clientSeedBase64 := req.GetClientRandKey()
		clientSeedEnc, err := base64.StdEncoding.DecodeString(clientSeedBase64)
		if err != nil {
			logger.Error("parse client seed base64 error: %v", err)
			return nil
		}
		clientSeed, err := endec.RsaDecrypt(clientSeedEnc, signPrivkey)
		if err != nil {
			logger.Error("rsa dec error: %v", err)
			return rsp
		}
		clientSeedUint64 := uint64(0)
		err = binary.Read(bytes.NewReader(clientSeed), binary.BigEndian, &clientSeedUint64)
		if err != nil {
			logger.Error("parse client seed to uint64 error: %v", err)
			return rsp
		}
		timeRand := random.GetTimeRand()
		serverSeedUint64 := timeRand.Uint64()
		session.seed = serverSeedUint64
		seedUint64 := serverSeedUint64 ^ clientSeedUint64
		seedBuf := new(bytes.Buffer)
		err = binary.Write(seedBuf, binary.BigEndian, seedUint64)
		if err != nil {
			logger.Error("conv seed uint64 to bytes error: %v", err)
			return rsp
		}
		seed := seedBuf.Bytes()
		seedEnc, err := endec.RsaEncrypt(seed, pubKey)
		if err != nil {
			logger.Error("rsa enc error: %v", err)
			return rsp
		}
		seedSign, err := endec.RsaSign(seed, signPrivkey)
		if err != nil {
			logger.Error("rsa sign error: %v", err)
			return rsp
		}
		rsp.KeyId = req.KeyId
		rsp.ServerRandKey = base64.StdEncoding.EncodeToString(seedEnc)
		rsp.Sign = base64.StdEncoding.EncodeToString(seedSign)
	}
	return rsp
}
