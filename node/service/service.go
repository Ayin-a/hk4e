package service

import (
	"hk4e/node/api"

	"github.com/byebyebruce/natsrpc"
	"github.com/nats-io/nats.go"
	"github.com/nats-io/nats.go/encoders/protobuf"
)

type Service struct {
}

func NewService(conn *nats.Conn) (*Service, error) {
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
	return &Service{}, nil
}

func (s *Service) Close() {
}
