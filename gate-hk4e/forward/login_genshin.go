package forward

import (
	"bytes"
	"encoding/base64"
	"encoding/binary"
	"flswld.com/common/utils/endec"
	"flswld.com/gate-hk4e-api/proto"
	"flswld.com/logger"
	"gate-hk4e/kcp"
	"gate-hk4e/net"
	"strconv"
	"strings"
	"time"
)

func (f *ForwardManager) getPlayerToken(convId uint64, req *proto.GetPlayerTokenReq) (rsp *proto.GetPlayerTokenRsp) {
	uidStr := req.AccountUid
	uid, err := strconv.ParseInt(uidStr, 10, 64)
	if err != nil {
		logger.LOG.Error("parse uid error: %v", err)
		return nil
	}
	account, err := f.dao.QueryAccountByField("uid", uid)
	if err != nil {
		logger.LOG.Error("query account error: %v", err)
		return nil
	}
	if account == nil {
		logger.LOG.Error("account is nil")
		return nil
	}
	if account.ComboToken != req.AccountToken {
		logger.LOG.Error("token error")
		return nil
	}
	// comboToken验证成功
	if account.Forbid {
		if account.ForbidEndTime > uint64(time.Now().Unix()) {
			// 封号通知
			rsp = new(proto.GetPlayerTokenRsp)
			rsp.Uid = uint32(account.PlayerID)
			rsp.IsProficientPlayer = true
			rsp.Retcode = 21
			rsp.Msg = "FORBID_CHEATING_PLUGINS"
			//rsp.BlackUidEndTime = 2051193600 // 2035-01-01 00:00:00
			rsp.BlackUidEndTime = uint32(account.ForbidEndTime)
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
		} else {
			account.Forbid = false
			_, err := f.dao.UpdateAccountFieldByFieldName("uid", account.Uid, "forbid", false)
			if err != nil {
				logger.LOG.Error("update db error: %v", err)
				return nil
			}
		}
	}
	oldConvId, oldExist := f.getConvIdByUserId(uint32(account.PlayerID))
	if oldExist {
		// 顶号
		f.kcpEventInput <- &net.KcpEvent{
			ConvId:       oldConvId,
			EventId:      net.KcpConnForceClose,
			EventMessage: uint32(kcp.EnetServerRelogin),
		}
	}
	f.setUserIdByConvId(convId, uint32(account.PlayerID))
	f.setConvIdByUserId(uint32(account.PlayerID), convId)
	f.setConnState(convId, ConnWaitLogin)
	// 返回响应
	rsp = new(proto.GetPlayerTokenRsp)
	rsp.Uid = uint32(account.PlayerID)
	rsp.Token = account.ComboToken
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
	account, err := f.dao.QueryAccountByField("playerID", userId)
	if err != nil {
		logger.LOG.Error("query account error: %v", err)
		return nil
	}
	if account == nil {
		logger.LOG.Error("account is nil")
		return nil
	}
	if account.ComboToken != req.Token {
		logger.LOG.Error("token error")
		return nil
	}
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
