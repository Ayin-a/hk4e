package main

import (
	"flswld.com/common/config"
	"flswld.com/logger"
	"os"
	"os/signal"
	"syscall"
	"time"
	"wind/air"
	"wind/entity"
	"wind/proxy"
)

func main() {
	filePath := "./application.toml"
	config.InitConfig(filePath)

	logger.InitLogger()
	logger.LOG.Info("wind start")

	svcAddrMap := new(entity.AddressMap)
	svcAddrMap.Map = make(map[string][]string)

	_ = air.NewAir(svcAddrMap)

	_ = proxy.NewProxy(svcAddrMap)

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			logger.LOG.Info("wind exit")
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
