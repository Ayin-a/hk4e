package rpc

import (
	"hk4e/common/config"
	gsapi "hk4e/gs/api"
	nodeapi "hk4e/node/api"

	"github.com/nats-io/nats.go"
	"github.com/nats-io/nats.go/encoders/protobuf"
)

// Client natsrpc客户端
type Client struct {
	conn      *nats.Conn
	Discovery *DiscoveryClient
	GM        *GMClient
}

// NewClient 构造
func NewClient() (*Client, error) {
	r := new(Client)
	conn, err := nats.Connect(config.GetConfig().MQ.NatsUrl)
	if err != nil {
		return nil, err
	}
	r.conn = conn
	discoveryClient, err := newDiscoveryClient(conn)
	if err != nil {
		return nil, err
	}
	r.Discovery = discoveryClient
	gmClient, err := newGmClient(conn)
	if err != nil {
		return nil, err
	}
	r.GM = gmClient
	return r, nil
}

// Close 销毁
func (c *Client) Close() {
	c.conn.Close()
}

// DiscoveryClient node的discovery服务
type DiscoveryClient struct {
	nodeapi.DiscoveryNATSRPCClient
}

func newDiscoveryClient(conn *nats.Conn) (*DiscoveryClient, error) {
	enc, err := nats.NewEncodedConn(conn, protobuf.PROTOBUF_ENCODER)
	if err != nil {
		return nil, err
	}
	cli, err := nodeapi.NewDiscoveryNATSRPCClient(enc)
	if err != nil {
		return nil, err
	}
	return &DiscoveryClient{
		DiscoveryNATSRPCClient: cli,
	}, nil
}

// GMClient gs的gm服务
type GMClient struct {
	gsapi.GMNATSRPCClient
}

func newGmClient(conn *nats.Conn) (*GMClient, error) {
	enc, err := nats.NewEncodedConn(conn, protobuf.PROTOBUF_ENCODER)
	if err != nil {
		return nil, err
	}
	cli, err := gsapi.NewGMNATSRPCClient(enc)
	if err != nil {
		return nil, err
	}
	return &GMClient{
		GMNATSRPCClient: cli,
	}, nil
}
