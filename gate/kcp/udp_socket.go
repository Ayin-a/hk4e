package kcp

import (
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
				s.remote = addr
				src = addr.String()
			}

			if n == 20 {
				connType, _, conv, err := ParseEnet(udpPayload)
				if err != nil {
					continue
				}
				if conv != s.GetConv() {
					continue
				}
				if connType == ConnEnetFin {
					s.Close()
					continue
				}
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
				connType, enetType, conv, err := ParseEnet(udpPayload)
				if err != nil {
					continue
				}
				convId = conv
				switch connType {
				case ConnEnetSyn:
					// 客户端前置握手获取conv
					l.EnetNotify <- &Enet{
						Addr:     from.String(),
						ConvId:   convId,
						ConnType: ConnEnetSyn,
						EnetType: enetType,
					}
				case ConnEnetEst:
					// 连接建立
					l.EnetNotify <- &Enet{
						Addr:     from.String(),
						ConvId:   convId,
						ConnType: ConnEnetEst,
						EnetType: enetType,
					}
				case ConnEnetFin:
					// 连接断开
					l.EnetNotify <- &Enet{
						Addr:     from.String(),
						ConvId:   convId,
						ConnType: ConnEnetFin,
						EnetType: enetType,
					}
				default:
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

func (l *Listener) defaultSendEnetNotifyToPeer(enet *Enet) {
	remoteAddr, err := net.ResolveUDPAddr("udp", enet.Addr)
	if err != nil {
		return
	}
	data := BuildEnet(enet.ConnType, enet.EnetType, enet.ConvId)
	if data == nil {
		return
	}
	_, _ = l.conn.WriteTo(data, remoteAddr)
}

func (s *UDPSession) defaultSendEnetNotifyToPeer(enet *Enet) {
	data := BuildEnet(enet.ConnType, enet.EnetType, s.GetConv())
	if data == nil {
		return
	}
	s.defaultTx([]ipv4.Message{{
		Buffers: [][]byte{data},
		Addr:    s.remote,
	}})
}
