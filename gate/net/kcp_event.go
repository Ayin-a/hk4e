package net

import (
	"reflect"

	"hk4e/gate/kcp"
	"hk4e/pkg/logger"
)

const (
	KcpConnForceClose = iota
	KcpAllConnForceClose
	KcpGateOpenState
	KcpConnCloseNotify
	KcpConnEstNotify
	KcpConnAddrChangeNotify
)

type KcpEvent struct {
	ConvId       uint64
	EventId      int
	EventMessage any
}

func (k *KcpConnectManager) GetKcpEventInputChan() chan *KcpEvent {
	return k.kcpEventInput
}

func (k *KcpConnectManager) GetKcpEventOutputChan() chan *KcpEvent {
	return k.kcpEventOutput
}

func (k *KcpConnectManager) eventHandle() {
	logger.Debug("event handle start")
	// 事件处理
	for {
		event := <-k.kcpEventInput
		logger.Info("kcp manager recv event, ConvId: %v, EventId: %v, EventMessage Type: %v", event.ConvId, event.EventId, reflect.TypeOf(event.EventMessage))
		switch event.EventId {
		case KcpConnForceClose:
			// 强制关闭某个连接
			session := k.GetSessionByConvId(event.ConvId)
			if session == nil {
				logger.Error("session not exist, convId: %v", event.ConvId)
				continue
			}
			reason, ok := event.EventMessage.(uint32)
			if !ok {
				logger.Error("event KcpConnForceClose msg type error")
				continue
			}
			session.conn.SendEnetNotify(&kcp.Enet{
				ConnType: kcp.ConnEnetFin,
				EnetType: reason,
			})
			_ = session.conn.Close()
			logger.Info("conn has been force close, convId: %v", event.ConvId)
		case KcpAllConnForceClose:
			// 强制关闭所有连接
			k.closeAllKcpConn()
			logger.Info("all conn has been force close")
		case KcpGateOpenState:
			// 改变网关开放状态
			openState, ok := event.EventMessage.(bool)
			if !ok {
				logger.Error("event KcpGateOpenState msg type error")
				continue
			}
			k.openState = openState
			if openState == false {
				k.closeAllKcpConn()
			}
		}
	}
}
