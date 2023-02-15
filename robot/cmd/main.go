package main

import (
	"encoding/base64"
	"os"
	"os/signal"
	"strconv"
	"syscall"
	"time"

	"hk4e/common/config"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
	"hk4e/robot/login"
)

func main() {
	config.InitConfig("application.toml")
	logger.InitLogger("robot")

	config.CONF.Hk4e.ClientProtoProxyEnable = false

	// // DPDK模式需开启
	// err := engine.InitEngine("00:0C:29:3E:3E:DF", "192.168.199.199", "255.255.255.0", "192.168.199.1")
	// if err != nil {
	// 	panic(err)
	// }
	// engine.RunEngine([]int{0, 1, 2, 3}, 4, 1, "0.0.0.0")
	// time.Sleep(time.Second * 30)

	for i := 0; i < 1; i++ {
		go runRobot("test_" + strconv.Itoa(i))
	}

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT)
	for {
		s := <-c
		switch s {
		case syscall.SIGQUIT, syscall.SIGTERM, syscall.SIGINT:

			// // DPDK模式需开启
			// engine.StopEngine()

			time.Sleep(time.Second)
			return
		case syscall.SIGHUP:
		default:
			return
		}
	}
}

func runRobot(name string) {
	logger.Info("robot start, name: %v", name)
	dispatchInfo, err := login.GetDispatchInfo("https://hk4e.flswld.com",
		"https://hk4e.flswld.com/query_cur_region",
		"",
		"?version=OSRELWin3.2.0&key_id=5",
		"5")
	if err != nil {
		logger.Error("get dispatch info error: %v", err)
		return
	}
	accountInfo, err := login.AccountLogin("https://hk4e.flswld.com", name+"@@12345678", base64.StdEncoding.EncodeToString([]byte{0x00}))
	if err != nil {
		logger.Error("account login error: %v", err)
		return
	}
	session, err := login.GateLogin(dispatchInfo, accountInfo, "5")
	if err != nil {
		logger.Error("gate login error: %v", err)
		return
	}
	session.SendMsg(cmd.PlayerLoginReq, &proto.PlayerLoginReq{
		AccountUid: strconv.Itoa(int(accountInfo.AccountId)),
		Token:      accountInfo.ComboToken,
	})
	ticker := time.NewTicker(time.Second)
	pingSeq := uint32(0)
	for {
		select {
		case <-ticker.C:
			pingSeq++
			// 通过这个接口发消息给服务器
			session.SendMsg(cmd.PingReq, &proto.PingReq{
				ClientTime: uint32(time.Now().UnixMilli()),
				Seq:        pingSeq,
			})
		case protoMsg := <-session.RecvChan:
			// 从这个管道接收服务器发来的消息
			logger.Debug("recv protoMsg: %v", protoMsg)
			switch protoMsg.CmdId {
			case cmd.DoSetPlayerBornDataNotify:
				session.SendMsg(cmd.SetPlayerBornDataReq, &proto.SetPlayerBornDataReq{
					AvatarId: 10000007,
					NickName: name,
				})
			case cmd.PlayerEnterSceneNotify:
				ntf := protoMsg.PayloadMessage.(*proto.PlayerEnterSceneNotify)
				session.SendMsg(cmd.EnterSceneReadyReq, &proto.EnterSceneReadyReq{EnterSceneToken: ntf.EnterSceneToken})
				session.SendMsg(cmd.SceneInitFinishReq, &proto.SceneInitFinishReq{EnterSceneToken: ntf.EnterSceneToken})
				session.SendMsg(cmd.EnterSceneDoneReq, &proto.EnterSceneDoneReq{EnterSceneToken: ntf.EnterSceneToken})
				session.SendMsg(cmd.PostEnterSceneReq, &proto.PostEnterSceneReq{EnterSceneToken: ntf.EnterSceneToken})
			}
		case <-session.DeadEvent:
			logger.Info("robot exit, name: %v", name)
			return
		}
	}
}
