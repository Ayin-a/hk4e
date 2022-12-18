package net

import (
	"bytes"
	"encoding/binary"
	"hk4e/common/region"
	"hk4e/dispatch/controller"
	"hk4e/pkg/httpclient"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"strconv"
	"sync"
	"time"

	"hk4e/common/config"
	"hk4e/gate/kcp"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
)

type KcpConnectManager struct {
	openState          bool
	sessionConvIdMap   map[uint64]*Session
	sessionUserIdMap   map[uint32]*Session
	sessionMapLock     sync.RWMutex
	kcpEventInput      chan *KcpEvent
	kcpEventOutput     chan *KcpEvent
	cmdProtoMap        *cmd.CmdProtoMap
	netMsgInput        chan *cmd.NetMsg
	netMsgOutput       chan *cmd.NetMsg
	localMsgOutput     chan *ProtoMsg
	createSessionChan  chan *Session
	destroySessionChan chan *Session
	// 密钥相关
	dispatchKey  []byte
	regionCurr   *proto.QueryCurrRegionHttpRsp
	signRsaKey   []byte
	encRsaKeyMap map[string][]byte
}

func NewKcpConnectManager(netMsgInput chan *cmd.NetMsg, netMsgOutput chan *cmd.NetMsg) (r *KcpConnectManager) {
	r = new(KcpConnectManager)
	r.openState = true
	r.sessionConvIdMap = make(map[uint64]*Session)
	r.sessionUserIdMap = make(map[uint32]*Session)
	r.kcpEventInput = make(chan *KcpEvent, 1000)
	r.kcpEventOutput = make(chan *KcpEvent, 1000)
	r.cmdProtoMap = cmd.NewCmdProtoMap()
	r.netMsgInput = netMsgInput
	r.netMsgOutput = netMsgOutput
	r.localMsgOutput = make(chan *ProtoMsg, 1000)
	r.createSessionChan = make(chan *Session, 1000)
	r.destroySessionChan = make(chan *Session, 1000)
	return r
}

func (k *KcpConnectManager) Start() {
	// 读取密钥相关文件
	k.signRsaKey, k.encRsaKeyMap, _ = region.LoadRsaKey()
	// region
	regionCurr, _, _ := region.InitRegion(config.CONF.Hk4e.KcpAddr, config.CONF.Hk4e.KcpPort)
	k.regionCurr = regionCurr
	// key
	dispatchEc2bSeedRsp, err := httpclient.Get[controller.DispatchEc2bSeedRsp]("http://127.0.0.1:8080/dispatch/ec2b/seed", "")
	if err != nil {
		logger.LOG.Error("get dispatch ec2b seed error: %v", err)
		return
	}
	dispatchEc2bSeed, err := strconv.ParseUint(dispatchEc2bSeedRsp.Seed, 10, 64)
	if err != nil {
		logger.LOG.Error("parse dispatch ec2b seed error: %v", err)
		return
	}
	logger.LOG.Debug("get dispatch ec2b seed: %v", dispatchEc2bSeed)
	gateDispatchEc2b := random.NewEc2b()
	gateDispatchEc2b.SetSeed(dispatchEc2bSeed)
	k.dispatchKey = gateDispatchEc2b.XorKey()
	// kcp
	port := strconv.Itoa(int(config.CONF.Hk4e.KcpPort))
	listener, err := kcp.ListenWithOptions(config.CONF.Hk4e.KcpAddr+":"+port, nil, 0, 0)
	if err != nil {
		logger.LOG.Error("listen kcp err: %v", err)
		return
	}
	go k.enetHandle(listener)
	go k.eventHandle()
	go k.sendMsgHandle()
	go k.acceptHandle(listener)
}

func (k *KcpConnectManager) acceptHandle(listener *kcp.Listener) {
	logger.LOG.Debug("accept handle start")
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
		kcpRawSendChan := make(chan *ProtoMsg, 1000)
		session := &Session{
			conn:      conn,
			connState: ConnWaitToken,
			userId:    0,
			headMeta: &ClientHeadMeta{
				seq: 0,
			},
			kcpRawSendChan: kcpRawSendChan,
			seed:           0,
			xorKey:         k.dispatchKey,
			changeXorKey:   false,
		}
		go k.recvHandle(session)
		go k.sendHandle(session)
		// 连接建立成功通知
		k.kcpEventOutput <- &KcpEvent{
			ConvId:       convId,
			EventId:      KcpConnEstNotify,
			EventMessage: conn.RemoteAddr().String(),
		}
	}
}

