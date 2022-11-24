package app

import (
	"context"
	_ "net/http/pprof"
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	gdc "hk4e/gs/config"
	"hk4e/gs/constant"
	"hk4e/gs/dao"
	"hk4e/gs/game"
	"hk4e/gs/mq"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
)

func Run(ctx context.Context, configFile string) error {
	config.InitConfig(configFile)

	logger.InitLogger("gs", config.CONF.Logger)
	logger.LOG.Info("gs start")

	constant.InitConstant()

	gdc.InitGameDataConfig()

	db, err := dao.NewDao()
	if err != nil {
		panic(err)
	}
	defer db.CloseDao()

	netMsgInput := make(chan *cmd.NetMsg, 10000)
	netMsgOutput := make(chan *cmd.NetMsg, 10000)

	messageQueue := mq.NewMessageQueue(netMsgInput, netMsgOutput)
	messageQueue.Start()
	defer messageQueue.Close()

	gameManager := game.NewGameManager(db, netMsgInput, netMsgOutput)
	gameManager.Start()
	defer gameManager.Stop()

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
				logger.LOG.Info("gs exit")
				time.Sleep(time.Second)
				return nil
			case syscall.SIGHUP:
			default:
				return nil
			}
		}
	}
}
