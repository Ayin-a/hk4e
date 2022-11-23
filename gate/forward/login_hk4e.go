package forward

import (
	"bytes"
	"encoding/base64"
	"encoding/binary"
	"hk4e/common/utils/endec"
	"hk4e/gate/kcp"
	"hk4e/gate/net"
	"hk4e/logger"
	"hk4e/protocol/proto"
	"strconv"
	"strings"
)

func (f *ForwardManager) getPlayerToken(convId uint64, req *proto.GetPlayerTokenReq) (rsp *proto.GetPlayerTokenRsp) {
	_ = req.AccountUid
	_ = req.AccountToken
	tokenValid := true
	accountForbid := false
	accountForbidEndTime := uint32(0)
	accountPlayerID := uint32(100000001)
	if !tokenValid {
		logger.LOG.Error("token error")
		return nil
	}
	// TODO 请求sdk验证token
	// comboToken验证成功
	if accountForbid {
		// 封号通知
		rsp = new(proto.GetPlayerTokenRsp)
		rsp.Uid = accountPlayerID
		rsp.IsProficientPlayer = true
		rsp.Retcode = 21
		rsp.Msg = "FORBID_CHEATING_PLUGINS"
		//rsp.BlackUidEndTime = 2051193600 // 2035-01-01 00:00:00
		rsp.BlackUidEndTime = accountForbidEndTime
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
	oldConvId, oldExist := f.getConvIdByUserId(accountPlayerID)
	if oldExist {
		// 顶号
		f.kcpEventInput <- &net.KcpEvent{
			ConvId:       oldConvId,
			EventId:      net.KcpConnForceClose,
			EventMessage: uint32(kcp.EnetServerRelogin),
		}
	}
	f.setUserIdByConvId(convId, accountPlayerID)
	f.setConvIdByUserId(accountPlayerID, convId)
	f.setConnState(convId, ConnWaitLogin)
	// 返回响应
	rsp = new(proto.GetPlayerTokenRsp)
	rsp.Uid = accountPlayerID
	// TODO 不同的token
	rsp.Token = req.AccountToken
	rsp.AccountType = 1
	// TODO 要确定一下新注册的号这个值该返回什么
	rsp.IsProficientPlayer = true
	rsp.SecretKeySeed = 11468049314633205968
	rsp.SecurityCmdBuffer = f.secretKeyBuffer
	rsp.PlatformType = 3
	rsp.ChannelId = 1
	rsp.CountryCode = "US"
	rsp.ClientVersionRandomKey = "c25-314dd05b0b5f"
	rsp.RegPlatform = 3
	addr, exist := f.getAddrByConvId(convId)
	if !exist {
		logger.LOG.Error("can not find addr by convId")
		return nil
	}
	split := strings.Split(addr, ":")
	rsp.ClientIpStr = split[0]
	if req.GetKeyId() != 0 {
		// pre check
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
		clientSeedBase64 := req.GetClientSeed()
		clientSeedEnc, err := base64.StdEncoding.DecodeString(clientSeedBase64)
		if err != nil {
			logger.LOG.Error("parse client seed base64 error: %v", err)
			return nil
		}
		// create error rsp info
		clientSeedEncCopy := make([]byte, len(clientSeedEnc))
		copy(clientSeedEncCopy, clientSeedEnc)
		endec.Xor(clientSeedEncCopy, []byte{0x9f, 0x26, 0xb2, 0x17, 0x61, 0x5f, 0xc8, 0x00})
		rsp.EncryptedSeed = base64.StdEncoding.EncodeToString(clientSeedEncCopy)
		rsp.SeedSignature = "bm90aGluZyBoZXJl"
		// do
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
		seedUint64 := uint64(11468049314633205968) ^ clientSeedUint64
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
		rsp.EncryptedSeed = base64.StdEncoding.EncodeToString(seedEnc)
		rsp.SeedSignature = base64.StdEncoding.EncodeToString(seedSign)
	}
	return rsp
}

func (f *ForwardManager) playerLogin(convId uint64, req *proto.PlayerLoginReq) (rsp *proto.PlayerLoginRsp) {
	userId, exist := f.getUserIdByConvId(convId)
	if !exist {
		logger.LOG.Error("can not find userId by convId")
		return nil
	}
	_ = userId
	_ = req.Token
	tokenValid := true
	if !tokenValid {
		logger.LOG.Error("token error")
		return nil
	}
	// TODO 请求sdk验证token
	// comboToken验证成功
	f.setConnState(convId, ConnAlive)
	// 返回响应
	rsp = new(proto.PlayerLoginRsp)
	rsp.IsUseAbilityHash = true
	rsp.AbilityHashCode = 1844674
	rsp.GameBiz = "hk4e_global"
	rsp.ClientDataVersion = f.regionCurr.RegionInfo.ClientDataVersion
	rsp.ClientSilenceDataVersion = f.regionCurr.RegionInfo.ClientSilenceDataVersion
	rsp.ClientMd5 = f.regionCurr.RegionInfo.ClientDataMd5
	rsp.ClientSilenceMd5 = f.regionCurr.RegionInfo.ClientSilenceDataMd5
	rsp.ResVersionConfig = f.regionCurr.RegionInfo.ResVersionConfig
	rsp.ClientVersionSuffix = f.regionCurr.RegionInfo.ClientVersionSuffix
	rsp.ClientSilenceVersionSuffix = f.regionCurr.RegionInfo.ClientSilenceVersionSuffix
	rsp.IsScOpen = false
	rsp.RegisterCps = "mihoyo"
	rsp.CountryCode = "US"
	return rsp
}
