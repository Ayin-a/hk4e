package app

import (
	"context"
	_ "net/http/pprof"
	"os"
	"os/signal"
	"syscall"

	"hk4e/common/config"
	"hk4e/common/mq"
	"hk4e/node/api"
	"hk4e/node/service"
	"hk4e/pkg/logger"

	"github.com/nats-io/nats.go"
)

func Run(ctx context.Context, configFile string) error {
	config.InitConfig(configFile)

	logger.InitLogger("node")
	logger.Warn("node start")
	defer func() {
		logger.CloseLogger()
	}()

	// natsrpc server
	conn, err := nats.Connect(config.GetConfig().MQ.NatsUrl)
	if err != nil {
		logger.Error("connect nats error: %v", err)
		return err
	}
	defer conn.Close()

	// 只用来监听全服广播
	messageQueue := mq.NewMessageQueue(api.NODE, "node", nil)
	defer messageQueue.Close()

	s, err := service.NewService(conn, messageQueue)
	if err != nil {
		return err
	}
	defer s.Close()

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
				logger.Warn("node exit")
				return nil
			case syscall.SIGHUP:
			default:
				return nil
			}
		}
	}
}
