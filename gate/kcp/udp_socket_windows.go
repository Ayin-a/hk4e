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

func (l *Listener) SendEnetNotifyToPeer(enet *Enet) {
	l.defaultSendEnetNotifyToPeer(enet)
}

func (s *UDPSession) SendEnetNotifyToPeer(enet *Enet) {
	s.defaultSendEnetNotifyToPeer(enet)
}

func (s *UDPSession) tx(txqueue []ipv4.Message) {
	s.defaultTx(txqueue)
}
