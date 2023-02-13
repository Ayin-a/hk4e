package net

import (
	"encoding/binary"

	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
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
|						len					|		0X4567*		|		cmdId*			|
+---------------------------------------------------------------------------------------+
|		headLen*		|				payloadLen*				|		head*			|
+---------------------------------------------------------------------------------------+
|								payload*						|		0X89AB*			|
+---------------------------------------------------------------------------------------+
*/

type KcpMsg struct {
	ConvId    uint64
	CmdId     uint16
	HeadData  []byte
	ProtoData []byte
}

func DecodeBinToPayload(data []byte, dataBuf *[]byte, convId uint64, kcpMsgList *[]*KcpMsg, xorKey []byte) {
	// xor解密
	endec.Xor(data, xorKey)
	DecodeLoop(data, dataBuf, convId, kcpMsgList)
}

func DecodeLoop(data []byte, dataBuf *[]byte, convId uint64, kcpMsgList *[]*KcpMsg) {
	if len(*dataBuf) != 0 {
		// 取出之前的缓冲区数据
		data = append(*dataBuf, data...)
		*dataBuf = make([]byte, 0, 1500)
	}
	// 长度太短
	if len(data) < 12 {
		logger.Debug("packet len less 12 byte")
		return
	}
	// 头部幻数错误
	if data[0] != 0x45 || data[1] != 0x67 {
		logger.Error("packet head magic 0x4567 error")
		return
	}
	// 协议号
	cmdId := binary.BigEndian.Uint16(data[2:4])
	// 头部长度
	headLen := binary.BigEndian.Uint16(data[4:6])
	// proto长度
	protoLen := binary.BigEndian.Uint32(data[6:10])
	// 检查长度
	packetLen := int(headLen) + int(protoLen) + 12
	if packetLen > PacketMaxLen {
		logger.Error("packet len too long")
		return
	}
	haveMorePacket := false
	if len(data) > packetLen {
		// 有不止一个包
		haveMorePacket = true
	} else if len(data) < packetLen {
		// 这一次没收够 放入缓冲区
		*dataBuf = append(*dataBuf, data...)
		return
	}
	// 尾部幻数错误
	if data[int(headLen)+int(protoLen)+10] != 0x89 || data[int(headLen)+int(protoLen)+11] != 0xAB {
		logger.Error("packet tail magic 0x89AB error")
		return
	}
	// 头部数据
	headData := data[10 : 10+int(headLen)]
	// proto数据
	protoData := data[10+int(headLen) : 10+int(headLen)+int(protoLen)]
	// 返回数据
	kcpMsg := new(KcpMsg)
	kcpMsg.ConvId = convId
	kcpMsg.CmdId = cmdId
	kcpMsg.HeadData = headData
	kcpMsg.ProtoData = protoData
	*kcpMsgList = append(*kcpMsgList, kcpMsg)
	// 递归解析
	if haveMorePacket {
		DecodeLoop(data[packetLen:], dataBuf, convId, kcpMsgList)
	}
}

func EncodePayloadToBin(kcpMsg *KcpMsg, xorKey []byte) (bin []byte) {
	if kcpMsg.HeadData == nil {
		kcpMsg.HeadData = make([]byte, 0)
	}
	if kcpMsg.ProtoData == nil {
		kcpMsg.ProtoData = make([]byte, 0)
	}
	bin = make([]byte, len(kcpMsg.HeadData)+len(kcpMsg.ProtoData)+12)
	// 头部幻数
	bin[0] = 0x45
	bin[1] = 0x67
	// 协议号
	binary.BigEndian.PutUint16(bin[2:4], kcpMsg.CmdId)
	// 头部长度
	binary.BigEndian.PutUint16(bin[4:6], uint16(len(kcpMsg.HeadData)))
	// proto长度
	binary.BigEndian.PutUint32(bin[6:10], uint32(len(kcpMsg.ProtoData)))
	// 头部数据
	copy(bin[10:], kcpMsg.HeadData)
	// proto数据
	copy(bin[10+len(kcpMsg.HeadData):], kcpMsg.ProtoData)
	// 尾部幻数
	bin[len(bin)-2] = 0x89
	bin[len(bin)-1] = 0xAB
	// xor加密
	endec.Xor(bin, xorKey)
	return bin
}
