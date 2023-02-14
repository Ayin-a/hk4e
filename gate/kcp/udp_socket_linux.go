//go:build linux
// +build linux

package kcp

import (
	"net"
	"os"
	"sync/atomic"

	"github.com/pkg/errors"
	"golang.org/x/net/ipv4"
	"golang.org/x/net/ipv6"
)

const (
	batchSize = 16
)

type batchConn interface {
	WriteBatch(ms []ipv4.Message, flags int) (int, error)
	ReadBatch(ms []ipv4.Message, flags int) (int, error)
}

// the read loop for a client session
func (s *UDPSession) readLoop() {
	// default version
	if s.xconn == nil {
		s.defaultReadLoop()
		return
	}

	// x/net version
	var src string
	msgs := make([]ipv4.Message, batchSize)
	for k := range msgs {
		msgs[k].Buffers = [][]byte{make([]byte, mtuLimit)}
	}

	for {
		if count, err := s.xconn.ReadBatch(msgs, 0); err == nil {
			for i := 0; i < count; i++ {
				msg := &msgs[i]

				// make sure the packet is from the same source
				if src == "" { // set source address if nil
					src = msg.Addr.String()
				} else if msg.Addr.String() != src {
					s.remote = msg.Addr
					src = msg.Addr.String()
				}

				udpPayload := msg.Buffers[0][:msg.N]

				if msg.N == 20 {
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

				// source and size has validated
				s.packetInput(udpPayload)
			}
		} else {
			// compatibility issue:
			// for linux kernel<=2.6.32, support for sendmmsg is not available
			// an error of type os.SyscallError will be returned
			if operr, ok := err.(*net.OpError); ok {
				if se, ok := operr.Err.(*os.SyscallError); ok {
					if se.Syscall == "recvmmsg" {
						s.defaultReadLoop()
						return
					}
				}
			}
			s.notifyReadError(errors.WithStack(err))
			return
		}
	}
}

// monitor incoming data for all connections of server
func (l *Listener) monitor() {
	var xconn batchConn
	if _, ok := l.conn.(*net.UDPConn); ok {
		addr, err := net.ResolveUDPAddr("udp", l.conn.LocalAddr().String())
		if err == nil {
			if addr.IP.To4() != nil {
				xconn = ipv4.NewPacketConn(l.conn)
			} else {
				xconn = ipv6.NewPacketConn(l.conn)
			}
		}
	}

	// default version
	if xconn == nil {
		l.defaultMonitor()
		return
	}

	// x/net version
	msgs := make([]ipv4.Message, batchSize)
	for k := range msgs {
		msgs[k].Buffers = [][]byte{make([]byte, mtuLimit)}
	}

	for {
		if count, err := xconn.ReadBatch(msgs, 0); err == nil {
			for i := 0; i < count; i++ {
				msg := &msgs[i]
				udpPayload := msg.Buffers[0][:msg.N]
				var convId uint64 = 0
				if msg.N == 20 {
					connType, enetType, conv, err := ParseEnet(udpPayload)
					if err != nil {
						continue
					}
					convId = conv
					switch connType {
					case ConnEnetSyn:
						// 客户端前置握手获取conv
						l.EnetNotify <- &Enet{
							Addr:     msg.Addr.String(),
							ConvId:   convId,
							ConnType: ConnEnetSyn,
							EnetType: enetType,
						}
					case ConnEnetEst:
						// 连接建立
						l.EnetNotify <- &Enet{
							Addr:     msg.Addr.String(),
							ConvId:   convId,
							ConnType: ConnEnetEst,
							EnetType: enetType,
						}
					case ConnEnetFin:
						// 连接断开
						l.EnetNotify <- &Enet{
							Addr:     msg.Addr.String(),
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
					if conn.remote.String() != msg.Addr.String() {
						conn.remote = msg.Addr
						// 连接地址改变
						l.EnetNotify <- &Enet{
							Addr:     conn.remote.String(),
							ConvId:   convId,
							ConnType: ConnEnetAddrChange,
						}
					}
				}
				l.packetInput(udpPayload, msg.Addr, convId)
			}
		} else {
			// compatibility issue:
			// for linux kernel<=2.6.32, support for sendmmsg is not available
			// an error of type os.SyscallError will be returned
			if operr, ok := err.(*net.OpError); ok {
				if se, ok := operr.Err.(*os.SyscallError); ok {
					if se.Syscall == "recvmmsg" {
						l.defaultMonitor()
						return
					}
				}
			}
			l.notifyReadError(errors.WithStack(err))
			return
		}
	}
}

func (s *UDPSession) tx(txqueue []ipv4.Message) {
	// default version
	if s.xconn == nil || s.xconnWriteError != nil {
		s.defaultTx(txqueue)
		return
	}

	// x/net version
	nbytes := 0
	npkts := 0
	for len(txqueue) > 0 {
		if n, err := s.xconn.WriteBatch(txqueue, 0); err == nil {
			for k := range txqueue[:n] {
				nbytes += len(txqueue[k].Buffers[0])
			}
			npkts += n
			txqueue = txqueue[n:]
		} else {
			// compatibility issue:
			// for linux kernel<=2.6.32, support for sendmmsg is not available
			// an error of type os.SyscallError will be returned
			if operr, ok := err.(*net.OpError); ok {
				if se, ok := operr.Err.(*os.SyscallError); ok {
					if se.Syscall == "sendmmsg" {
						s.xconnWriteError = se
						s.defaultTx(txqueue)
						return
					}
				}
			}
			s.notifyWriteError(errors.WithStack(err))
			break
		}
	}

	atomic.AddUint64(&DefaultSnmp.OutPkts, uint64(npkts))
	atomic.AddUint64(&DefaultSnmp.OutBytes, uint64(nbytes))
}

func (l *Listener) SendEnetNotifyToPeer(enet *Enet) {
	var xconn batchConn
	_, ok := l.conn.(*net.UDPConn)
	if !ok {
		return
	}
	localAddr, err := net.ResolveUDPAddr("udp", l.conn.LocalAddr().String())
	if err != nil {
		return
	}
	if localAddr.IP.To4() != nil {
		xconn = ipv4.NewPacketConn(l.conn)
	} else {
		xconn = ipv6.NewPacketConn(l.conn)
	}

	// default version
	if xconn == nil {
		l.defaultSendEnetNotifyToPeer(enet)
		return
	}

	remoteAddr, err := net.ResolveUDPAddr("udp", enet.Addr)
	if err != nil {
		return
	}

	data := BuildEnet(enet.ConnType, enet.EnetType, enet.ConvId)
	if data == nil {
		return
	}

	_, _ = xconn.WriteBatch([]ipv4.Message{{
		Buffers: [][]byte{data},
		Addr:    remoteAddr,
	}}, 0)
}

func (s *UDPSession) SendEnetNotifyToPeer(enet *Enet) {
	data := BuildEnet(enet.ConnType, enet.EnetType, s.GetConv())
	if data == nil {
		return
	}
	s.tx([]ipv4.Message{{
		Buffers: [][]byte{data},
		Addr:    s.remote,
	}})
}
