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
	ConnWaitToken = iota
	ConnWaitLogin
	ConnAlive
	ConnClose
)

// 发送消息到GS
func (k *KcpConnectManager) recvMsgHandle(protoMsg *ProtoMsg, session *Session) {
	userId := session.userId
	headMeta := session.headMeta
	connState := session.connState
	if protoMsg.HeadMessage == nil {
		logger.Error("recv null head msg: %v", protoMsg)
	}
	headMeta.seq = protoMsg.HeadMessage.ClientSequenceId
	// gate本地处理的请求
	switch protoMsg.CmdId {
	case cmd.GetPlayerTokenReq:
		// 获取玩家token请求
		if connState != ConnWaitToken {
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
	case cmd.PlayerLoginReq:
		// 玩家登录请求
		if connState != ConnWaitLogin {
			return
		}
		playerLoginReq := protoMsg.PayloadMessage.(*proto.PlayerLoginReq)
		playerLoginRsp := k.playerLogin(playerLoginReq, session)
		if playerLoginRsp == nil {
			return
		}
		// 返回数据到客户端
		rsp := new(ProtoMsg)
		rsp.ConvId = protoMsg.ConvId
		rsp.CmdId = cmd.PlayerLoginRsp
		rsp.HeadMessage = k.getHeadMsg(protoMsg.HeadMessage.ClientSequenceId)
		rsp.PayloadMessage = playerLoginRsp
		k.localMsgOutput <- rsp
		// 登录成功 通知GS初始化相关数据
		gameMsg := new(mq.GameMsg)
		gameMsg.UserId = userId
		gameMsg.ClientSeq = headMeta.seq
		k.messageQueue.SendToGs("1", &mq.NetMsg{
			MsgType: mq.MsgTypeGame,
			EventId: mq.UserLoginNotify,
			GameMsg: gameMsg,
		})
		logger.Info("send to gs user login ok, ConvId: %v, UserId: %v", protoMsg.ConvId, gameMsg.UserId)
	case cmd.SetPlayerBornDataReq:
		// 玩家注册请求
		if connState != ConnAlive {
			return
		}
		gameMsg := new(mq.GameMsg)
		gameMsg.UserId = userId
		gameMsg.CmdId = cmd.SetPlayerBornDataReq
		gameMsg.ClientSeq = protoMsg.HeadMessage.ClientSequenceId
		gameMsg.PayloadMessage = protoMsg.PayloadMessage
		k.messageQueue.SendToGs("1", &mq.NetMsg{
			MsgType: mq.MsgTypeGame,
			EventId: mq.UserRegNotify,
			GameMsg: gameMsg,
		})
	case cmd.PlayerForceExitReq:
		// 玩家退出游戏请求
		if connState != ConnAlive {
			return
		}
		k.kcpEventInput <- &KcpEvent{
			ConvId:       protoMsg.ConvId,
			EventId:      KcpConnForceClose,
			EventMessage: uint32(kcp.EnetClientClose),
		}
	case cmd.PingReq:
		// ping请求
		if connState != ConnAlive {
			return
		}
		pingReq := protoMsg.PayloadMessage.(*proto.PingReq)
		logger.Debug("user ping req, data: %v", pingReq.String())
		// 返回数据到客户端
		// TODO 记录客户端最后一次ping时间做超时下线处理
		pingRsp := new(proto.PingRsp)
		pingRsp.ClientTime = pingReq.ClientTime
		rsp := new(ProtoMsg)
		rsp.ConvId = protoMsg.ConvId
		rsp.CmdId = cmd.PingRsp
		rsp.HeadMessage = k.getHeadMsg(protoMsg.HeadMessage.ClientSequenceId)
		rsp.PayloadMessage = pingRsp
		k.localMsgOutput <- rsp
		// 通知GS玩家客户端的本地时钟
		gameMsg := new(mq.GameMsg)
		gameMsg.UserId = userId
		gameMsg.ClientTime = pingReq.ClientTime
		k.messageQueue.SendToGs("1", &mq.NetMsg{
			MsgType: mq.MsgTypeGame,
			EventId: mq.ClientTimeNotify,
			GameMsg: gameMsg,
		})
		// RTT
		logger.Debug("convId: %v, RTO: %v, SRTT: %v, RTTVar: %v", protoMsg.ConvId, session.conn.GetRTO(), session.conn.GetSRTT(), session.conn.GetSRTTVar())
		rtt := session.conn.GetSRTT()
		// 通知GS玩家客户端往返时延
		gameMsg = new(mq.GameMsg)
		gameMsg.UserId = userId
		gameMsg.ClientRtt = uint32(rtt)
		k.messageQueue.SendToGs("1", &mq.NetMsg{
			MsgType: mq.MsgTypeGame,
			EventId: mq.ClientRttNotify,
			GameMsg: gameMsg,
		})
	default:
		// 未登录禁止访问
		if connState != ConnAlive {
			return
		}
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
			if netMsg.MsgType != mq.MsgTypeGame {
				logger.Error("recv unknown msg type from game server, msg type: %v", netMsg.MsgType)
				continue
			}
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
		k.kcpEventInput <- &KcpEvent{
			ConvId:       oldSession.conn.GetConv(),
			EventId:      KcpConnForceClose,
			EventMessage: uint32(kcp.EnetServerRelogin),
		}
	}
	// 关联玩家uid和连接信息
	session.userId = tokenVerifyRsp.PlayerID
	session.connState = ConnWaitLogin
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
		session.changeXorKey = true
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

func (k *KcpConnectManager) playerLogin(req *proto.PlayerLoginReq, session *Session) (rsp *proto.PlayerLoginRsp) {
	logger.Debug("player login, info: %v", req.String())
	// TODO 验证token
	session.connState = ConnAlive
	// 返回响应
	rsp = new(proto.PlayerLoginRsp)
	rsp.IsUseAbilityHash = true
	rsp.AbilityHashCode = -228935105
	rsp.GameBiz = "hk4e_cn"
	rsp.IsScOpen = false
	rsp.RegisterCps = "taptap"
	rsp.CountryCode = "CN"
	rsp.Birthday = "2000-01-01"
	rsp.TotalTickTime = 1185941.871788
	rsp.ClientDataVersion = k.regionCurr.RegionInfo.ClientDataVersion
	rsp.ClientSilenceDataVersion = k.regionCurr.RegionInfo.ClientSilenceDataVersion
	rsp.ClientMd5 = k.regionCurr.RegionInfo.ClientDataMd5
	rsp.ClientSilenceMd5 = k.regionCurr.RegionInfo.ClientSilenceDataMd5
	rsp.ResVersionConfig = k.regionCurr.RegionInfo.ResVersionConfig
	rsp.ClientVersionSuffix = k.regionCurr.RegionInfo.ClientVersionSuffix
	rsp.ClientSilenceVersionSuffix = k.regionCurr.RegionInfo.ClientSilenceVersionSuffix
	return rsp
}
