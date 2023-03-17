package service

import (
	"hk4e/common/mq"
	"hk4e/node/api"

	"github.com/byebyebruce/natsrpc"
	"github.com/nats-io/nats.go"
	"github.com/nats-io/nats.go/encoders/protobuf"
)

type Service struct {
	messageQueue     *mq.MessageQueue
	discoveryService *DiscoveryService
}

func NewService(conn *nats.Conn, messageQueue *mq.MessageQueue) (*Service, error) {
	enc, err := nats.NewEncodedConn(conn, protobuf.PROTOBUF_ENCODER)
	if err != nil {
		return nil, err
	}
	svr, err := natsrpc.NewServer(enc)
	if err != nil {
		return nil, err
	}
	discoveryService := NewDiscoveryService()
	_, err = api.RegisterDiscoveryNATSRPCServer(svr, discoveryService)
	if err != nil {
		return nil, err
	}
	s := &Service{
		messageQueue:     messageQueue,
		discoveryService: discoveryService,
	}
	go s.BroadcastReceiver()
	return s, nil
}

func (s *Service) Close() {
}

func (s *Service) BroadcastReceiver() {
	for {
		netMsg := <-s.messageQueue.GetNetMsg()
		if netMsg.MsgType != mq.MsgTypeServer {
			continue
		}
		if netMsg.EventId != mq.ServerUserOnlineStateChangeNotify {
			continue
		}
		if netMsg.OriginServerType != api.GS {
			continue
		}
		serverMsg := netMsg.ServerMsg
		s.discoveryService.globalGsOnlineMapLock.Lock()
		if serverMsg.IsOnline {
			s.discoveryService.globalGsOnlineMap[serverMsg.UserId] = netMsg.OriginServerAppId
		} else {
			delete(s.discoveryService.globalGsOnlineMap, serverMsg.UserId)
		}
		s.discoveryService.globalGsOnlineMapLock.Unlock()
	}
}
