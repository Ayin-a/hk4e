//go:build linux
// +build linux

package kcp

import (
	"golang.org/x/net/ipv6"
	"net"
	"os"
	"sync/atomic"

	"github.com/pkg/errors"
	"golang.org/x/net/ipv4"
)

func (l *Listener) SendEnetNotifyToClient(enet *Enet) {
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
		l.defaultSendEnetNotifyToClient(enet)
		return
	}

	remoteAddr, err := net.ResolveUDPAddr("udp", enet.Addr)
	if err != nil {
		return
	}

	data := buildEnet(enet.ConnType, enet.EnetType, enet.ConvId)
	if data == nil {
		return
	}

	_, _ = xconn.WriteBatch([]ipv4.Message{{
		Buffers: [][]byte{data},
		Addr:    remoteAddr,
	}}, 0)
}

func (s *UDPSession) SendEnetNotify(enet *Enet) {
	data := buildEnet(enet.ConnType, enet.EnetType, s.GetConv())
	if data == nil {
		return
	}
	s.tx([]ipv4.Message{{
		Buffers: [][]byte{data},
		Addr:    s.remote,
	}})
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
