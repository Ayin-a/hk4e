package net

import (
	"time"

	hk4egatenet "hk4e/gate/net"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"

	"github.com/FlourishingWorld/dpdk-go/protocol/kcp"
)

type Session struct {
	SendChan        chan *hk4egatenet.ProtoMsg
	RecvChan        chan *hk4egatenet.ProtoMsg
	conn            *kcp.UDPSession
	seed            uint64 // TODO 密钥交换后收到的服务器生成的seed
	xorKey          []byte
	changeXorKeyFin bool
	useMagicSeed    bool
}

func NewSession(gateAddr string, dispatchKey []byte) (r *Session) {
	conn, err := kcp.DialWithOptions(gateAddr, "0.0.0.0:30000")
	if err != nil {
		logger.Error("kcp client conn to server error: %v", err)
		return
	}
	conn.SetACKNoDelay(true)
	conn.SetWriteDelay(false)
	sendChan := make(chan *hk4egatenet.ProtoMsg, 1000)
	recvChan := make(chan *hk4egatenet.ProtoMsg, 1000)
	r = &Session{
		SendChan:        sendChan,
		RecvChan:        recvChan,
		conn:            conn,
		seed:            0,
		xorKey:          dispatchKey,
		changeXorKeyFin: false,
		useMagicSeed:    true,
	}
	go r.recvHandle()
	go r.sendHandle()
	return r
}

func (s *Session) recvHandle() {
	logger.Info("recv handle start")
	conn := s.conn
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
		hk4egatenet.DecodeBinToPayload(recvData, &dataBuf, convId, &kcpMsgList, s.xorKey)
		for _, v := range kcpMsgList {
			protoMsgList := hk4egatenet.ProtoDecode(v, nil, nil)
			for _, vv := range protoMsgList {
				s.RecvChan <- vv
				if s.changeXorKeyFin == false && vv.CmdId == cmd.GetPlayerTokenRsp {
					// XOR密钥切换
					logger.Info("change session xor key, convId: %v", convId)
					s.changeXorKeyFin = true
					keyBlock := random.NewKeyBlock(s.seed, s.useMagicSeed)
					xorKey := keyBlock.XorKey()
					key := make([]byte, 4096)
					copy(key, xorKey[:])
					s.xorKey = key
				}
			}
		}
	}
}

func (s *Session) sendHandle() {
	logger.Info("send handle start")
	conn := s.conn
	convId := conn.GetConv()
	for {
		protoMsg, ok := <-s.SendChan
		if !ok {
			logger.Error("exit send loop, send chan close, convId: %v", convId)
			_ = conn.Close()
			break
		}
		kcpMsg := hk4egatenet.ProtoEncode(protoMsg, nil, nil)
		if kcpMsg == nil {
			logger.Error("decode kcp msg is nil, convId: %v", convId)
			continue
		}
		bin := hk4egatenet.EncodePayloadToBin(kcpMsg, s.xorKey)
		_ = conn.SetWriteDeadline(time.Now().Add(time.Second * hk4egatenet.ConnSendTimeout))
		_, err := conn.Write(bin)
		if err != nil {
			logger.Error("exit send loop, conn write err: %v, convId: %v", err, convId)
			_ = conn.Close()
			break
		}
	}
}
