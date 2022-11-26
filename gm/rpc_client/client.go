// Package rpc_client rpc客户端
package rpc_client

import (
	"hk4e/gs/api"

	"github.com/nats-io/nats.go"
	"github.com/nats-io/nats.go/encoders/protobuf"
)

// Client rpc客户端
type Client struct {
	api.GMNATSRPCClient
}

// New 构造
func New(conn *nats.Conn) (*Client, error) {
	enc, err := nats.NewEncodedConn(conn, protobuf.PROTOBUF_ENCODER)
	if err != nil {
		return nil, err
	}
	cli, err := api.NewGMNATSRPCClient(enc)
	if err != nil {
		return nil, err
	}
	return &Client{
		GMNATSRPCClient: cli,
	}, nil
}
