package app

import (
	"context"
	"github.com/nats-io/nats.go"
	_ "net/http/pprof"
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	"hk4e/dispatch/controller"
	"hk4e/dispatch/dao"
	"hk4e/pkg/logger"
)

func Run(ctx context.Context, configFile string) error {
	config.InitConfig(configFile)

	logger.InitLogger("dispatch", config.CONF.Logger)
	logger.LOG.Info("dispatch start")

	db := dao.NewDao()
	defer db.CloseDao()

	_ = controller.NewController(db)

	// TODO 临时写一下用来传递新的密钥后面改RPC
	conn, err := nats.Connect(config.CONF.MQ.NatsUrl)
	if err != nil {
		logger.LOG.Error("connect nats error: %v", err)
		return nil
	}
	natsMsg := nats.NewMsg("GATE_KEY_HK4E")
	natsMsg.Data = []byte{0x00, 0xff}
	err = conn.PublishMsg(natsMsg)
	if err != nil {
		logger.LOG.Error("nats publish msg error: %v", err)
		return nil
	}

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
				logger.LOG.Info("dispatch exit")

				time.Sleep(time.Second)
				return nil
			case syscall.SIGHUP:
			default:
				return nil
			}
		}
	}
}
