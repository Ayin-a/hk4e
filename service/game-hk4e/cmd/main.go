package main

import (
	"flswld.com/common/config"
	"flswld.com/gate-hk4e-api/proto"
	"flswld.com/light"
	"flswld.com/logger"
	gdc "game-hk4e/config"
	"game-hk4e/constant"
	"game-hk4e/dao"
	"game-hk4e/game"
	"game-hk4e/mq"
	"game-hk4e/rpc"
	"github.com/arl/statsviz"
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

	logger.InitLogger()
	logger.LOG.Info("game-hk4e start")

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

	netMsgInput := make(chan *proto.NetMsg, 10000)
	netMsgOutput := make(chan *proto.NetMsg, 10000)

	hk4eGatewayConsumer := light.NewRpcConsumer("hk4e-gateway")
	rpcManager := rpc.NewRpcManager(hk4eGatewayConsumer)
	gameServiceProvider := light.NewRpcProvider(rpcManager)

	messageQueue := mq.NewMessageQueue(netMsgInput, netMsgOutput)
	messageQueue.Start()

	gameManager := game.NewGameManager(db, rpcManager, netMsgInput, netMsgOutput)
	gameManager.Start()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			logger.LOG.Info("game-hk4e exit")
			gameManager.Stop()
			db.CloseDao()
			gameServiceProvider.CloseRpcProvider()
			hk4eGatewayConsumer.CloseRpcConsumer()
			messageQueue.Close()
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
