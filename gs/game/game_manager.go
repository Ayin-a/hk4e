package game

import (
	pb "google.golang.org/protobuf/proto"
	"hk4e/gate/entity/gm"
	"hk4e/gate/kcp"
	"hk4e/gs/dao"
	"hk4e/pkg/alg"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

type GameManager struct {
	dao          *dao.Dao
	netMsgInput  chan *cmd.NetMsg
	netMsgOutput chan *cmd.NetMsg
	snowflake    *alg.SnowflakeWorker
	// 本地事件队列管理器
	localEventManager *LocalEventManager
	// 接口路由管理器
	routeManager *RouteManager
	// 用户管理器
	userManager *UserManager
	// 世界管理器
	worldManager *WorldManager
	// 游戏服务器定时帧管理器
	tickManager *TickManager
	// 命令管理器
	commandManager *CommandManager
}

func NewGameManager(dao *dao.Dao, netMsgInput chan *cmd.NetMsg, netMsgOutput chan *cmd.NetMsg) (r *GameManager) {
	r = new(GameManager)
	r.dao = dao
	r.netMsgInput = netMsgInput
	r.netMsgOutput = netMsgOutput
	r.snowflake = alg.NewSnowflakeWorker(1)
	r.localEventManager = NewLocalEventManager(r)
	r.routeManager = NewRouteManager(r)
	r.userManager = NewUserManager(dao, r.localEventManager.localEventChan)
	r.worldManager = NewWorldManager(r.snowflake)
	r.tickManager = NewTickManager(r)
	r.commandManager = NewCommandManager(r)

	return r
}

func (g *GameManager) Start() {
	g.routeManager.InitRoute()
	g.userManager.StartAutoSaveUser()
	go func() {
		for {
			select {
			case netMsg := <-g.netMsgOutput:
				// 接收客户端消息
				g.routeManager.RouteHandle(netMsg)
			case <-g.tickManager.ticker.C:
				// 游戏服务器定时帧
				g.tickManager.OnGameServerTick()
			case localEvent := <-g.localEventManager.localEventChan:
				// 处理本地事件
				g.localEventManager.LocalEventHandle(localEvent)
			case command := <-g.commandManager.commandTextInput:
				// 处理传入的命令 (普通玩家 GM命令)
				g.commandManager.HandleCommand(command)
			}
		}
	}()
}

func (g *GameManager) Stop() {
	// 保存玩家数据
	g.userManager.SaveUser()

	//g.worldManager.worldStatic.SaveTerrain()
}

// 发送消息给客户端
func (g *GameManager) SendMsg(cmdId uint16, userId uint32, clientSeq uint32, payloadMsg pb.Message) {
	if userId < 100000000 {
		return
	}
	netMsg := new(cmd.NetMsg)
	netMsg.UserId = userId
	netMsg.EventId = cmd.NormalMsg
	netMsg.CmdId = cmdId
	netMsg.ClientSeq = clientSeq
	// 在这里直接序列化成二进制数据 防止发送的消息内包含各种游戏数据指针 而造成并发读写的问题
	payloadMessageData, err := pb.Marshal(payloadMsg)
	if err != nil {
		logger.LOG.Error("parse payload msg to bin error: %v", err)
		return
	}
	netMsg.PayloadMessageData = payloadMessageData
	g.netMsgInput <- netMsg
}

func (g *GameManager) ReconnectPlayer(userId uint32) {
	g.SendMsg(cmd.ClientReconnectNotify, userId, 0, new(proto.ClientReconnectNotify))
}

func (g *GameManager) DisconnectPlayer(userId uint32) {
	g.SendMsg(cmd.ServerDisconnectClientNotify, userId, 0, new(proto.ServerDisconnectClientNotify))
}

// 踢出玩家
func (g *GameManager) KickPlayer(userId uint32) {
	info := new(gm.KickPlayerInfo)
	info.UserId = userId
	// 客户端提示信息为服务器断开连接
	info.Reason = uint32(kcp.EnetServerKick)
	var result bool
	ok := false
	//ok := r.hk4eGatewayConsumer.CallFunction("RpcManager", "KickPlayer", &info, &result)
	if ok == true && result == true {
		return
	}
	return
}
