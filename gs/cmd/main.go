package main

import (
	"github.com/arl/statsviz"
	"hk4e/common/config"
	gdc "hk4e/gs/config"
	"hk4e/gs/constant"
	"hk4e/gs/dao"
	"hk4e/gs/game"
	"hk4e/gs/mq"
	"hk4e/logger"
	"hk4e/protocol/cmd"
	"net/http"
	_ "net/http/pprof"
	"os"
	"os/signal"
	"syscall"
	"time"
)

func main() {
	filePath := "./application.toml"
	config.InitConfig(filePath)

	logger.InitLogger("gs")
	logger.LOG.Info("gs start")

	go func() {
		// 性能检测
		err := statsviz.RegisterDefault()
		if err != nil {
			logger.LOG.Error("statsviz init error: %v", err)
		}
		err = http.ListenAndServe("0.0.0.0:3456", nil)
		if err != nil {
			logger.LOG.Error("perf debug http start error: %v", err)
		}
	}()

	constant.InitConstant()

	gdc.InitGameDataConfig()

	db := dao.NewDao()

	netMsgInput := make(chan *cmd.NetMsg, 10000)
	netMsgOutput := make(chan *cmd.NetMsg, 10000)

	messageQueue := mq.NewMessageQueue(netMsgInput, netMsgOutput)
	messageQueue.Start()

	gameManager := game.NewGameManager(db, netMsgInput, netMsgOutput)
	gameManager.Start()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			logger.LOG.Info("gs exit")
			gameManager.Stop()
			db.CloseDao()
			messageQueue.Close()
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
