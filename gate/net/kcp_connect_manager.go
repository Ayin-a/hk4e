package net

import (
	"bytes"
	"encoding/binary"
	"strconv"
	"sync"
	"time"

	"hk4e/common/config"
	"hk4e/gate/kcp"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
)

type KcpConnectManager struct {
	openState      bool
	connMap        map[uint64]*kcp.UDPSession
	connMapLock    sync.RWMutex
	protoMsgInput  chan *ProtoMsg
	protoMsgOutput chan *ProtoMsg
	kcpEventInput  chan *KcpEvent
	kcpEventOutput chan *KcpEvent
	// 发送协程分发
	kcpRawSendChanMap     map[uint64]chan *ProtoMsg
	kcpRawSendChanMapLock sync.RWMutex
	// 收包发包监听标志
	kcpRecvListenMap     map[uint64]bool
	kcpRecvListenMapLock sync.RWMutex
	kcpSendListenMap     map[uint64]bool
	kcpSendListenMapLock sync.RWMutex
	// key
	dispatchKey     []byte
	dispatchKeyLock sync.RWMutex
	kcpKeyMap       map[uint64][]byte
	kcpKeyMapLock   sync.RWMutex
	// conv短时间内唯一生成
	convGenMap     map[uint64]int64
	convGenMapLock sync.RWMutex
}

func NewKcpConnectManager(protoMsgInput chan *ProtoMsg, protoMsgOutput chan *ProtoMsg,
	kcpEventInput chan *KcpEvent, kcpEventOutput chan *KcpEvent) (r *KcpConnectManager) {
	r = new(KcpConnectManager)
	r.openState = true
	r.connMap = make(map[uint64]*kcp.UDPSession)
	r.protoMsgInput = protoMsgInput
	r.protoMsgOutput = protoMsgOutput
	r.kcpEventInput = kcpEventInput
	r.kcpEventOutput = kcpEventOutput
	r.kcpRawSendChanMap = make(map[uint64]chan *ProtoMsg)
	r.kcpRecvListenMap = make(map[uint64]bool)
	r.kcpSendListenMap = make(map[uint64]bool)
	r.kcpKeyMap = make(map[uint64][]byte)
	r.convGenMap = make(map[uint64]int64)
	return r
}

func (k *KcpConnectManager) Start() {
	go func() {
		// key
		k.dispatchKey = make([]byte, 4096)
		// kcp
		port := strconv.FormatInt(int64(config.CONF.Hk4e.KcpPort), 10)
		listener, err := kcp.ListenWithOptions("0.0.0.0:"+port, nil, 0, 0)
		if err != nil {
			logger.LOG.Error("listen kcp err: %v", err)
			return
		} else {
			go k.enetHandle(listener)
			go k.chanSendHandle()
			go k.eventHandle()
			for {
				conn, err := listener.AcceptKCP()
				if err != nil {
					logger.LOG.Error("accept kcp err: %v", err)
					return
				}
				if k.openState == false {
					_ = conn.Close()
					continue
				}
				conn.SetACKNoDelay(true)
				conn.SetWriteDelay(false)
				convId := conn.GetConv()
				logger.LOG.Debug("client connect, convId: %v", convId)
				// 连接建立成功通知
				k.kcpEventOutput <- &KcpEvent{
					ConvId:       convId,
					EventId:      KcpConnEstNotify,
					EventMessage: conn.RemoteAddr().String(),
				}
				k.connMapLock.Lock()
				k.connMap[convId] = conn
				k.connMapLock.Unlock()
				k.kcpKeyMapLock.Lock()
				k.dispatchKeyLock.RLock()
				k.kcpKeyMap[convId] = k.dispatchKey
				k.dispatchKeyLock.RUnlock()
				k.kcpKeyMapLock.Unlock()
				go k.recvHandle(convId)
				kcpRawSendChan := make(chan *ProtoMsg, 10000)
				k.kcpRawSendChanMapLock.Lock()
				k.kcpRawSendChanMap[convId] = kcpRawSendChan
				k.kcpRawSendChanMapLock.Unlock()
				go k.sendHandle(convId, kcpRawSendChan)
				go k.rttMonitor(convId)
			}
		}
	}()
	go k.clearDeadConv()
}

func (k *KcpConnectManager) clearDeadConv() {
	ticker := time.NewTicker(time.Minute)
	for {
		k.convGenMapLock.Lock()
		now := time.Now().UnixNano()
		oldConvList := make([]uint64, 0)
		for conv, timestamp := range k.convGenMap {
			if now-timestamp > int64(time.Hour) {
				oldConvList = append(oldConvList, conv)
			}
		}
		delConvList := make([]uint64, 0)
		k.connMapLock.RLock()
		for _, conv := range oldConvList {
			_, exist := k.connMap[conv]
			if !exist {
				delConvList = append(delConvList, conv)
				delete(k.convGenMap, conv)
			}
		}
		k.connMapLock.RUnlock()
		k.convGenMapLock.Unlock()
		logger.LOG.Info("clean dead conv list: %v", delConvList)
		<-ticker.C
	}
}

