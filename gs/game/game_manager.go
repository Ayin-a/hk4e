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

var GAME_MANAGER *GameManager = nil
var LOCAL_EVENT_MANAGER *LocalEventManager = nil
var ROUTE_MANAGER *RouteManager = nil
var USER_MANAGER *UserManager = nil
var WORLD_MANAGER *WorldManager = nil
var TICK_MANAGER *TickManager = nil
var COMMAND_MANAGER *CommandManager = nil

type GameManager struct {
	dao          *dao.Dao
	netMsgInput  chan *cmd.NetMsg
	netMsgOutput chan *cmd.NetMsg
	snowflake    *alg.SnowflakeWorker
}

func NewGameManager(dao *dao.Dao, netMsgInput chan *cmd.NetMsg, netMsgOutput chan *cmd.NetMsg) (r *GameManager) {
	r = new(GameManager)
	r.dao = dao
	r.netMsgInput = netMsgInput
	r.netMsgOutput = netMsgOutput
	r.snowflake = alg.NewSnowflakeWorker(1)
	GAME_MANAGER = r
	LOCAL_EVENT_MANAGER = NewLocalEventManager()
	ROUTE_MANAGER = NewRouteManager()
	USER_MANAGER = NewUserManager(dao, LOCAL_EVENT_MANAGER.localEventChan)
	WORLD_MANAGER = NewWorldManager(r.snowflake)
	TICK_MANAGER = NewTickManager()
	COMMAND_MANAGER = NewCommandManager()
	return r
}

func (g *GameManager) Start() {
	ROUTE_MANAGER.InitRoute()
	USER_MANAGER.StartAutoSaveUser()
	go func() {
		for {
			select {
			case netMsg := <-g.netMsgOutput:
				// 接收客户端消息
				ROUTE_MANAGER.RouteHandle(netMsg)
			case <-TICK_MANAGER.ticker.C:
				// 游戏服务器定时帧
				TICK_MANAGER.OnGameServerTick()
			case localEvent := <-LOCAL_EVENT_MANAGER.localEventChan:
				// 处理本地事件
				LOCAL_EVENT_MANAGER.LocalEventHandle(localEvent)
			case command := <-COMMAND_MANAGER.commandTextInput:
				// 处理传入的命令 (普通玩家 GM命令)
				COMMAND_MANAGER.HandleCommand(command)
			}
		}
	}()
}

func (g *GameManager) Stop() {
	// 保存玩家数据
	USER_MANAGER.SaveUser()

	//g.worldManager.worldStatic.SaveTerrain()
}

// SendMsg 发送消息给客户端
func (g *GameManager) SendMsg(cmdId uint16, userId uint32, clientSeq uint32, payloadMsg pb.Message) {
	if userId < 100000000 || payloadMsg == nil {
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

// KickPlayer 踢出玩家
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
