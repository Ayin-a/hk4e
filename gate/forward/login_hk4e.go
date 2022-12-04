package forward

import (
	"bytes"
	"encoding/base64"
	"encoding/binary"
	"fmt"
	"hk4e/dispatch/controller"
	"hk4e/pkg/httpclient"
	"hk4e/pkg/random"
	"math/rand"
	"strconv"
	"strings"

	"hk4e/gate/kcp"
	"hk4e/gate/net"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

func (f *ForwardManager) getPlayerToken(convId uint64, req *proto.GetPlayerTokenReq) (rsp *proto.GetPlayerTokenRsp) {
	// TODO 请求sdk验证token
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
		//rsp.BlackUidEndTime = 2051193600 // 2035-01-01 00:00:00
		rsp.BlackUidEndTime = tokenVerifyRsp.ForbidEndTime
		rsp.RegPlatform = 3
		rsp.CountryCode = "US"
		addr, exist := f.getAddrByConvId(convId)
		if !exist {
			logger.LOG.Error("can not find addr by convId")
			return nil
		}
		split := strings.Split(addr, ":")
		rsp.ClientIpStr = split[0]
		return rsp
	}
	oldConvId, oldExist := f.getConvIdByUserId(tokenVerifyRsp.PlayerID)
	if oldExist {
		// 顶号
		f.kcpEventInput <- &net.KcpEvent{
			ConvId:       oldConvId,
			EventId:      net.KcpConnForceClose,
			EventMessage: uint32(kcp.EnetServerRelogin),
		}
	}
	// 关联玩家uid和连接信息
	f.setUserIdByConvId(convId, tokenVerifyRsp.PlayerID)
	f.setConvIdByUserId(tokenVerifyRsp.PlayerID, convId)
	f.setConnState(convId, ConnWaitLogin)
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
	addr, exist := f.getAddrByConvId(convId)
	if !exist {
		logger.LOG.Error("can not find addr by convId")
		return nil
	}
	split := strings.Split(addr, ":")
	rsp.ClientIpStr = split[0]
	if req.GetKeyId() != 0 {
		logger.LOG.Debug("do hk4e 2.8 rsa logic")
		keyId := strconv.Itoa(int(req.GetKeyId()))
		encPubPrivKey, exist := f.encRsaKeyMap[keyId]
		if !exist {
			logger.LOG.Error("can not found key id: %v", keyId)
			return
		}
		pubKey, err := endec.RsaParsePubKeyByPrivKey(encPubPrivKey)
		if err != nil {
			logger.LOG.Error("parse rsa pub key error: %v", err)
			return nil
		}
		signPrivkey, err := endec.RsaParsePrivKey(f.signRsaKey)
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
		f.setSeedByConvId(convId, serverSeedUint64)
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
		// 开启发包监听
		f.kcpEventInput <- &net.KcpEvent{
			ConvId:       convId,
			EventId:      net.KcpPacketSendListen,
			EventMessage: "Enable",
		}
	}
	return rsp
}

func (f *ForwardManager) playerLogin(convId uint64, req *proto.PlayerLoginReq) (rsp *proto.PlayerLoginRsp) {
	tokenValid := true
	if !tokenValid {
		logger.LOG.Error("token error")
		return nil
	}
	// token验证成功
	f.setConnState(convId, ConnAlive)
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

	rsp.ClientDataVersion = f.regionCurr.RegionInfo.ClientDataVersion
	rsp.ClientSilenceDataVersion = f.regionCurr.RegionInfo.ClientSilenceDataVersion
	rsp.ClientMd5 = f.regionCurr.RegionInfo.ClientDataMd5
	rsp.ClientSilenceMd5 = f.regionCurr.RegionInfo.ClientSilenceDataMd5
	rsp.ResVersionConfig = f.regionCurr.RegionInfo.ResVersionConfig
	rsp.ClientVersionSuffix = f.regionCurr.RegionInfo.ClientVersionSuffix
	rsp.ClientSilenceVersionSuffix = f.regionCurr.RegionInfo.ClientSilenceVersionSuffix

	return rsp
}
