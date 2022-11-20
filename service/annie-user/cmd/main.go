package main

import (
	"annie-user/controller"
	"annie-user/dao"
	"annie-user/service"
	"flswld.com/common/config"
	"flswld.com/light"
	"flswld.com/logger"
	"os"
	"os/signal"
	"syscall"
	"time"
)

func main() {
	filePath := "./application.toml"
	config.InitConfig(filePath)

	logger.InitLogger()
	logger.LOG.Info("user start")

	httpProvider := light.NewHttpProvider()

	db := dao.NewDao()

	svc := service.NewService(db)
	rpcSvc := service.NewRpcService(db, svc)

	rpcProvider := light.NewRpcProvider(rpcSvc)

	// 认证服务
	rpcWaterAuthConsumer := light.NewRpcConsumer("water-auth")

	rpcHk4eGatewayConsumer := light.NewRpcConsumer("hk4e-gateway")

	_ = controller.NewController(svc, rpcWaterAuthConsumer, rpcHk4eGatewayConsumer)

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			rpcProvider.CloseRpcProvider()
			db.CloseDao()
			rpcWaterAuthConsumer.CloseRpcConsumer()
			httpProvider.CloseHttpProvider()
			logger.LOG.Info("user exit")
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
