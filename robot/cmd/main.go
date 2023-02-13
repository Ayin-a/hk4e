package main

import (
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	hk4egatenet "hk4e/gate/net"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"hk4e/robot/net"

	"github.com/FlourishingWorld/dpdk-go/engine"
)

func main() {
	config.InitConfig("application.toml")
	logger.InitLogger("robot")

	err := engine.InitEngine("00:0C:29:3E:3E:DF", "192.168.199.199", "255.255.255.0", "192.168.199.1")
	if err != nil {
		panic(err)
	}
	engine.RunEngine([]int{0, 1, 2, 3}, 1, "0.0.0.0")

	time.Sleep(time.Second * 30)

	session := net.NewSession("192.168.199.233:22222", []byte{0x00})
	go func() {
		protoMsg := <-session.RecvChan
		logger.Debug("%v", protoMsg)
	}()
	go func() {
		session.SendChan <- &hk4egatenet.ProtoMsg{
			ConvId: 0,
			CmdId:  cmd.GetPlayerTokenReq,
			HeadMessage: &proto.PacketHead{
				ClientSequenceId: 1,
				SentMs:           uint64(time.Now().UnixMilli()),
			},
			PayloadMessage: &proto.GetPlayerTokenReq{
				AccountToken:  "xxxxxx",
				AccountUid:    "10001",
				KeyId:         0,
				ClientRandKey: "",
			},
		}
	}()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			engine.StopEngine()
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
