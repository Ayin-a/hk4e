package mq

import (
	"context"
	"encoding/binary"
	"net"
	"strconv"
	"strings"
	"time"

	"hk4e/common/config"
	"hk4e/common/rpc"
	"hk4e/node/api"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"

	"github.com/nats-io/nats.go"
	"github.com/vmihailenco/msgpack/v5"
	pb "google.golang.org/protobuf/proto"
)

// 用于服务器之间传输游戏协议
// 仅用于传递数据平面(client<--->server)和控制平面(server<--->server)的消息
// 服务器之间消息优先走tcp socket直连 tcp连接断开或不存在时降级回NATS
// 请不要用这个来搞RPC写一大堆异步回调!!!
// 要用RPC有专门的NATSRPC

type MessageQueue struct {
	natsConn               *nats.Conn
	natsMsgChan            chan *nats.Msg
	netMsgInput            chan *NetMsg
	netMsgOutput           chan *NetMsg
	cmdProtoMap            *cmd.CmdProtoMap
	serverType             string
	appId                  string
	gateTcpMqChan          chan []byte
	gateTcpMqEventChan     chan *GateTcpMqEvent
	gateTcpMqDeadEventChan chan string
	rpcClient              *rpc.Client
}

func NewMessageQueue(serverType string, appId string, rpcClient *rpc.Client) (r *MessageQueue) {
	r = new(MessageQueue)
	conn, err := nats.Connect(config.CONF.MQ.NatsUrl)
	if err != nil {
		logger.Error("connect nats error: %v", err)
		return nil
	}
	r.natsConn = conn
	r.natsMsgChan = make(chan *nats.Msg, 1000)
	_, err = r.natsConn.ChanSubscribe(r.getTopic(serverType, appId), r.natsMsgChan)
	if err != nil {
		logger.Error("nats subscribe error: %v", err)
		return nil
	}
	_, err = r.natsConn.ChanSubscribe("ALL_SERVER_HK4E", r.natsMsgChan)
	if err != nil {
		logger.Error("nats subscribe error: %v", err)
		return nil
	}
	r.netMsgInput = make(chan *NetMsg, 1000)
	r.netMsgOutput = make(chan *NetMsg, 1000)
	r.cmdProtoMap = cmd.NewCmdProtoMap()
	r.serverType = serverType
	r.appId = appId
	r.gateTcpMqChan = make(chan []byte, 1000)
	r.gateTcpMqEventChan = make(chan *GateTcpMqEvent, 1000)
	r.gateTcpMqDeadEventChan = make(chan string, 1000)
	r.rpcClient = rpcClient
	if serverType == api.GATE {
		go r.runGateTcpMqServer()
	} else {
		go r.runGateTcpMqClient()
	}
	go r.recvHandler()
	go r.sendHandler()
	return r
}

func (m *MessageQueue) Close() {
	// 等待所有待发送的消息发送完毕
	for {
		if len(m.netMsgInput) == 0 {
			break
		}
		time.Sleep(time.Millisecond * 100)
	}
	m.natsConn.Close()
}

func (m *MessageQueue) GetNetMsg() chan *NetMsg {
	return m.netMsgOutput
}

func (m *MessageQueue) recvHandler() {
	for {
		var rawData []byte = nil
		select {
		case natsMsg := <-m.natsMsgChan:
			rawData = natsMsg.Data
		case gateTcpMqMsg := <-m.gateTcpMqChan:
			rawData = gateTcpMqMsg
		}
		// msgpack NetMsg
		netMsg := new(NetMsg)
		err := msgpack.Unmarshal(rawData, netMsg)
		if err != nil {
			logger.Error("parse bin to net msg error: %v", err)
			continue
		}
		// 忽略自己发出的广播消息
		if netMsg.OriginServerType == m.serverType && netMsg.OriginServerAppId == m.appId {
			continue
		}
		switch netMsg.MsgType {
		case MsgTypeGame:
			gameMsg := netMsg.GameMsg
			if gameMsg == nil {
				logger.Error("recv game msg is nil")
				continue
			}
			if netMsg.EventId == NormalMsg {
				// protobuf PayloadMessage
				payloadMessage := m.cmdProtoMap.GetProtoObjByCmdId(gameMsg.CmdId)
				if payloadMessage == nil {
					logger.Error("get protobuf obj by cmd id error: %v", err)
					continue
				}
				err = pb.Unmarshal(gameMsg.PayloadMessageData, payloadMessage)
				if err != nil {
					logger.Error("parse bin to payload msg error: %v", err)
					continue
				}
				gameMsg.PayloadMessage = payloadMessage
			}
		}
		m.netMsgOutput <- netMsg
	}
}

