package login

import (
	"bytes"
	"encoding/base64"
	"encoding/binary"
	"errors"
	"strconv"

	"hk4e/common/region"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"hk4e/robot/net"
)

func GateLogin(dispatchInfo *DispatchInfo, accountInfo *AccountInfo, keyId string) (*net.Session, error) {
	gateAddr := dispatchInfo.GateIp + ":" + strconv.Itoa(int(dispatchInfo.GatePort))
	session, err := net.NewSession(gateAddr, dispatchInfo.DispatchKey, 30000)
	if err != nil {
		return nil, err
	}
	timeRand := random.GetTimeRand()
	clientSeedUint64 := timeRand.Uint64()
	clientSeedBuf := new(bytes.Buffer)
	err = binary.Write(clientSeedBuf, binary.BigEndian, &clientSeedUint64)
	if err != nil {
		return nil, err
	}
	clientSeed := clientSeedBuf.Bytes()
	signRsaKey, encRsaKeyMap, _ := region.LoadRsaKey()
	signPubkey, err := endec.RsaParsePubKeyByPrivKey(signRsaKey)
	if err != nil {
		logger.Error("parse rsa pub key error: %v", err)
		return nil, err
	}
	clientSeedEnc, err := endec.RsaEncrypt(clientSeed, signPubkey)
	if err != nil {
		logger.Error("rsa dec error: %v", err)
		return nil, err
	}
	clientSeedBase64 := base64.StdEncoding.EncodeToString(clientSeedEnc)
	keyIdInt, err := strconv.Atoi(keyId)
	if err != nil {
		logger.Error("parse key id error: %v", err)
		return nil, err
	}
	session.SendMsg(cmd.GetPlayerTokenReq, &proto.GetPlayerTokenReq{
		AccountToken:  accountInfo.ComboToken,
		AccountUid:    strconv.Itoa(int(accountInfo.AccountId)),
		KeyId:         uint32(keyIdInt),
		ClientRandKey: clientSeedBase64,
	})
	protoMsg := <-session.RecvChan
	if protoMsg.CmdId != cmd.GetPlayerTokenRsp {
		return nil, errors.New("recv pkt is not GetPlayerTokenRsp")
	}
	// XOR密钥切换
	getPlayerTokenRsp := protoMsg.PayloadMessage.(*proto.GetPlayerTokenRsp)
	seedEnc, err := base64.StdEncoding.DecodeString(getPlayerTokenRsp.ServerRandKey)
	if err != nil {
		logger.Error("base64 decode error: %v", err)
		return nil, err
	}
	encPubPrivKey, exist := encRsaKeyMap[keyId]
	if !exist {
		logger.Error("can not found key id: %v", keyId)
		return nil, err
	}
	privKey, err := endec.RsaParsePrivKey(encPubPrivKey)
	if err != nil {
		logger.Error("parse rsa pub key error: %v", err)
		return nil, err
	}
	seed, err := endec.RsaDecrypt(seedEnc, privKey)
	if err != nil {
		logger.Error("rsa enc error: %v", err)
		return nil, err
	}
	seedUint64 := uint64(0)
	err = binary.Read(bytes.NewReader(seed), binary.BigEndian, &seedUint64)
	if err != nil {
		logger.Error("parse seed error: %v", err)
		return nil, err
	}
	serverSeedUint64 := seedUint64 ^ clientSeedUint64
	logger.Info("change session xor key")
	keyBlock := random.NewKeyBlock(serverSeedUint64, true)
	xorKey := keyBlock.XorKey()
	key := make([]byte, 4096)
	copy(key, xorKey[:])
	session.XorKey = key
	return session, nil
}
