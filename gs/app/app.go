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
	"hk4e/gdconf"
	gdc "hk4e/gs/config"
	"hk4e/gs/constant"
	"hk4e/gs/dao"
	"hk4e/gs/game"
	"hk4e/gs/service"
	"hk4e/pkg/logger"

	"github.com/nats-io/nats.go"
)

func Run(ctx context.Context, configFile string) error {
	config.InitConfig(configFile)

	logger.InitLogger("gs")
	logger.Warn("gs start")

	constant.InitConstant()

	gdc.InitGameDataConfig()
	gdconf.InitGameDataConfig()

	conn, err := nats.Connect(config.CONF.MQ.NatsUrl)
	if err != nil {
		logger.Error("connect nats error: %v", err)
		return err
	}
	defer conn.Close()

	db, err := dao.NewDao()
	if err != nil {
		panic(err)
	}
	defer db.CloseDao()

	messageQueue := mq.NewMessageQueue(mq.GS, "1")
	defer messageQueue.Close()

	gameManager := game.NewGameManager(db, messageQueue)
	defer gameManager.Stop()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)

	s, err := service.NewService(conn)
	if err != nil {
		return err
	}
	defer s.Close()

	for {
		select {
		case <-ctx.Done():
			return nil
		case s := <-c:
			logger.Warn("get a signal %s", s.String())
			switch s {
			case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
				logger.Warn("gs exit")
				time.Sleep(time.Second)
				return nil
			case syscall.SIGHUP:
			default:
				return nil
			}
		}
	}
}
