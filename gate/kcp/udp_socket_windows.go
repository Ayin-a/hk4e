//go:build !linux
// +build !linux

package kcp

import (
	"golang.org/x/net/ipv4"
)

func (s *UDPSession) readLoop() {
	s.defaultReadLoop()
}

func (l *Listener) monitor() {
	l.defaultMonitor()
}

func (l *Listener) SendEnetNotifyToClient(enet *Enet) {
	l.defaultSendEnetNotifyToClient(enet)
}

func (s *UDPSession) SendEnetNotify(enet *Enet) {
	s.defaultSendEnetNotify(enet)
}

func (s *UDPSession) tx(txqueue []ipv4.Message) {
	s.defaultTx(txqueue)
}
