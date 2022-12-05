package net

import (
	"hk4e/pkg/logger"
	"reflect"
)

const (
	KcpXorKeyChange = iota
	KcpDispatchKeyChange
	KcpPacketRecvListen
	KcpPacketSendListen
	KcpConnForceClose
	KcpAllConnForceClose
	KcpGateOpenState
	KcpPacketRecvNotify
	KcpPacketSendNotify
	KcpConnCloseNotify
	KcpConnEstNotify
	KcpConnRttNotify
	KcpConnAddrChangeNotify
)

type KcpEvent struct {
	ConvId       uint64
	EventId      int
	EventMessage any
}

func (k *KcpConnectManager) eventHandle() {
	// 事件处理
	for {
		event := <-k.kcpEventInput
		logger.LOG.Info("kcp manager recv event, ConvId: %v, EventId: %v, EventMessage Type: %v", event.ConvId, event.EventId, reflect.TypeOf(event.EventMessage))
		switch event.EventId {
		case KcpXorKeyChange:
			// XOR密钥切换
			k.connMapLock.RLock()
			_, exist := k.connMap[event.ConvId]
			k.connMapLock.RUnlock()
			if !exist {
				logger.LOG.Error("conn not exist, convId: %v", event.ConvId)
				continue
			}
			key, ok := event.EventMessage.([]byte)
			if !ok {
				logger.LOG.Error("event KcpXorKeyChange msg type error")
				continue
			}
			k.kcpKeyMapLock.Lock()
			k.kcpKeyMap[event.ConvId] = key
			k.kcpKeyMapLock.Unlock()
		case KcpDispatchKeyChange:
			// 首包加密XOR密钥切换
			key, ok := event.EventMessage.([]byte)
			if !ok {
				logger.LOG.Error("event KcpXorKeyChange msg type error")
				continue
			}
			k.dispatchKeyLock.Lock()
			k.dispatchKey = key
			k.dispatchKeyLock.Unlock()
		case KcpPacketRecvListen:
			// 收包监听
			k.connMapLock.RLock()
			_, exist := k.connMap[event.ConvId]
			k.connMapLock.RUnlock()
			if !exist {
				logger.LOG.Error("conn not exist, convId: %v", event.ConvId)
				continue
			}
			flag, ok := event.EventMessage.(string)
			if !ok {
				logger.LOG.Error("event KcpXorKeyChange msg type error")
				continue
			}
			if flag == "Enable" {
				k.kcpRecvListenMapLock.Lock()
				k.kcpRecvListenMap[event.ConvId] = true
				k.kcpRecvListenMapLock.Unlock()
			} else if flag == "Disable" {
				k.kcpRecvListenMapLock.Lock()
				k.kcpRecvListenMap[event.ConvId] = false
				k.kcpRecvListenMapLock.Unlock()
			}
		case KcpPacketSendListen:
			// 发包监听
			k.connMapLock.RLock()
			_, exist := k.connMap[event.ConvId]
			k.connMapLock.RUnlock()
			if !exist {
				logger.LOG.Error("conn not exist, convId: %v", event.ConvId)
				continue
			}
			flag, ok := event.EventMessage.(string)
			if !ok {
				logger.LOG.Error("event KcpXorKeyChange msg type error")
				continue
			}
			if flag == "Enable" {
				k.kcpSendListenMapLock.Lock()
				k.kcpSendListenMap[event.ConvId] = true
				k.kcpSendListenMapLock.Unlock()
			} else if flag == "Disable" {
				k.kcpSendListenMapLock.Lock()
				k.kcpSendListenMap[event.ConvId] = false
				k.kcpSendListenMapLock.Unlock()
			}
		case KcpConnForceClose:
			// 强制关闭某个连接
			k.connMapLock.RLock()
			_, exist := k.connMap[event.ConvId]
			k.connMapLock.RUnlock()
			if !exist {
				logger.LOG.Error("conn not exist, convId: %v", event.ConvId)
				continue
			}
			reason, ok := event.EventMessage.(uint32)
			if !ok {
				logger.LOG.Error("event KcpConnForceClose msg type error")
				continue
			}
			k.closeKcpConn(event.ConvId, reason)
			logger.LOG.Info("conn has been force close, convId: %v", event.ConvId)
		case KcpAllConnForceClose:
			// 强制关闭所有连接
			k.closeAllKcpConn()
			logger.LOG.Info("all conn has been force close")
		case KcpGateOpenState:
			// 改变网关开放状态
			openState, ok := event.EventMessage.(bool)
			if !ok {
				logger.LOG.Error("event KcpGateOpenState msg type error")
				continue
			}
			k.openState = openState
			if openState == false {
				k.closeAllKcpConn()
			}
		}
	}
}
