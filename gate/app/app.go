package app

import (
	"context"
	_ "net/http/pprof"
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	"hk4e/gate/mq"
	"hk4e/gate/net"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
)

func Run(ctx context.Context, configFile string) error {
	config.InitConfig(configFile)

	logger.InitLogger("gate")
	logger.Warn("gate start")

	netMsgInput := make(chan *cmd.NetMsg, 10000)
	netMsgOutput := make(chan *cmd.NetMsg, 10000)

	connectManager := net.NewKcpConnectManager(netMsgInput, netMsgOutput)
	connectManager.Start()

	go func() {
		outputChan := connectManager.GetKcpEventOutputChan()
		for {
			<-outputChan
		}
	}()

	messageQueue := mq.NewMessageQueue(netMsgInput, netMsgOutput)
	messageQueue.Start()
	defer messageQueue.Close()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		select {
		case <-ctx.Done():
			return nil
		case s := <-c:
			logger.Warn("get a signal %s", s.String())
			switch s {
			case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
				logger.Warn("gate exit")
				time.Sleep(time.Second)
				return nil
			case syscall.SIGHUP:
			default:
				return nil
			}
		}

	}
}
