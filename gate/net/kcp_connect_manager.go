package net

import (
	"bytes"
	"context"
	"encoding/binary"
	"reflect"
	"strconv"
	"sync"
	"time"

	"hk4e/common/config"
	"hk4e/common/mq"
	"hk4e/common/region"
	"hk4e/common/rpc"
	"hk4e/gate/client_proto"
	"hk4e/gate/kcp"
	"hk4e/node/api"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
)

const PacketFreqLimit = 1000

type KcpConnectManager struct {
	discovery                 *rpc.DiscoveryClient
	openState                 bool
	sessionConvIdMap          map[uint64]*Session
	sessionUserIdMap          map[uint32]*Session
	sessionMapLock            sync.RWMutex
	kcpEventInput             chan *KcpEvent
	kcpEventOutput            chan *KcpEvent
	serverCmdProtoMap         *cmd.CmdProtoMap
	clientCmdProtoMap         *client_proto.ClientCmdProtoMap
	clientCmdProtoMapRefValue reflect.Value
	messageQueue              *mq.MessageQueue
	localMsgOutput            chan *ProtoMsg
	createSessionChan         chan *Session
	destroySessionChan        chan *Session
	// 密钥相关
	dispatchKey  []byte
	signRsaKey   []byte
	encRsaKeyMap map[string][]byte
}

func NewKcpConnectManager(messageQueue *mq.MessageQueue, discovery *rpc.DiscoveryClient) (r *KcpConnectManager) {
	r = new(KcpConnectManager)
	r.discovery = discovery
	r.openState = true
	r.sessionConvIdMap = make(map[uint64]*Session)
	r.sessionUserIdMap = make(map[uint32]*Session)
	r.kcpEventInput = make(chan *KcpEvent, 1000)
	r.kcpEventOutput = make(chan *KcpEvent, 1000)
	r.serverCmdProtoMap = cmd.NewCmdProtoMap()
	if config.CONF.Hk4e.ClientProtoProxyEnable {
		r.clientCmdProtoMap = client_proto.NewClientCmdProtoMap()
		r.clientCmdProtoMapRefValue = reflect.ValueOf(r.clientCmdProtoMap)
	}
	r.messageQueue = messageQueue
	r.localMsgOutput = make(chan *ProtoMsg, 1000)
	r.createSessionChan = make(chan *Session, 1000)
	r.destroySessionChan = make(chan *Session, 1000)
	return r
}

func (k *KcpConnectManager) Start() {
	// 读取密钥相关文件
	k.signRsaKey, k.encRsaKeyMap, _ = region.LoadRsaKey()
	// key
	rsp, err := k.discovery.GetRegionEc2B(context.TODO(), &api.NullMsg{})
	if err != nil {
		logger.Error("get region ec2b error: %v", err)
		return
	}
	ec2b, err := random.LoadEc2bKey(rsp.Data)
	if err != nil {
		logger.Error("parse region ec2b error: %v", err)
		return
	}
	regionEc2b := random.NewEc2b()
	regionEc2b.SetSeed(ec2b.Seed())
	k.dispatchKey = regionEc2b.XorKey()
	// kcp
	port := strconv.Itoa(int(config.CONF.Hk4e.KcpPort))
	listener, err := kcp.ListenWithOptions("0.0.0.0:"+port, nil, 0, 0)
	if err != nil {
		logger.Error("listen kcp err: %v", err)
		return
	}
	go k.enetHandle(listener)
	go k.eventHandle()
	go k.sendMsgHandle()
	go k.acceptHandle(listener)
}

func (k *KcpConnectManager) Stop() {
	k.closeAllKcpConn()
	time.Sleep(time.Second * 3)
}

