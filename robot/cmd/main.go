package main

import (
	"encoding/base64"
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	hk4egatenet "hk4e/gate/net"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"hk4e/robot/login"
)

func main() {
	config.InitConfig("application.toml")
	logger.InitLogger("robot")

	// // DPDK模式需开启
	// err := engine.InitEngine("00:0C:29:3E:3E:DF", "192.168.199.199", "255.255.255.0", "192.168.199.1")
	// if err != nil {
	// 	panic(err)
	// }
	// engine.RunEngine([]int{0, 1, 2, 3}, 4, 1, "0.0.0.0")
	// time.Sleep(time.Second * 30)

	dispatchInfo, err := login.GetDispatchInfo("https://hk4e.flswld.com",
		"https://hk4e.flswld.com/query_cur_region",
		"",
		"?version=OSRELWin3.2.0&key_id=5",
		"5")
	if err != nil {
		panic(err)
	}
	accountInfo, err := login.AccountLogin("https://hk4e.flswld.com", "test123@@12345678", base64.StdEncoding.EncodeToString([]byte{0x00}))
	if err != nil {
		panic(err)
	}
	session, err := login.GateLogin(dispatchInfo, accountInfo, "5")
	if err != nil {
		panic(err)
	}
	go func() {
		for {
			// 从这个管道接收服务器发来的消息
			protoMsg := <-session.RecvChan
			logger.Debug("recv protoMsg: %v", protoMsg)
		}
	}()
	go func() {
		for {
			time.Sleep(time.Second)
			// 通过这个管道发消息给服务器
			session.SendChan <- &hk4egatenet.ProtoMsg{
				ConvId: 0,
				CmdId:  cmd.PingReq,
				HeadMessage: &proto.PacketHead{
					ClientSequenceId: 0,
					SentMs:           uint64(time.Now().UnixMilli()),
				},
				PayloadMessage: &proto.PingReq{
					ClientTime: uint32(time.Now().UnixMilli()),
					Seq:        0,
				},
			}
		}
	}()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:

			// // DPDK模式需开启
			// engine.StopEngine()

			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
