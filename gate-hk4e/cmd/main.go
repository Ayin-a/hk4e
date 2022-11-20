package main

import (
	"flswld.com/common/config"
	"flswld.com/gate-hk4e-api/proto"
	"flswld.com/light"
	"flswld.com/logger"
	"gate-hk4e/controller"
	"gate-hk4e/dao"
	"gate-hk4e/forward"
	"gate-hk4e/mq"
	"gate-hk4e/net"
	"gate-hk4e/rpc"
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
	logger.LOG.Info("gate hk4e start")

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

	db := dao.NewDao()

	// 用户服务
	rpcUserConsumer := light.NewRpcConsumer("annie-user-app")

	_ = controller.NewController(db, rpcUserConsumer)

	kcpEventInput := make(chan *net.KcpEvent)
	kcpEventOutput := make(chan *net.KcpEvent)
	protoMsgInput := make(chan *net.ProtoMsg, 10000)
	protoMsgOutput := make(chan *net.ProtoMsg, 10000)
	netMsgInput := make(chan *proto.NetMsg, 10000)
	netMsgOutput := make(chan *proto.NetMsg, 10000)

	connectManager := net.NewKcpConnectManager(protoMsgInput, protoMsgOutput, kcpEventInput, kcpEventOutput)
	connectManager.Start()

	forwardManager := forward.NewForwardManager(db, protoMsgInput, protoMsgOutput, kcpEventInput, kcpEventOutput, netMsgInput, netMsgOutput)
	forwardManager.Start()

	gameServiceConsumer := light.NewRpcConsumer("game-hk4e-app")

	rpcManager := rpc.NewRpcManager(forwardManager)
	rpcMsgProvider := light.NewRpcProvider(rpcManager)

	messageQueue := mq.NewMessageQueue(netMsgInput, netMsgOutput)
	messageQueue.Start()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		logger.LOG.Info("get a signal %s", s.String())
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
			logger.LOG.Info("gate hk4e exit")
			messageQueue.Close()
			rpcMsgProvider.CloseRpcProvider()
			gameServiceConsumer.CloseRpcConsumer()
			rpcUserConsumer.CloseRpcConsumer()
			db.CloseDao()
			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}
