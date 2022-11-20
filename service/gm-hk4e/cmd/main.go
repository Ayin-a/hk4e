package main

import (
	"flswld.com/common/config"
	"flswld.com/light"
	"flswld.com/logger"
	"gm-hk4e/controller"
	"os"
	"os/signal"
	"syscall"
	"time"
)

func main() {
	filePath := "./application.toml"
	config.InitConfig(filePath)

	logger.InitLogger()
	logger.LOG.Info("gm hk4e start")

	httpProvider := light.NewHttpProvider()

	// 认证服务
	rpcWaterAuthConsumer := light.NewRpcConsumer("water-auth")

	rpcHk4eGatewayConsumer := light.NewRpcConsumer("hk4e-gateway")

	_ = controller.NewController(rpcWaterAuthConsumer, rpcHk4eGatewayConsumer)

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			rpcWaterAuthConsumer.CloseRpcConsumer()
			rpcHk4eGatewayConsumer.CloseRpcConsumer()
			httpProvider.CloseHttpProvider()
			logger.LOG.Info("gm hk4e exit")
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
