package app

import (
	"context"
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	"hk4e/gm/controller"
	"hk4e/gm/rpc_client"
	"hk4e/pkg/logger"

	"github.com/nats-io/nats.go"
)

func Run(ctx context.Context, configFile string) error {
	config.InitConfig(configFile)

	logger.InitLogger("gm")
	logger.Warn("gm start")

	conn, err := nats.Connect(config.CONF.MQ.NatsUrl)
	if err != nil {
		logger.Error("connect nats error: %v", err)
		return err
	}
	defer conn.Close()

	rpc, err := rpc_client.New(conn)
	if err != nil {
		return err
	}
	_ = controller.NewController(rpc)

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
				logger.Warn("gm exit")
				time.Sleep(time.Second)
				return nil
			case syscall.SIGHUP:
			default:
				return nil
			}
		}
	}
}
