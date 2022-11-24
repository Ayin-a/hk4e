package app

import (
	"context"
	_ "net/http/pprof"
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	"hk4e/gate/forward"
	"hk4e/gate/mq"
	"hk4e/gate/net"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
)

func Run(ctx context.Context, configFile string) error {
	config.InitConfig(configFile)

	logger.InitLogger("gate", config.CONF.Logger)
	logger.LOG.Info("gate start")

	kcpEventInput := make(chan *net.KcpEvent)
	kcpEventOutput := make(chan *net.KcpEvent)
	protoMsgInput := make(chan *net.ProtoMsg, 10000)
	protoMsgOutput := make(chan *net.ProtoMsg, 10000)
	netMsgInput := make(chan *cmd.NetMsg, 10000)
	netMsgOutput := make(chan *cmd.NetMsg, 10000)

	connectManager := net.NewKcpConnectManager(protoMsgInput, protoMsgOutput, kcpEventInput, kcpEventOutput)
	connectManager.Start()

	forwardManager := forward.NewForwardManager(protoMsgInput, protoMsgOutput, kcpEventInput, kcpEventOutput, netMsgInput, netMsgOutput)
	forwardManager.Start()

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
			logger.LOG.Info("get a signal %s", s.String())
			switch s {
			case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
				logger.LOG.Info("gate exit")
				time.Sleep(time.Second)
				return nil
			case syscall.SIGHUP:
			default:
				return nil
			}
		}

	}
}