func (k *KcpConnectManager) acceptHandle(listener *kcp.Listener) {
	logger.Debug("accept handle start")
	for {
		conn, err := listener.AcceptKCP()
		if err != nil {
			logger.Error("accept kcp err: %v", err)
			return
		}
		if k.openState == false {
			_ = conn.Close()
			continue
		}
		conn.SetACKNoDelay(true)
		conn.SetWriteDelay(false)
		convId := conn.GetConv()
		logger.Debug("client connect, convId: %v", convId)
		kcpRawSendChan := make(chan *ProtoMsg, 1000)
		session := &Session{
			conn:                   conn,
			connState:              ConnEst,
			userId:                 0,
			kcpRawSendChan:         kcpRawSendChan,
			seed:                   0,
			xorKey:                 k.dispatchKey,
			changeXorKeyFin:        false,
			gsServerAppId:          "",
			fightServerAppId:       "",
			pathfindingServerAppId: "",
			changeGameServer:       false,
			joinHostUserId:         0,
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
	logger.Debug("enet handle start")
	// conv短时间内唯一生成
	convGenMap := make(map[uint64]int64)
	for {
		enetNotify := <-listener.EnetNotify
		logger.Info("[Enet Notify], addr: %v, conv: %v, conn: %v, enet: %v", enetNotify.Addr, enetNotify.ConvId, enetNotify.ConnType, enetNotify.EnetType)
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
				logger.Info("clean dead conv list: %v", delConvList)
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
				logger.Error("session not exist, convId: %v", enetNotify.ConvId)
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

type Session struct {
	conn                   *kcp.UDPSession
	connState              uint8
	userId                 uint32
	kcpRawSendChan         chan *ProtoMsg
	seed                   uint64
	xorKey                 []byte
	changeXorKeyFin        bool
	gsServerAppId          string
	fightServerAppId       string
	pathfindingServerAppId string
	changeGameServer       bool
	joinHostUserId         uint32
}

// 接收
func (k *KcpConnectManager) recvHandle(session *Session) {
	logger.Debug("recv handle start")
	conn := session.conn
	convId := conn.GetConv()
	pktFreqLimitCounter := 0
	pktFreqLimitTimer := time.Now().UnixNano()
	recvBuf := make([]byte, conn.GetMaxPayloadLen())
	for {
		_ = conn.SetReadDeadline(time.Now().Add(time.Second * 15))
		recvLen, err := conn.Read(recvBuf)
		if err != nil {
			logger.Error("exit recv loop, conn read err: %v, convId: %v", err, convId)
			k.closeKcpConn(session, kcp.EnetServerKick)
			break
		}
		// 收包频率限制
		pktFreqLimitCounter++
		now := time.Now().UnixNano()
		if now-pktFreqLimitTimer > int64(time.Second) {
			if pktFreqLimitCounter > PacketFreqLimit {
				logger.Error("exit recv loop, client packet send freq too high, convId: %v, pps: %v", convId, pktFreqLimitCounter)
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

// 发送
func (k *KcpConnectManager) sendHandle(session *Session) {
	logger.Debug("send handle start")
	conn := session.conn
	convId := conn.GetConv()
	for {
		protoMsg, ok := <-session.kcpRawSendChan
		if !ok {
			logger.Error("exit send loop, send chan close, convId: %v", convId)
			k.closeKcpConn(session, kcp.EnetServerKick)
			break
		}
		kcpMsg := k.protoEncode(protoMsg)
		if kcpMsg == nil {
			logger.Error("decode kcp msg is nil, convId: %v", convId)
			continue
		}
		bin := k.encodePayloadToBin(kcpMsg, session.xorKey)
		_ = conn.SetWriteDeadline(time.Now().Add(time.Second * 5))
		_, err := conn.Write(bin)
		if err != nil {
			logger.Error("exit send loop, conn write err: %v, convId: %v", err, convId)
			k.closeKcpConn(session, kcp.EnetServerKick)
			break
		}
		if session.changeXorKeyFin == false && protoMsg.CmdId == cmd.GetPlayerTokenRsp {
			logger.Debug("change session xor key, convId: %v", convId)
			session.changeXorKeyFin = true
			keyBlock := random.NewKeyBlock(session.seed)
			xorKey := keyBlock.XorKey()
			key := make([]byte, 4096)
			copy(key, xorKey[:])
			session.xorKey = key
		}
		if protoMsg.CmdId == cmd.PlayerLoginRsp {
			logger.Debug("session active, convId: %v", convId)
			session.connState = ConnActive
			// 通知GS玩家各个服务器的appid
			serverMsg := new(mq.ServerMsg)
			serverMsg.UserId = session.userId
			if session.changeGameServer {
				serverMsg.JoinHostUserId = session.joinHostUserId
				session.changeGameServer = false
				session.joinHostUserId = 0
			} else {
				serverMsg.FightServerAppId = session.fightServerAppId
			}
			k.messageQueue.SendToGs(session.gsServerAppId, &mq.NetMsg{
				MsgType:   mq.MsgTypeServer,
				EventId:   mq.ServerAppidBindNotify,
				ServerMsg: serverMsg,
			})
		}
	}
}

func (k *KcpConnectManager) forceCloseKcpConn(convId uint64, reason uint32) {
	// 强制关闭某个连接
	session := k.GetSessionByConvId(convId)
	if session == nil {
		logger.Error("session not exist, convId: %v", convId)
		return
	}
	k.closeKcpConn(session, reason)
	logger.Info("conn has been force close, convId: %v", convId)
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
	connCtrlMsg := new(mq.ConnCtrlMsg)
	connCtrlMsg.UserId = session.userId
	k.messageQueue.SendToGs(session.gsServerAppId, &mq.NetMsg{
		MsgType:     mq.MsgTypeConnCtrl,
		EventId:     mq.UserOfflineNotify,
		ConnCtrlMsg: connCtrlMsg,
	})
	logger.Info("send to gs user offline, ConvId: %v, UserId: %v", convId, connCtrlMsg.UserId)
	k.destroySessionChan <- session
}

func (k *KcpConnectManager) closeAllKcpConn() {
	sessionList := make([]*Session, 0)
	k.sessionMapLock.RLock()
	for _, session := range k.sessionConvIdMap {
		sessionList = append(sessionList, session)
	}
	k.sessionMapLock.RUnlock()
	for _, session := range sessionList {
		k.closeKcpConn(session, kcp.EnetServerShutdown)
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
