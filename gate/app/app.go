package app

import (
	"context"
	_ "net/http/pprof"
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	"hk4e/common/mq"
	"hk4e/gate/net"
	"hk4e/pkg/logger"
)

func Run(ctx context.Context, configFile string) error {
	config.InitConfig(configFile)

	logger.InitLogger("gate")
	logger.Warn("gate start")

	messageQueue := mq.NewMessageQueue(mq.GATE, "1")

	connectManager := net.NewKcpConnectManager(messageQueue)
	connectManager.Start()
	defer connectManager.Stop()

	go func() {
		outputChan := connectManager.GetKcpEventOutputChan()
		for {
			<-outputChan
		}
	}()

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