func (m *MessageQueue) sendHandler() {
	// 网关tcp连接消息收发快速通道 key1:服务器类型 key2:服务器appid value:连接实例
	gateTcpMqInstMap := map[string]map[string]*GateTcpMqInst{
		api.GATE:        make(map[string]*GateTcpMqInst),
		api.GS:          make(map[string]*GateTcpMqInst),
		api.FIGHT:       make(map[string]*GateTcpMqInst),
		api.PATHFINDING: make(map[string]*GateTcpMqInst),
	}
	for {
		select {
		case netMsg := <-m.netMsgInput:
			switch netMsg.MsgType {
			case MsgTypeGame:
				gameMsg := netMsg.GameMsg
				if gameMsg == nil {
					logger.Error("send game msg is nil")
					continue
				}
				if gameMsg.PayloadMessageData == nil {
					// protobuf PayloadMessage
					payloadMessageData, err := pb.Marshal(gameMsg.PayloadMessage)
					if err != nil {
						logger.Error("parse payload msg to bin error: %v", err)
						continue
					}
					gameMsg.PayloadMessageData = payloadMessageData
				}
			}
			// msgpack NetMsg
			netMsgData, err := msgpack.Marshal(netMsg)
			if err != nil {
				logger.Error("parse net msg to bin error: %v", err)
				continue
			}
			fallbackNatsMqSend := func() {
				// 找不到tcp快速通道就fallback回nats
				natsMsg := nats.NewMsg(netMsg.Topic)
				natsMsg.Data = netMsgData
				err = m.natsConn.PublishMsg(natsMsg)
				if err != nil {
					logger.Error("nats publish msg error: %v", err)
					return
				}
			}
			// 广播消息只能走nats
			if netMsg.ServerType == "ALL_SERVER_HK4E" {
				fallbackNatsMqSend()
				continue
			}
			// 有tcp快速通道就走快速通道
			instMap, exist := gateTcpMqInstMap[netMsg.ServerType]
			if !exist {
				logger.Error("unknown server type: %v", netMsg.ServerType)
				fallbackNatsMqSend()
				continue
			}
			inst, exist := instMap[netMsg.AppId]
			if !exist {
				fallbackNatsMqSend()
				continue
			}
			// 前4个字节为消息的载荷部分长度
			netMsgDataTcp := make([]byte, 4+len(netMsgData))
			binary.BigEndian.PutUint32(netMsgDataTcp, uint32(len(netMsgData)))
			copy(netMsgDataTcp[4:], netMsgData)
			_, err = inst.conn.Write(netMsgDataTcp)
			if err != nil {
				// 发送失败关闭连接fallback回nats
				logger.Error("gate tcp mq send error: %v", err)
				_ = inst.conn.Close()
				m.gateTcpMqEventChan <- &GateTcpMqEvent{
					event: EventDisconnect,
					inst:  inst,
				}
				fallbackNatsMqSend()
				continue
			}
		case gateTcpMqEvent := <-m.gateTcpMqEventChan:
			inst := gateTcpMqEvent.inst
			switch gateTcpMqEvent.event {
			case EventConnect:
				logger.Warn("gate tcp mq connect, addr: %v, server type: %v, appid: %v", inst.conn.RemoteAddr().String(), inst.serverType, inst.appId)
				gateTcpMqInstMap[inst.serverType][inst.appId] = inst
			case EventDisconnect:
				logger.Warn("gate tcp mq disconnect, addr: %v, server type: %v, appid: %v", inst.conn.RemoteAddr().String(), inst.serverType, inst.appId)
				delete(gateTcpMqInstMap[inst.serverType], inst.appId)
				m.gateTcpMqDeadEventChan <- inst.conn.RemoteAddr().String()
			}
		}
	}
}

type GateTcpMqInst struct {
	conn       net.Conn
	serverType string
	appId      string
}

const (
	EventConnect = iota
	EventDisconnect
)

type GateTcpMqEvent struct {
	event int
	inst  *GateTcpMqInst
}

func (m *MessageQueue) runGateTcpMqServer() {
	addr, err := net.ResolveTCPAddr("tcp4", "0.0.0.0:"+strconv.Itoa(int(config.CONF.Hk4e.GateTcpMqPort)))
	if err != nil {
		logger.Error("gate tcp mq parse port error: %v", err)
		return
	}
	listener, err := net.ListenTCP("tcp4", addr)
	if err != nil {
		logger.Error("gate tcp mq listen error: %v", err)
		return
	}
	for {
		conn, err := listener.Accept()
		if err != nil {
			logger.Error("gate tcp mq accept error: %v", err)
			return
		}
		logger.Info("accept gate tcp mq, server addr: %v", conn.RemoteAddr().String())
		go m.gateTcpMqHandshake(conn)
	}
}

