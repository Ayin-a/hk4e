package mq

import (
	"flswld.com/common/config"
	"flswld.com/gate-hk4e-api/proto"
	"flswld.com/logger"
	"github.com/nats-io/nats.go"
	"github.com/vmihailenco/msgpack/v5"
	pb "google.golang.org/protobuf/proto"
)

type MessageQueue struct {
	natsConn     *nats.Conn
	natsMsgChan  chan *nats.Msg
	netMsgInput  chan *proto.NetMsg
	netMsgOutput chan *proto.NetMsg
	apiProtoMap  *proto.ApiProtoMap
}

func NewMessageQueue(netMsgInput chan *proto.NetMsg, netMsgOutput chan *proto.NetMsg) (r *MessageQueue) {
	r = new(MessageQueue)
	conn, err := nats.Connect(config.CONF.MQ.NatsUrl)
	if err != nil {
		logger.LOG.Error("connect nats error: %v", err)
		return nil
	}
	r.natsConn = conn
	r.natsMsgChan = make(chan *nats.Msg, 10000)
	_, err = r.natsConn.ChanSubscribe("GAME_HK4E", r.natsMsgChan)
	if err != nil {
		logger.LOG.Error("nats subscribe error: %v", err)
		return nil
	}
	r.netMsgInput = netMsgInput
	r.netMsgOutput = netMsgOutput
	r.apiProtoMap = proto.NewApiProtoMap()
	return r
}

func (m *MessageQueue) Start() {
	go m.startRecvHandler()
	go m.startSendHandler()
}

func (m *MessageQueue) Close() {
	m.natsConn.Close()
}

func (m *MessageQueue) startRecvHandler() {
	for {
		natsMsg := <-m.natsMsgChan
		// msgpack NetMsg
		netMsg := new(proto.NetMsg)
		err := msgpack.Unmarshal(natsMsg.Data, netMsg)
		if err != nil {
			logger.LOG.Error("parse bin to net msg error: %v", err)
			continue
		}
		if netMsg.EventId == proto.NormalMsg || netMsg.EventId == proto.UserRegNotify {
			// protobuf PayloadMessage
			payloadMessage := m.apiProtoMap.GetProtoObjByApiId(netMsg.ApiId)
			err = pb.Unmarshal(netMsg.PayloadMessageData, payloadMessage)
			if err != nil {
				logger.LOG.Error("parse bin to payload msg error: %v", err)
				continue
			}
			netMsg.PayloadMessage = payloadMessage
		}
		m.netMsgOutput <- netMsg
	}
}

func (m *MessageQueue) startSendHandler() {
	for {
		netMsg := <-m.netMsgInput
		// protobuf PayloadMessage 已在上一层完成
		// msgpack NetMsg
		netMsgData, err := msgpack.Marshal(netMsg)
		if err != nil {
			logger.LOG.Error("parse net msg to bin error: %v", err)
			continue
		}
		natsMsg := nats.NewMsg("GATE_HK4E")
		natsMsg.Data = netMsgData
		err = m.natsConn.PublishMsg(natsMsg)
		if err != nil {
			logger.LOG.Error("nats publish msg error: %v", err)
			continue
		}
	}
}
