package kcp

import (
	"net"
	"sync/atomic"

	"github.com/pkg/errors"
	"golang.org/x/net/ipv4"
)

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