func (m *MessageQueue) gateTcpMqHandshake(conn net.Conn) {
	recvBuf := make([]byte, 1500)
	recvLen, err := conn.Read(recvBuf)
	if err != nil {
		logger.Error("handshake packet recv error: %v", err)
		return
	}
	recvBuf = recvBuf[:recvLen]
	serverMetaData := string(recvBuf)
	// 握手包格式 服务器类型@appid
	split := strings.Split(serverMetaData, "@")
	if len(split) != 2 {
		logger.Error("handshake packet format error")
		return
	}
	inst := &GateTcpMqInst{
		conn:       conn,
		serverType: "",
		appId:      "",
	}
	switch split[0] {
	case api.GATE:
		inst.serverType = api.GATE
	case api.GS:
		inst.serverType = api.GS
	case api.FIGHT:
		inst.serverType = api.FIGHT
	case api.PATHFINDING:
		inst.serverType = api.PATHFINDING
	default:
		logger.Error("invalid server type")
		return
	}
	if len(split[1]) != 8 {
		logger.Error("invalid appid")
		return
	}
	inst.appId = split[1]
	go m.gateTcpMqRecvHandle(inst)
	m.gateTcpMqEventChan <- &GateTcpMqEvent{
		event: EventConnect,
		inst:  inst,
	}
}

func (m *MessageQueue) runGateTcpMqClient() {
	// 已存在的GATE连接列表
	gateServerConnAddrMap := make(map[string]bool)
	m.gateTcpMqConn(gateServerConnAddrMap)
	ticker := time.NewTicker(time.Minute)
	for {
		select {
		case addr := <-m.gateTcpMqDeadEventChan:
			// GATE连接断开
			delete(gateServerConnAddrMap, addr)
		case <-ticker.C:
			// 定时获取全部GATE实例地址并建立连接
			m.gateTcpMqConn(gateServerConnAddrMap)
		}
	}
}

func (m *MessageQueue) gateTcpMqConn(gateServerConnAddrMap map[string]bool) {
	rsp, err := m.rpcClient.Discovery.GetAllGateServerInfoList(context.TODO(), new(api.NullMsg))
	if err != nil {
		logger.Error("gate tcp mq get gate list error: %v", err)
		return
	}
	for _, gateServerInfo := range rsp.GateServerInfoList {
		gateServerAddr := gateServerInfo.MqAddr + ":" + strconv.Itoa(int(gateServerInfo.MqPort))
		_, exist := gateServerConnAddrMap[gateServerAddr]
		// GATE连接已存在
		if exist {
			continue
		}
		addr, err := net.ResolveTCPAddr("tcp4", gateServerAddr)
		if err != nil {
			logger.Error("gate tcp mq parse addr error: %v", err)
			return
		}
		conn, err := net.DialTCP("tcp4", nil, addr)
		if err != nil {
			logger.Error("gate tcp mq conn error: %v", err)
			return
		}
		_, err = conn.Write([]byte(m.serverType + "@" + m.appId))
		if err != nil {
			logger.Error("gate tcp mq handshake send error: %v", err)
			return
		}
		inst := &GateTcpMqInst{
			conn:       conn,
			serverType: api.GATE,
			appId:      gateServerInfo.AppId,
		}
		m.gateTcpMqEventChan <- &GateTcpMqEvent{
			event: EventConnect,
			inst:  inst,
		}
		gateServerConnAddrMap[gateServerAddr] = true
		logger.Info("connect gate tcp mq, gate addr: %v", conn.RemoteAddr().String())
		go m.gateTcpMqRecvHandle(inst)
	}
}

func (m *MessageQueue) gateTcpMqRecvHandle(inst *GateTcpMqInst) {
	dataBuf := make([]byte, 0, 1500)
	for {
		recvBuf := make([]byte, 1500)
		recvLen, err := inst.conn.Read(recvBuf)
		if err != nil {
			logger.Error("gate tcp mq recv error: %v", err)
			m.gateTcpMqEventChan <- &GateTcpMqEvent{
				event: EventDisconnect,
				inst:  inst,
			}
			_ = inst.conn.Close()
			return
		}
		recvBuf = recvBuf[:recvLen]
		m.gateTcpMqRecvHandleLoop(recvBuf, &dataBuf)
	}
}

func (m *MessageQueue) gateTcpMqRecvHandleLoop(data []byte, dataBuf *[]byte) {
	if len(*dataBuf) != 0 {
		// 取出之前的缓冲区数据
		data = append(*dataBuf, data...)
		*dataBuf = make([]byte, 0, 1500)
	}
	// 长度太短
	if len(data) < 4 {
		logger.Debug("packet len less 4 byte, data: %v", data)
		*dataBuf = append(*dataBuf, data...)
		return
	}
	// 消息的载荷部分长度
	msgPayloadLen := binary.BigEndian.Uint32(data[0:4])
	// 检查长度
	packetLen := int(msgPayloadLen) + 4
	haveMorePacket := false
	if len(data) > packetLen {
		// 有不止一个包
		haveMorePacket = true
	} else if len(data) < packetLen {
		// 这一次没收够 放入缓冲区
		*dataBuf = append(*dataBuf, data...)
		return
	}
	m.gateTcpMqChan <- data[4 : 4+msgPayloadLen]
	if haveMorePacket {
		m.gateTcpMqRecvHandleLoop(data[packetLen:], dataBuf)
	}
}