func (k *KcpConnectManager) enetHandle(listener *kcp.Listener) {
	for {
		enetNotify := <-listener.EnetNotify
		logger.LOG.Info("[Enet Notify], addr: %v, conv: %v, conn: %v, enet: %v", enetNotify.Addr, enetNotify.ConvId, enetNotify.ConnType, enetNotify.EnetType)
		switch enetNotify.ConnType {
		case kcp.ConnEnetSyn:
			if enetNotify.EnetType == kcp.EnetClientConnectKey {
				var conv uint64
				k.convGenMapLock.Lock()
				for {
					convData := random.GetRandomByte(8)
					convDataBuffer := bytes.NewBuffer(convData)
					_ = binary.Read(convDataBuffer, binary.LittleEndian, &conv)
					_, exist := k.convGenMap[conv]
					if exist {
						continue
					} else {
						k.convGenMap[conv] = time.Now().UnixNano()
						break
					}
				}
				k.convGenMapLock.Unlock()
				listener.SendEnetNotifyToClient(&kcp.Enet{
					Addr:     enetNotify.Addr,
					ConvId:   conv,
					ConnType: kcp.ConnEnetEst,
					EnetType: enetNotify.EnetType,
				})
			}
		case kcp.ConnEnetEst:
		case kcp.ConnEnetFin:
			k.closeKcpConn(enetNotify.ConvId, enetNotify.EnetType)
		case kcp.ConnEnetAddrChange:
			// 连接地址改变通知
			k.kcpEventOutput <- &KcpEvent{
				ConvId:       enetNotify.ConvId,
				EventId:      KcpConnAddrChangeNotify,
				EventMessage: enetNotify.Addr,
			}
		default:
		}
	}
}

func (k *KcpConnectManager) chanSendHandle() {
	// 分发到每个连接具体的发送协程
	for {
		protoMsg := <-k.protoMsgInput
		k.kcpRawSendChanMapLock.RLock()
		kcpRawSendChan := k.kcpRawSendChanMap[protoMsg.ConvId]
		k.kcpRawSendChanMapLock.RUnlock()
		if kcpRawSendChan != nil {
			select {
			case kcpRawSendChan <- protoMsg:
			default:
				logger.LOG.Error("kcpRawSendChan is full, convId: %v", protoMsg.ConvId)
			}
		} else {
			logger.LOG.Error("kcpRawSendChan is nil, convId: %v", protoMsg.ConvId)
		}
	}
}

func (k *KcpConnectManager) recvHandle(convId uint64) {
	// 接收
	k.connMapLock.RLock()
	conn := k.connMap[convId]
	k.connMapLock.RUnlock()
	pktFreqLimitCounter := 0
	pktFreqLimitTimer := time.Now().UnixNano()
	protoEnDecode := NewProtoEnDecode()
	recvBuf := make([]byte, conn.GetMaxPayloadLen())
	for {
		_ = conn.SetReadDeadline(time.Now().Add(time.Second * 30))
		recvLen, err := conn.Read(recvBuf)
		if err != nil {
			logger.LOG.Error("exit recv loop, conn read err: %v, convId: %v", err, convId)
			k.closeKcpConn(convId, kcp.EnetServerKick)
			break
		}
		pktFreqLimitCounter++
		now := time.Now().UnixNano()
		if now-pktFreqLimitTimer > int64(time.Second) {
			if pktFreqLimitCounter > 1000 {
				logger.LOG.Error("exit recv loop, client packet send freq too high, convId: %v, pps: %v", convId, pktFreqLimitCounter)
				k.closeKcpConn(convId, kcp.EnetPacketFreqTooHigh)
				break
			} else {
				pktFreqLimitCounter = 0
			}
			pktFreqLimitTimer = now
		}
		recvData := recvBuf[:recvLen]
		k.kcpRecvListenMapLock.RLock()
		flag := k.kcpRecvListenMap[convId]
		k.kcpRecvListenMapLock.RUnlock()
		if flag {
			// 收包通知
			//recvMsg := make([]byte, len(recvData))
			//copy(recvMsg, recvData)
			k.kcpEventOutput <- &KcpEvent{
				ConvId:       convId,
				EventId:      KcpPacketRecvNotify,
				EventMessage: recvData,
			}
		}
		kcpMsgList := make([]*KcpMsg, 0)
		k.decodeBinToPayload(recvData, convId, &kcpMsgList)
		for _, v := range kcpMsgList {
			protoMsgList := protoEnDecode.protoDecode(v)
			for _, vv := range protoMsgList {
				k.protoMsgOutput <- vv
			}
		}
	}
}

