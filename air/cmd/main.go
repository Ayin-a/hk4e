package main

import (
	"air/controller"
	"air/service"
	"flswld.com/common/config"
	"flswld.com/logger"
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
	logger.LOG.Info("air start")

	go func() {
		// 性能检测
		err := statsviz.RegisterDefault()
		if err != nil {
			logger.LOG.Error("statsviz init error: %v", err)
		}
		err = http.ListenAndServe("0.0.0.0:1234", nil)
		if err != nil {
			logger.LOG.Error("perf debug http start error: %v", err)
		}
	}()

	svc := service.NewService()

	_ = controller.NewController(svc)

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			logger.LOG.Info("air exit")
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
