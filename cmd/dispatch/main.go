package main

import (
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

func main() {
	filePath := "./application.toml"
	config.InitConfig(filePath)

	logger.InitLogger("dispatch", config.CONF.Logger)
	logger.LOG.Info("dispatch start")

	db := dao.NewDao()

	_ = controller.NewController(db)

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			logger.LOG.Info("dispatch exit")
			db.CloseDao()
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
