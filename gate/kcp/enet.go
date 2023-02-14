package kcp

import (
	"bytes"
	"encoding/binary"
	"encoding/hex"
	"errors"
)

// 原神Enet连接控制协议
// MM MM MM MM | LL LL LL LL | HH HH HH HH | EE EE EE EE | MM MM MM MM
// MM为表示连接状态的幻数 在开头的4字节和结尾的4字节
// LL和HH分别为convId的低4字节和高4字节
// EE为Enet事件类型 4字节

// Enet协议上报结构体
type Enet struct {
	Addr     string
	ConvId   uint64
	ConnType uint8
	EnetType uint32
}

// Enet连接状态类型
const (
	ConnEnetSyn        = 1
	ConnEnetEst        = 2
	ConnEnetFin        = 3
	ConnEnetAddrChange = 4
)

// Enet连接状态类型幻数
var MagicEnetSynHead, _ = hex.DecodeString("000000ff")
var MagicEnetSynTail, _ = hex.DecodeString("ffffffff")
var MagicEnetEstHead, _ = hex.DecodeString("00000145")
var MagicEnetEstTail, _ = hex.DecodeString("14514545")
var MagicEnetFinHead, _ = hex.DecodeString("00000194")
var MagicEnetFinTail, _ = hex.DecodeString("19419494")

// Enet事件类型
const (
	EnetTimeout                = 0
	EnetClientClose            = 1
	EnetClientRebindFail       = 2
	EnetClientShutdown         = 3
	EnetServerRelogin          = 4
	EnetServerKick             = 5
	EnetServerShutdown         = 6
	EnetNotFoundSession        = 7
	EnetLoginUnfinished        = 8
	EnetPacketFreqTooHigh      = 9
	EnetPingTimeout            = 10
	EnetTranferFailed          = 11
	EnetServerKillClient       = 12
	EnetCheckMoveSpeed         = 13
	EnetAccountPasswordChange  = 14
	EnetClientEditorConnectKey = 987654321
	EnetClientConnectKey       = 1234567890
)

func BuildEnet(connType uint8, enetType uint32, conv uint64) []byte {
	data := make([]byte, 20)
	if connType == ConnEnetSyn {
		copy(data[0:4], MagicEnetSynHead)
		copy(data[16:20], MagicEnetSynTail)
	} else if connType == ConnEnetEst {
		copy(data[0:4], MagicEnetEstHead)
		copy(data[16:20], MagicEnetEstTail)
	} else if connType == ConnEnetFin {
		copy(data[0:4], MagicEnetFinHead)
		copy(data[16:20], MagicEnetFinTail)
	} else {
		return nil
	}
	// conv的高四个字节和低四个字节分开
	// 例如 00 00 01 45 | LL LL LL LL | HH HH HH HH | 49 96 02 d2 | 14 51 45 45
	data[4] = uint8(conv >> 24)
	data[5] = uint8(conv >> 16)
	data[6] = uint8(conv >> 8)
	data[7] = uint8(conv >> 0)
	data[8] = uint8(conv >> 56)
	data[9] = uint8(conv >> 48)
	data[10] = uint8(conv >> 40)
	data[11] = uint8(conv >> 32)
	// Enet
	data[12] = uint8(enetType >> 24)
	data[13] = uint8(enetType >> 16)
	data[14] = uint8(enetType >> 8)
	data[15] = uint8(enetType >> 0)
	return data
}

func ParseEnet(data []byte) (connType uint8, enetType uint32, conv uint64, err error) {
	// 提取convId
	conv = uint64(0)
	conv += uint64(data[4]) << 24
	conv += uint64(data[5]) << 16
	conv += uint64(data[6]) << 8
	conv += uint64(data[7]) << 0
	conv += uint64(data[8]) << 56
	conv += uint64(data[9]) << 48
	conv += uint64(data[10]) << 40
	conv += uint64(data[11]) << 32
	// 提取Enet协议头部和尾部幻数
	udpPayloadEnetHead := data[:4]
	udpPayloadEnetTail := data[len(data)-4:]
	// 提取Enet协议类型
	enetTypeData := data[12:16]
	enetTypeDataBuffer := bytes.NewBuffer(enetTypeData)
	enetType = uint32(0)
	_ = binary.Read(enetTypeDataBuffer, binary.BigEndian, &enetType)
	equalHead := bytes.Equal(udpPayloadEnetHead, MagicEnetSynHead)
	equalTail := bytes.Equal(udpPayloadEnetTail, MagicEnetSynTail)
	if equalHead && equalTail {
		// 客户端前置握手获取conv
		connType = ConnEnetSyn
		return connType, enetType, conv, nil
	}
	equalHead = bytes.Equal(udpPayloadEnetHead, MagicEnetEstHead)
	equalTail = bytes.Equal(udpPayloadEnetTail, MagicEnetEstTail)
	if equalHead && equalTail {
		// 连接建立
		connType = ConnEnetEst
		return connType, enetType, conv, nil
	}
	equalHead = bytes.Equal(udpPayloadEnetHead, MagicEnetFinHead)
	equalTail = bytes.Equal(udpPayloadEnetTail, MagicEnetFinTail)
	if equalHead && equalTail {
		// 连接断开
		connType = ConnEnetFin
		return connType, enetType, conv, nil
	}
	return 0, 0, 0, errors.New("unknown conn type")
}
