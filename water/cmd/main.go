package main

import (
	"flswld.com/common/config"
	"flswld.com/light"
	"flswld.com/logger"
	"os"
	"os/signal"
	"syscall"
	"time"
	"water/controller"
	"water/dao"
	"water/service"
)

func main() {
	filePath := "./application.toml"
	config.InitConfig(filePath)

	logger.InitLogger()
	logger.LOG.Info("water start")

	httpProvider := light.NewHttpProvider()

	// 用户服务
	rpcUserConsumer := light.NewRpcConsumer("annie-user-app")

	db := dao.NewDao()

	svc := service.NewService(db, rpcUserConsumer)
	rpcSvc := service.NewRpcService(db, svc)

	rpcProvider := light.NewRpcProvider(rpcSvc)

	_ = controller.NewController(svc)

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			rpcProvider.CloseRpcProvider()
			rpcUserConsumer.CloseRpcConsumer()
			httpProvider.CloseHttpProvider()
			logger.LOG.Info("water exit")
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
