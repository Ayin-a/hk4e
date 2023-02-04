package kcp

import (
	"bytes"
	"encoding/binary"
	"net"
	"sync/atomic"

	"github.com/pkg/errors"
	"golang.org/x/net/ipv4"
)

func (s *UDPSession) defaultReadLoop() {
	buf := make([]byte, mtuLimit)
	var src string
	for {
		if n, addr, err := s.conn.ReadFrom(buf); err == nil {
			udpPayload := buf[:n]

			// make sure the packet is from the same source
			if src == "" { // set source address
				src = addr.String()
			} else if addr.String() != src {
				// atomic.AddUint64(&DefaultSnmp.InErrs, 1)
				// continue
				s.remote = addr
				src = addr.String()
			}

			s.packetInput(udpPayload)
		} else {
			s.notifyReadError(errors.WithStack(err))
			return
		}
	}
}

func (l *Listener) defaultMonitor() {
	buf := make([]byte, mtuLimit)
	for {
		if n, from, err := l.conn.ReadFrom(buf); err == nil {
			udpPayload := buf[:n]
			var convId uint64 = 0
			if n == 20 {
				// 原神KCP的Enet协议
				// 提取convId
				convId += uint64(udpPayload[4]) << 24
				convId += uint64(udpPayload[5]) << 16
				convId += uint64(udpPayload[6]) << 8
				convId += uint64(udpPayload[7]) << 0
				convId += uint64(udpPayload[8]) << 56
				convId += uint64(udpPayload[9]) << 48
				convId += uint64(udpPayload[10]) << 40
				convId += uint64(udpPayload[11]) << 32
				// 提取Enet协议头部和尾部幻数
				udpPayloadEnetHead := udpPayload[:4]
				udpPayloadEnetTail := udpPayload[len(udpPayload)-4:]
				// 提取Enet协议类型
				enetTypeData := udpPayload[12:16]
				enetTypeDataBuffer := bytes.NewBuffer(enetTypeData)
				var enetType uint32
				_ = binary.Read(enetTypeDataBuffer, binary.BigEndian, &enetType)
				equalHead := bytes.Compare(udpPayloadEnetHead, MagicEnetSynHead)
				equalTail := bytes.Compare(udpPayloadEnetTail, MagicEnetSynTail)
				if equalHead == 0 && equalTail == 0 {
					// 客户端前置握手获取conv
					l.EnetNotify <- &Enet{
						Addr:     from.String(),
						ConvId:   convId,
						ConnType: ConnEnetSyn,
						EnetType: enetType,
					}
					continue
				}
				equalHead = bytes.Compare(udpPayloadEnetHead, MagicEnetEstHead)
				equalTail = bytes.Compare(udpPayloadEnetTail, MagicEnetEstTail)
				if equalHead == 0 && equalTail == 0 {
					// 连接建立
					l.EnetNotify <- &Enet{
						Addr:     from.String(),
						ConvId:   convId,
						ConnType: ConnEnetEst,
						EnetType: enetType,
					}
					continue
				}
				equalHead = bytes.Compare(udpPayloadEnetHead, MagicEnetFinHead)
				equalTail = bytes.Compare(udpPayloadEnetTail, MagicEnetFinTail)
				if equalHead == 0 && equalTail == 0 {
					// 连接断开
					l.EnetNotify <- &Enet{
						Addr:     from.String(),
						ConvId:   convId,
						ConnType: ConnEnetFin,
						EnetType: enetType,
					}
					continue
				}
			} else {
				// 正常KCP包
				convId += uint64(udpPayload[0]) << 0
				convId += uint64(udpPayload[1]) << 8
				convId += uint64(udpPayload[2]) << 16
				convId += uint64(udpPayload[3]) << 24
				convId += uint64(udpPayload[4]) << 32
				convId += uint64(udpPayload[5]) << 40
				convId += uint64(udpPayload[6]) << 48
				convId += uint64(udpPayload[7]) << 56
			}
			l.sessionLock.RLock()
			conn, exist := l.sessions[convId]
			l.sessionLock.RUnlock()
			if exist {
				if conn.remote.String() != from.String() {
					conn.remote = from
					// 连接地址改变
					l.EnetNotify <- &Enet{
						Addr:     conn.remote.String(),
						ConvId:   convId,
						ConnType: ConnEnetAddrChange,
					}
				}
			}
			l.packetInput(udpPayload, from, convId)
		} else {
			l.notifyReadError(errors.WithStack(err))
			return
		}
	}
}

func buildEnet(connType uint8, enetType uint32, conv uint64) []byte {
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

func (l *Listener) defaultSendEnetNotifyToClient(enet *Enet) {
	remoteAddr, err := net.ResolveUDPAddr("udp", enet.Addr)
	if err != nil {
		return
	}
	data := buildEnet(enet.ConnType, enet.EnetType, enet.ConvId)
	if data == nil {
		return
	}
	_, _ = l.conn.WriteTo(data, remoteAddr)
}

func (s *UDPSession) defaultSendEnetNotify(enet *Enet) {
	data := buildEnet(enet.ConnType, enet.EnetType, s.GetConv())
	if data == nil {
		return
	}
	s.defaultTx([]ipv4.Message{{
		Buffers: [][]byte{data},
		Addr:    s.remote,
	}})
}

func (s *UDPSession) defaultTx(txqueue []ipv4.Message) {
	nbytes := 0
	npkts := 0
	for k := range txqueue {
		if n, err := s.conn.WriteTo(txqueue[k].Buffers[0], txqueue[k].Addr); err == nil {
			nbytes += n
			npkts++
		} else {
			s.notifyWriteError(errors.WithStack(err))
			break
		}
	}
	atomic.AddUint64(&DefaultSnmp.OutPkts, uint64(npkts))
	atomic.AddUint64(&DefaultSnmp.OutBytes, uint64(nbytes))
}