func (k *KcpConnectManager) sendHandle(convId uint64, kcpRawSendChan chan *ProtoMsg) {
	// 发送
	k.connMapLock.RLock()
	conn := k.connMap[convId]
	k.connMapLock.RUnlock()
	protoEnDecode := NewProtoEnDecode()
	for {
		protoMsg, ok := <-kcpRawSendChan
		if !ok {
			logger.LOG.Error("exit send loop, send chan close, convId: %v", convId)
			k.closeKcpConn(convId, kcp.EnetServerKick)
			break
		}
		kcpMsg := protoEnDecode.protoEncode(protoMsg)
		if kcpMsg == nil {
			logger.LOG.Error("decode kcp msg is nil, convId: %v", convId)
			continue
		}
		bin := k.encodePayloadToBin(kcpMsg)
		_ = conn.SetWriteDeadline(time.Now().Add(time.Second * 10))
		_, err := conn.Write(bin)
		if err != nil {
			logger.LOG.Error("exit send loop, conn write err: %v, convId: %v", err, convId)
			k.closeKcpConn(convId, kcp.EnetServerKick)
			break
		}
		k.kcpSendListenMapLock.RLock()
		flag := k.kcpSendListenMap[convId]
		k.kcpSendListenMapLock.RUnlock()
		if flag {
			// 发包通知
			k.kcpEventOutput <- &KcpEvent{
				ConvId:       convId,
				EventId:      KcpPacketSendNotify,
				EventMessage: bin,
			}
		}
	}
}

func (k *KcpConnectManager) rttMonitor(convId uint64) {
	ticker := time.NewTicker(time.Second * 10)
	for {
		select {
		case <-ticker.C:
			k.connMapLock.RLock()
			conn := k.connMap[convId]
			k.connMapLock.RUnlock()
			if conn == nil {
				break
			}
			logger.LOG.Debug("convId: %v, RTO: %v, SRTT: %v, RTTVar: %v", convId, conn.GetRTO(), conn.GetSRTT(), conn.GetSRTTVar())
			k.kcpEventOutput <- &KcpEvent{
				ConvId:       convId,
				EventId:      KcpConnRttNotify,
				EventMessage: conn.GetSRTT(),
			}
		}
	}
}

func (k *KcpConnectManager) closeKcpConn(convId uint64, enetType uint32) {
	k.connMapLock.RLock()
	conn, exist := k.connMap[convId]
	k.connMapLock.RUnlock()
	if !exist {
		return
	}
	// 获取待关闭的发送管道
	k.kcpRawSendChanMapLock.RLock()
	kcpRawSendChan := k.kcpRawSendChanMap[convId]
	k.kcpRawSendChanMapLock.RUnlock()
	// 清理数据
	k.connMapLock.Lock()
	delete(k.connMap, convId)
	k.connMapLock.Unlock()
	k.kcpRawSendChanMapLock.Lock()
	delete(k.kcpRawSendChanMap, convId)
	k.kcpRawSendChanMapLock.Unlock()
	k.kcpRecvListenMapLock.Lock()
	delete(k.kcpRecvListenMap, convId)
	k.kcpRecvListenMapLock.Unlock()
	k.kcpSendListenMapLock.Lock()
	delete(k.kcpSendListenMap, convId)
	k.kcpSendListenMapLock.Unlock()
	k.kcpKeyMapLock.Lock()
	delete(k.kcpKeyMap, convId)
	k.kcpKeyMapLock.Unlock()
	// 关闭连接
	conn.SendEnetNotify(&kcp.Enet{
		ConnType: kcp.ConnEnetFin,
		EnetType: enetType,
	})
	_ = conn.Close()
	// 关闭发送管道
	close(kcpRawSendChan)
	// 连接关闭通知
	k.kcpEventOutput <- &KcpEvent{
		ConvId:  convId,
		EventId: KcpConnCloseNotify,
	}
}

func (k *KcpConnectManager) closeAllKcpConn() {
	closeConnList := make([]*kcp.UDPSession, 0)
	k.connMapLock.RLock()
	for _, v := range k.connMap {
		closeConnList = append(closeConnList, v)
	}
	k.connMapLock.RUnlock()
	for _, v := range closeConnList {
		k.closeKcpConn(v.GetConv(), kcp.EnetServerShutdown)
	}
}
