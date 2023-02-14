package net

import (
	"time"

	"hk4e/gate/kcp"
	hk4egatenet "hk4e/gate/net"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
)

type Session struct {
	Conn     *kcp.UDPSession
	XorKey   []byte
	SendChan chan *hk4egatenet.ProtoMsg
	RecvChan chan *hk4egatenet.ProtoMsg
}

func NewSession(gateAddr string, dispatchKey []byte, localPort int) (*Session, error) {
	// // DPDK模式需开启
	// conn, err := kcp.DialWithOptions(gateAddr, "0.0.0.0:"+strconv.Itoa(localPort))

	conn, err := kcp.DialWithOptions(gateAddr)
	if err != nil {
		logger.Error("kcp client conn to server error: %v", err)
		return nil, err
	}
	conn.SetACKNoDelay(true)
	conn.SetWriteDelay(false)
	sendChan := make(chan *hk4egatenet.ProtoMsg, 1000)
	recvChan := make(chan *hk4egatenet.ProtoMsg, 1000)
	r := &Session{
		Conn:     conn,
		XorKey:   dispatchKey,
		SendChan: sendChan,
		RecvChan: recvChan,
	}
	go r.recvHandle()
	go r.sendHandle()
	return r, nil
}

func (s *Session) recvHandle() {
	logger.Info("recv handle start")
	conn := s.Conn
	convId := conn.GetConv()
	recvBuf := make([]byte, hk4egatenet.PacketMaxLen)
	dataBuf := make([]byte, 0, 1500)
	for {
		_ = conn.SetReadDeadline(time.Now().Add(time.Second * hk4egatenet.ConnRecvTimeout))
		recvLen, err := conn.Read(recvBuf)
		if err != nil {
			logger.Error("exit recv loop, conn read err: %v, convId: %v", err, convId)
			_ = conn.Close()
			break
		}
		recvData := recvBuf[:recvLen]
		kcpMsgList := make([]*hk4egatenet.KcpMsg, 0)
		hk4egatenet.DecodeBinToPayload(recvData, &dataBuf, convId, &kcpMsgList, s.XorKey)
		for _, v := range kcpMsgList {
			protoMsgList := hk4egatenet.ProtoDecode(v, cmd.NewCmdProtoMap(), nil)
			for _, vv := range protoMsgList {
				s.RecvChan <- vv
			}
		}
	}
}

func (s *Session) sendHandle() {
	logger.Info("send handle start")
	conn := s.Conn
	convId := conn.GetConv()
	for {
		protoMsg, ok := <-s.SendChan
		if !ok {
			logger.Error("exit send loop, send chan close, convId: %v", convId)
			_ = conn.Close()
			break
		}
		kcpMsg := hk4egatenet.ProtoEncode(protoMsg, cmd.NewCmdProtoMap(), nil)
		if kcpMsg == nil {
			logger.Error("decode kcp msg is nil, convId: %v", convId)
			continue
		}
		bin := hk4egatenet.EncodePayloadToBin(kcpMsg, s.XorKey)
		_ = conn.SetWriteDeadline(time.Now().Add(time.Second * hk4egatenet.ConnSendTimeout))
		_, err := conn.Write(bin)
		if err != nil {
			logger.Error("exit send loop, conn write err: %v, convId: %v", err, convId)
			_ = conn.Close()
			break
		}
	}
}
