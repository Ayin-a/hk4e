package main

import (
	"net/http"
	_ "net/http/pprof"
	"os"
	"os/signal"
	"syscall"
	"time"

	"hk4e/common/config"
	"hk4e/gate/forward"
	"hk4e/gate/mq"
	"hk4e/gate/net"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"

	"github.com/arl/statsviz"
)

func main() {
	filePath := "./application.toml"
	config.InitConfig(filePath)

	logger.InitLogger("gate", config.CONF.Logger)
	logger.LOG.Info("gate start")

	go func() {
		// 性能检测
		err := statsviz.RegisterDefault()
		if err != nil {
			logger.LOG.Error("statsviz init error: %v", err)
		}
		err = http.ListenAndServe("0.0.0.0:2345", nil)
		if err != nil {
			logger.LOG.Error("perf debug http start error: %v", err)
		}
	}()

	kcpEventInput := make(chan *net.KcpEvent)
	kcpEventOutput := make(chan *net.KcpEvent)
	protoMsgInput := make(chan *net.ProtoMsg, 10000)
	protoMsgOutput := make(chan *net.ProtoMsg, 10000)
	netMsgInput := make(chan *cmd.NetMsg, 10000)
	netMsgOutput := make(chan *cmd.NetMsg, 10000)

	connectManager := net.NewKcpConnectManager(protoMsgInput, protoMsgOutput, kcpEventInput, kcpEventOutput)
	connectManager.Start()

	forwardManager := forward.NewForwardManager(protoMsgInput, protoMsgOutput, kcpEventInput, kcpEventOutput, netMsgInput, netMsgOutput)
	forwardManager.Start()

	messageQueue := mq.NewMessageQueue(netMsgInput, netMsgOutput)
	messageQueue.Start()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			logger.LOG.Info("gate exit")
			messageQueue.Close()
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
