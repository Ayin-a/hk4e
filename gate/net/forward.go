package net

import (
	"bytes"
	"encoding/base64"
	"encoding/binary"
	"fmt"
	"hk4e/dispatch/controller"
	"hk4e/gate/kcp"
	"hk4e/pkg/endec"
	"hk4e/pkg/httpclient"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"math/rand"
	"strconv"
	"strings"
	"time"
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
		logger.LOG.Error("recv null head msg: %v", protoMsg)
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
		netMsg := new(cmd.NetMsg)
		netMsg.UserId = userId
		netMsg.EventId = cmd.UserLoginNotify
		netMsg.ClientSeq = headMeta.seq
		k.netMsgInput <- netMsg
		logger.LOG.Info("send to gs user login ok, ConvId: %v, UserId: %v", protoMsg.ConvId, netMsg.UserId)
	case cmd.SetPlayerBornDataReq:
		// 玩家注册请求
		if connState != ConnAlive {
			return
		}
		netMsg := new(cmd.NetMsg)
		netMsg.UserId = userId
		netMsg.EventId = cmd.UserRegNotify
		netMsg.CmdId = cmd.SetPlayerBornDataReq
		netMsg.ClientSeq = protoMsg.HeadMessage.ClientSequenceId
		netMsg.PayloadMessage = protoMsg.PayloadMessage
		k.netMsgInput <- netMsg
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
		logger.LOG.Debug("user ping req, data: %v", pingReq.String())
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
		netMsg := new(cmd.NetMsg)
		netMsg.UserId = userId
		netMsg.EventId = cmd.ClientTimeNotify
		netMsg.ClientTime = pingReq.ClientTime
		k.netMsgInput <- netMsg
		// RTT
		logger.LOG.Debug("convId: %v, RTO: %v, SRTT: %v, RTTVar: %v", protoMsg.ConvId, session.conn.GetRTO(), session.conn.GetSRTT(), session.conn.GetSRTTVar())
		// 客户端往返时延通知
		rtt := session.conn.GetSRTT()
		// 通知GS玩家客户端往返时延
		netMsg = new(cmd.NetMsg)
		netMsg.UserId = userId
		netMsg.EventId = cmd.ClientRttNotify
		netMsg.ClientRtt = uint32(rtt)
		k.netMsgInput <- netMsg
	default:
		// 转发到GS
		// 未登录禁止访问GS
		if connState != ConnAlive {
			return
		}
		netMsg := new(cmd.NetMsg)
		netMsg.UserId = userId
		netMsg.EventId = cmd.NormalMsg
		netMsg.CmdId = protoMsg.CmdId
		netMsg.ClientSeq = protoMsg.HeadMessage.ClientSequenceId
		netMsg.PayloadMessage = protoMsg.PayloadMessage
		k.netMsgInput <- netMsg
	}
}

// 从GS接收消息
func (k *KcpConnectManager) sendMsgHandle() {
	logger.LOG.Debug("send msg handle start")
	kcpRawSendChanMap := make(map[uint64]chan *ProtoMsg)
	userIdConvMap := make(map[uint32]uint64)
	sendToClientFn := func(protoMsg *ProtoMsg) {
		// 分发到每个连接具体的发送协程
		kcpRawSendChan := kcpRawSendChanMap[protoMsg.ConvId]
		if kcpRawSendChan != nil {
			select {
			case kcpRawSendChan <- protoMsg:
			default:
				logger.LOG.Error("kcpRawSendChan is full, convId: %v", protoMsg.ConvId)
			}
		} else {
			logger.LOG.Error("kcpRawSendChan is nil, convId: %v", protoMsg.ConvId)
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
		case netMsg := <-k.netMsgOutput:
			convId, exist := userIdConvMap[netMsg.UserId]
			if !exist {
				logger.LOG.Error("can not find convId by userId")
				continue
			}
			if netMsg.EventId == cmd.NormalMsg {
				protoMsg := new(ProtoMsg)
				protoMsg.ConvId = convId
				protoMsg.CmdId = netMsg.CmdId
				protoMsg.HeadMessage = k.getHeadMsg(netMsg.ClientSeq)
				protoMsg.PayloadMessage = netMsg.PayloadMessage
				sendToClientFn(protoMsg)
			} else {
				logger.LOG.Error("recv unknown event from game server, event id: %v", netMsg.EventId)
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
		logger.LOG.Error("verify token error: %v", err)
		return nil
	}
	if !tokenVerifyRsp.Valid {
		logger.LOG.Error("token error")
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
		logger.LOG.Debug("do hk4e 2.8 rsa logic")
		keyId := strconv.Itoa(int(req.GetKeyId()))
		encPubPrivKey, exist := k.encRsaKeyMap[keyId]
		if !exist {
			logger.LOG.Error("can not found key id: %v", keyId)
			return
		}
		pubKey, err := endec.RsaParsePubKeyByPrivKey(encPubPrivKey)
		if err != nil {
			logger.LOG.Error("parse rsa pub key error: %v", err)
			return nil
		}
		signPrivkey, err := endec.RsaParsePrivKey(k.signRsaKey)
		if err != nil {
			logger.LOG.Error("parse rsa priv key error: %v", err)
			return nil
		}
		clientSeedBase64 := req.GetClientRandKey()
		clientSeedEnc, err := base64.StdEncoding.DecodeString(clientSeedBase64)
		if err != nil {
			logger.LOG.Error("parse client seed base64 error: %v", err)
			return nil
		}
		clientSeed, err := endec.RsaDecrypt(clientSeedEnc, signPrivkey)
		if err != nil {
			logger.LOG.Error("rsa dec error: %v", err)
			return rsp
		}
		clientSeedUint64 := uint64(0)
		err = binary.Read(bytes.NewReader(clientSeed), binary.BigEndian, &clientSeedUint64)
		if err != nil {
			logger.LOG.Error("parse client seed to uint64 error: %v", err)
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
			logger.LOG.Error("conv seed uint64 to bytes error: %v", err)
			return rsp
		}
		seed := seedBuf.Bytes()
		seedEnc, err := endec.RsaEncrypt(seed, pubKey)
		if err != nil {
			logger.LOG.Error("rsa enc error: %v", err)
			return rsp
		}
		seedSign, err := endec.RsaSign(seed, signPrivkey)
		if err != nil {
			logger.LOG.Error("rsa sign error: %v", err)
			return rsp
		}
		rsp.KeyId = req.KeyId
		rsp.ServerRandKey = base64.StdEncoding.EncodeToString(seedEnc)
		rsp.Sign = base64.StdEncoding.EncodeToString(seedSign)
	}
	return rsp
}

func (k *KcpConnectManager) playerLogin(req *proto.PlayerLoginReq, session *Session) (rsp *proto.PlayerLoginRsp) {
	logger.LOG.Debug("player login, info: %v", req.String())
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
