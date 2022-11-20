package net

import (
	"bytes"
	"encoding/binary"
	"flswld.com/common/utils/endec"
	"flswld.com/logger"
)

/*
										原神KCP协议(带*为xor加密数据)
0			1			2					4											8(字节)
+---------------------------------------------------------------------------------------+
|											conv										|
+---------------------------------------------------------------------------------------+
|	cmd		|	frg		|		wnd			|					ts						|
+---------------------------------------------------------------------------------------+
|						sn					|					una						|
+---------------------------------------------------------------------------------------+
|						len					|		0X4567*		|		apiId*			|
+---------------------------------------------------------------------------------------+
|		headLen*		|				payloadLen*				|		head*			|
+---------------------------------------------------------------------------------------+
|								payload*						|		0X89AB*			|
+---------------------------------------------------------------------------------------+
*/

type KcpMsg struct {
	ConvId    uint64
	ApiId     uint16
	HeadData  []byte
	ProtoData []byte
}

func (k *KcpConnectManager) decodeBinToPayload(data []byte, convId uint64, kcpMsgList *[]*KcpMsg) {
	// xor解密
	k.kcpKeyMapLock.RLock()
	xorKey, exist := k.kcpKeyMap[convId]
	k.kcpKeyMapLock.RUnlock()
	if !exist {
		logger.LOG.Error("kcp xor key not exist, convId: %v", convId)
		return
	}
	endec.Xor(data, xorKey.decKey)
	k.decodeRecur(data, convId, kcpMsgList)
}

func (k *KcpConnectManager) decodeRecur(data []byte, convId uint64, kcpMsgList *[]*KcpMsg) {
	// 长度太短
	if len(data) < 12 {
		logger.LOG.Debug("packet len less 12 byte")
		return
	}
	// 头部标志错误
	if data[0] != 0x45 || data[1] != 0x67 {
		logger.LOG.Error("packet head magic 0x4567 error")
		return
	}
	// 协议号
	apiIdByteSlice := make([]byte, 8)
	apiIdByteSlice[6] = data[2]
	apiIdByteSlice[7] = data[3]
	apiIdBuffer := bytes.NewBuffer(apiIdByteSlice)
	var apiId int64
	err := binary.Read(apiIdBuffer, binary.BigEndian, &apiId)
	if err != nil {
		logger.LOG.Error("packet api id parse fail: %v", err)
		return
	}
	// 头部长度
	headLenByteSlice := make([]byte, 8)
	headLenByteSlice[6] = data[4]
	headLenByteSlice[7] = data[5]
	headLenBuffer := bytes.NewBuffer(headLenByteSlice)
	var headLen int64
	err = binary.Read(headLenBuffer, binary.BigEndian, &headLen)
	if err != nil {
		logger.LOG.Error("packet head len parse fail: %v", err)
		return
	}
	// proto长度
	protoLenByteSlice := make([]byte, 8)
	protoLenByteSlice[4] = data[6]
	protoLenByteSlice[5] = data[7]
	protoLenByteSlice[6] = data[8]
	protoLenByteSlice[7] = data[9]
	protoLenBuffer := bytes.NewBuffer(protoLenByteSlice)
	var protoLen int64
	err = binary.Read(protoLenBuffer, binary.BigEndian, &protoLen)
	if err != nil {
		logger.LOG.Error("packet proto len parse fail: %v", err)
		return
	}
	// 检查最小长度
	if len(data) < int(headLen+protoLen)+12 {
		logger.LOG.Error("packet len error")
		return
	}
	// 尾部标志错误
	if data[headLen+protoLen+10] != 0x89 || data[headLen+protoLen+11] != 0xAB {
		logger.LOG.Error("packet tail magic 0x89AB error")
		return
	}
	// 判断是否有不止一个包
	haveMoreData := false
	if len(data) > int(headLen+protoLen)+12 {
		haveMoreData = true
	}
	// 头部数据
	headData := data[10 : 10+headLen]
	// proto数据
	protoData := data[10+headLen : 10+headLen+protoLen]
	// 返回数据
	kcpMsg := new(KcpMsg)
	kcpMsg.ConvId = convId
	kcpMsg.ApiId = uint16(apiId)
	//kcpMsg.HeadData = make([]byte, len(headData))
	//copy(kcpMsg.HeadData, headData)
	//kcpMsg.ProtoData = make([]byte, len(protoData))
	//copy(kcpMsg.ProtoData, protoData)
	kcpMsg.HeadData = headData
	kcpMsg.ProtoData = protoData
	*kcpMsgList = append(*kcpMsgList, kcpMsg)
	// 递归解析
	if haveMoreData {
		k.decodeRecur(data[int(headLen+protoLen)+12:], convId, kcpMsgList)
	}
}

func (k *KcpConnectManager) encodePayloadToBin(kcpMsg *KcpMsg) (bin []byte) {
	if kcpMsg.HeadData == nil {
		kcpMsg.HeadData = make([]byte, 0)
	}
	if kcpMsg.ProtoData == nil {
		kcpMsg.ProtoData = make([]byte, 0)
	}
	bin = make([]byte, len(kcpMsg.HeadData)+len(kcpMsg.ProtoData)+12)
	// 头部标志
	bin[0] = 0x45
	bin[1] = 0x67
	// 协议号
	apiIdBuffer := bytes.NewBuffer([]byte{})
	err := binary.Write(apiIdBuffer, binary.BigEndian, kcpMsg.ApiId)
	if err != nil {
		logger.LOG.Error("api id encode err: %v", err)
		return nil
	}
	bin[2] = (apiIdBuffer.Bytes())[0]
	bin[3] = (apiIdBuffer.Bytes())[1]
	// 头部长度
	headLenBuffer := bytes.NewBuffer([]byte{})
	err = binary.Write(headLenBuffer, binary.BigEndian, uint16(len(kcpMsg.HeadData)))
	if err != nil {
		logger.LOG.Error("head len encode err: %v", err)
		return nil
	}
	bin[4] = (headLenBuffer.Bytes())[0]
	bin[5] = (headLenBuffer.Bytes())[1]
	// proto长度
	protoLenBuffer := bytes.NewBuffer([]byte{})
	err = binary.Write(protoLenBuffer, binary.BigEndian, uint32(len(kcpMsg.ProtoData)))
	if err != nil {
		logger.LOG.Error("proto len encode err: %v", err)
		return nil
	}
	bin[6] = (protoLenBuffer.Bytes())[0]
	bin[7] = (protoLenBuffer.Bytes())[1]
	bin[8] = (protoLenBuffer.Bytes())[2]
	bin[9] = (protoLenBuffer.Bytes())[3]
	// 头部数据
	copy(bin[10:], kcpMsg.HeadData)
	// proto数据
	copy(bin[10+len(kcpMsg.HeadData):], kcpMsg.ProtoData)
	// 尾部标志
	bin[len(bin)-2] = 0x89
	bin[len(bin)-1] = 0xAB
	// xor加密
	k.kcpKeyMapLock.RLock()
	xorKey, exist := k.kcpKeyMap[kcpMsg.ConvId]
	k.kcpKeyMapLock.RUnlock()
	if !exist {
		logger.LOG.Error("kcp xor key not exist, convId: %v", kcpMsg.ConvId)
		return
	}
	endec.Xor(bin, xorKey.encKey)
	return bin
}
