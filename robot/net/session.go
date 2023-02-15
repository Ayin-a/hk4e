package net

import (
	"sync/atomic"
	"time"

	"hk4e/gate/client_proto"
	"hk4e/gate/kcp"
	hk4egatenet "hk4e/gate/net"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

type Session struct {
	Conn              *kcp.UDPSession
	XorKey            []byte
	SendChan          chan *hk4egatenet.ProtoMsg
	RecvChan          chan *hk4egatenet.ProtoMsg
	ServerCmdProtoMap *cmd.CmdProtoMap
	ClientCmdProtoMap *client_proto.ClientCmdProtoMap
	ClientSeq         uint32
	DeadEvent         chan bool
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
	r := &Session{
		Conn:              conn,
		XorKey:            dispatchKey,
		SendChan:          make(chan *hk4egatenet.ProtoMsg, 1000),
		RecvChan:          make(chan *hk4egatenet.ProtoMsg, 1000),
		ServerCmdProtoMap: cmd.NewCmdProtoMap(),
		ClientCmdProtoMap: client_proto.NewClientCmdProtoMap(),
		ClientSeq:         0,
		DeadEvent:         make(chan bool, 10),
	}
	go r.recvHandle()
	go r.sendHandle()
	return r, nil
}

func (s *Session) SendMsg(cmdId uint16, msg pb.Message) {
	atomic.AddUint32(&s.ClientSeq, 1)
	s.SendChan <- &hk4egatenet.ProtoMsg{
		ConvId: 0,
		CmdId:  cmdId,
		HeadMessage: &proto.PacketHead{
			ClientSequenceId: s.ClientSeq,
			SentMs:           uint64(time.Now().UnixMilli()),
		},
		PayloadMessage: msg,
	}
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
			protoMsgList := hk4egatenet.ProtoDecode(v, s.ServerCmdProtoMap, s.ClientCmdProtoMap)
			for _, vv := range protoMsgList {
				s.RecvChan <- vv
			}
		}
	}
	s.DeadEvent <- true
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
		kcpMsg := hk4egatenet.ProtoEncode(protoMsg, s.ServerCmdProtoMap, s.ClientCmdProtoMap)
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
	s.DeadEvent <- true
}
