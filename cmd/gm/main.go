package main

import (
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	"hk4e/gm/controller"
	"hk4e/pkg/logger"
)

func main() {
	filePath := "./application.toml"
	config.InitConfig(filePath)

	logger.InitLogger("gm", config.CONF.Logger)
	logger.LOG.Info("gm start")

	_ = controller.NewController()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			logger.LOG.Info("gm exit")
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
