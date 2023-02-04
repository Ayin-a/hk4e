package app

import (
	"context"
	_ "net/http/pprof"
	"os"
	"os/signal"
	"sync/atomic"
	"syscall"
	"time"

	"hk4e/common/config"
	"hk4e/common/constant"
	"hk4e/common/mq"
	"hk4e/common/rpc"
	"hk4e/gdconf"
	"hk4e/gs/dao"
	"hk4e/gs/game"
	"hk4e/gs/service"
	"hk4e/node/api"
	"hk4e/pkg/logger"

	"github.com/nats-io/nats.go"
)

var APPID string
var GSID uint32

func Run(ctx context.Context, configFile string) error {
	config.InitConfig(configFile)

	// natsrpc client
	client, err := rpc.NewClient()
	if err != nil {
		return err
	}

	// 注册到节点服务器
	rsp, err := client.Discovery.RegisterServer(context.TODO(), &api.RegisterServerReq{
		ServerType: api.GS,
	})
	if err != nil {
		return err
	}
	APPID = rsp.GetAppId()
	go func() {
		ticker := time.NewTicker(time.Second * 15)
		for {
			<-ticker.C
			_, err := client.Discovery.KeepaliveServer(context.TODO(), &api.KeepaliveServerReq{
				ServerType: api.GS,
				AppId:      APPID,
				LoadCount:  uint32(atomic.LoadInt32(&game.ONLINE_PLAYER_NUM)),
			})
			if err != nil {
				logger.Error("keepalive error: %v", err)
			}
		}
	}()
	GSID = rsp.GetGsId()
	defer func() {
		_, _ = client.Discovery.CancelServer(context.TODO(), &api.CancelServerReq{
			ServerType: api.GS,
			AppId:      APPID,
		})
	}()
	mainGsAppid, err := client.Discovery.GetMainGameServerAppId(context.TODO(), &api.NullMsg{})
	if err != nil {
		return err
	}

	logger.InitLogger("gs_" + APPID)
	logger.Warn("gs start, appid: %v, gsid: %v", APPID, GSID)

	constant.InitConstant()
	gdconf.InitGameDataConfig()

	db, err := dao.NewDao()
	if err != nil {
		return err
	}
	defer db.CloseDao()

	messageQueue := mq.NewMessageQueue(api.GS, APPID, client)
	defer messageQueue.Close()

	gameManager := game.NewGameManager(db, messageQueue, GSID, APPID, mainGsAppid.AppId)
	defer gameManager.Close()

	// natsrpc server
	conn, err := nats.Connect(config.CONF.MQ.NatsUrl)
	if err != nil {
		logger.Error("connect nats error: %v", err)
		return err
	}
	defer conn.Close()
	s, err := service.NewService(conn)
	if err != nil {
		return err
	}
	defer s.Close()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		select {
		case <-ctx.Done():
			return nil
		case s := <-c:
			logger.Warn("get a signal %s", s.String())
			switch s {
			case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:
				logger.Warn("gs exit, appid: %v", APPID)
				time.Sleep(time.Second)
				return nil
			case syscall.SIGHUP:
			default:
				return nil
			}
		}
	}
}