func (k *KcpConnectManager) enetHandle(listener *kcp.Listener) {
	logger.LOG.Debug("enet handle start")
	// conv短时间内唯一生成
	convGenMap := make(map[uint64]int64)
	for {
		enetNotify := <-listener.EnetNotify
		logger.LOG.Info("[Enet Notify], addr: %v, conv: %v, conn: %v, enet: %v", enetNotify.Addr, enetNotify.ConvId, enetNotify.ConnType, enetNotify.EnetType)
		switch enetNotify.ConnType {
		case kcp.ConnEnetSyn:
			if enetNotify.EnetType == kcp.EnetClientConnectKey {
				// 清理老旧的conv
				now := time.Now().UnixNano()
				oldConvList := make([]uint64, 0)
				for conv, timestamp := range convGenMap {
					if now-timestamp > int64(time.Hour) {
						oldConvList = append(oldConvList, conv)
					}
				}
				delConvList := make([]uint64, 0)
				k.sessionMapLock.RLock()
				for _, conv := range oldConvList {
					_, exist := k.sessionConvIdMap[conv]
					if !exist {
						delConvList = append(delConvList, conv)
						delete(convGenMap, conv)
					}
				}
				k.sessionMapLock.RUnlock()
				logger.LOG.Info("clean dead conv list: %v", delConvList)
				// 生成没用过的conv
				var conv uint64
				for {
					convData := random.GetRandomByte(8)
					convDataBuffer := bytes.NewBuffer(convData)
					_ = binary.Read(convDataBuffer, binary.LittleEndian, &conv)
					_, exist := convGenMap[conv]
					if exist {
						continue
					} else {
						convGenMap[conv] = time.Now().UnixNano()
						break
					}
				}
				listener.SendEnetNotifyToClient(&kcp.Enet{
					Addr:     enetNotify.Addr,
					ConvId:   conv,
					ConnType: kcp.ConnEnetEst,
					EnetType: enetNotify.EnetType,
				})
			}
		case kcp.ConnEnetEst:
		case kcp.ConnEnetFin:
			session := k.GetSessionByConvId(enetNotify.ConvId)
			if session == nil {
				logger.LOG.Error("session not exist, convId: %v", enetNotify.ConvId)
				continue
			}
			session.conn.SendEnetNotify(&kcp.Enet{
				ConnType: kcp.ConnEnetFin,
				EnetType: enetNotify.EnetType,
			})
			_ = session.conn.Close()
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

type ClientHeadMeta struct {
	seq uint32
}

type Session struct {
	conn           *kcp.UDPSession
	connState      uint8
	userId         uint32
	headMeta       *ClientHeadMeta
	kcpRawSendChan chan *ProtoMsg
	seed           uint64
	xorKey         []byte
	changeXorKey   bool
}

func (k *KcpConnectManager) recvHandle(session *Session) {
	logger.LOG.Debug("recv handle start")
	// 接收
	conn := session.conn
	convId := conn.GetConv()
	pktFreqLimitCounter := 0
	pktFreqLimitTimer := time.Now().UnixNano()
	recvBuf := make([]byte, conn.GetMaxPayloadLen())
	for {
		_ = conn.SetReadDeadline(time.Now().Add(time.Second * 15))
		recvLen, err := conn.Read(recvBuf)
		if err != nil {
			logger.LOG.Error("exit recv loop, conn read err: %v, convId: %v", err, convId)
			k.closeKcpConn(session, kcp.EnetServerKick)
			break
		}
		if session.changeXorKey {
			session.changeXorKey = false
			keyBlock := random.NewKeyBlock(session.seed)
			xorKey := keyBlock.XorKey()
			key := make([]byte, 4096)
			copy(key, xorKey[:])
			session.xorKey = key
		}
		// 收包频率限制
		pktFreqLimitCounter++
		now := time.Now().UnixNano()
		if now-pktFreqLimitTimer > int64(time.Second) {
			if pktFreqLimitCounter > 100 {
				logger.LOG.Error("exit recv loop, client packet send freq too high, convId: %v, pps: %v", convId, pktFreqLimitCounter)
				k.closeKcpConn(session, kcp.EnetPacketFreqTooHigh)
				break
			} else {
				pktFreqLimitCounter = 0
			}
			pktFreqLimitTimer = now
		}
		recvData := recvBuf[:recvLen]
		kcpMsgList := make([]*KcpMsg, 0)
		k.decodeBinToPayload(recvData, convId, &kcpMsgList, session.xorKey)
		for _, v := range kcpMsgList {
			protoMsgList := k.protoDecode(v)
			for _, vv := range protoMsgList {
				k.recvMsgHandle(vv, session)
			}
		}
	}
}

func (k *KcpConnectManager) sendHandle(session *Session) {
	logger.LOG.Debug("send handle start")
	// 发送
	conn := session.conn
	convId := conn.GetConv()
	pktFreqLimitCounter := 0
	pktFreqLimitTimer := time.Now().UnixNano()
	for {
		protoMsg, ok := <-session.kcpRawSendChan
		if !ok {
			logger.LOG.Error("exit send loop, send chan close, convId: %v", convId)
			k.closeKcpConn(session, kcp.EnetServerKick)
			break
		}
		kcpMsg := k.protoEncode(protoMsg)
		if kcpMsg == nil {
			logger.LOG.Error("decode kcp msg is nil, convId: %v", convId)
			continue
		}
		bin := k.encodePayloadToBin(kcpMsg, session.xorKey)
		_ = conn.SetWriteDeadline(time.Now().Add(time.Second * 5))
		_, err := conn.Write(bin)
		if err != nil {
			logger.LOG.Error("exit send loop, conn write err: %v, convId: %v", err, convId)
			k.closeKcpConn(session, kcp.EnetServerKick)
			break
		}
		// 发包频率限制
		pktFreqLimitCounter++
		now := time.Now().UnixNano()
		if now-pktFreqLimitTimer > int64(time.Second) {
			if pktFreqLimitCounter > 100 {
				logger.LOG.Error("exit send loop, server packet send freq too high, convId: %v, pps: %v", convId, pktFreqLimitCounter)
				k.closeKcpConn(session, kcp.EnetPacketFreqTooHigh)
				break
			} else {
				pktFreqLimitCounter = 0
			}
			pktFreqLimitTimer = now
		}
	}
}

func (k *KcpConnectManager) closeKcpConn(session *Session, enetType uint32) {
	if session.connState == ConnClose {
		return
	}
	session.connState = ConnClose
	conn := session.conn
	convId := conn.GetConv()
	// 清理数据
	k.DeleteSession(session.conn.GetConv(), session.userId)
	// 关闭连接
	err := conn.Close()
	if err == nil {
		conn.SendEnetNotify(&kcp.Enet{
			ConnType: kcp.ConnEnetFin,
			EnetType: enetType,
		})
	}
	// 连接关闭通知
	k.kcpEventOutput <- &KcpEvent{
		ConvId:  convId,
		EventId: KcpConnCloseNotify,
	}
	// 通知GS玩家下线
	netMsg := new(cmd.NetMsg)
	netMsg.UserId = session.userId
	netMsg.EventId = cmd.UserOfflineNotify
	k.netMsgInput <- netMsg
	logger.LOG.Info("send to gs user offline, ConvId: %v, UserId: %v", convId, netMsg.UserId)
	k.destroySessionChan <- session
}

func (k *KcpConnectManager) closeAllKcpConn() {
	closeConnList := make([]*kcp.UDPSession, 0)
	k.sessionMapLock.RLock()
	for _, v := range k.sessionConvIdMap {
		closeConnList = append(closeConnList, v.conn)
	}
	k.sessionMapLock.RUnlock()
	for _, v := range closeConnList {
		// 关闭连接
		v.SendEnetNotify(&kcp.Enet{
			ConnType: kcp.ConnEnetFin,
			EnetType: kcp.EnetServerShutdown,
		})
		_ = v.Close()
	}
}

func (k *KcpConnectManager) GetSessionByConvId(convId uint64) *Session {
	k.sessionMapLock.RLock()
	session, _ := k.sessionConvIdMap[convId]
	k.sessionMapLock.RUnlock()
	return session
}

func (k *KcpConnectManager) GetSessionByUserId(userId uint32) *Session {
	k.sessionMapLock.RLock()
	session, _ := k.sessionUserIdMap[userId]
	k.sessionMapLock.RUnlock()
	return session
}

func (k *KcpConnectManager) SetSession(session *Session, convId uint64, userId uint32) {
	k.sessionMapLock.Lock()
	k.sessionConvIdMap[convId] = session
	k.sessionUserIdMap[userId] = session
	k.sessionMapLock.Unlock()
}

func (k *KcpConnectManager) DeleteSession(convId uint64, userId uint32) {
	k.sessionMapLock.RLock()
	delete(k.sessionConvIdMap, convId)
	delete(k.sessionUserIdMap, userId)
	k.sessionMapLock.RUnlock()
}
