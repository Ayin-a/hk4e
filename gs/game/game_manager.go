package game

import (
	"time"

	"hk4e/common/mq"
	"hk4e/gate/kcp"
	"hk4e/gs/dao"
	"hk4e/gs/model"
	"hk4e/pkg/alg"
	"hk4e/pkg/logger"
	"hk4e/pkg/reflection"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
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
	messageQueue *mq.MessageQueue
	snowflake    *alg.SnowflakeWorker
}

func NewGameManager(dao *dao.Dao, messageQueue *mq.MessageQueue) (r *GameManager) {
	r = new(GameManager)
	r.dao = dao
	r.messageQueue = messageQueue
	r.snowflake = alg.NewSnowflakeWorker(1)
	GAME_MANAGER = r
	LOCAL_EVENT_MANAGER = NewLocalEventManager()
	ROUTE_MANAGER = NewRouteManager()
	USER_MANAGER = NewUserManager(dao)
	WORLD_MANAGER = NewWorldManager(r.snowflake)
	TICK_MANAGER = NewTickManager()
	COMMAND_MANAGER = NewCommandManager()
	r.run()
	return r
}

func (g *GameManager) run() {
	ROUTE_MANAGER.InitRoute()
	USER_MANAGER.StartAutoSaveUser()
	go g.gameMainLoopD()
}

func (g *GameManager) gameMainLoopD() {
	for times := 1; times <= 1000; times++ {
		logger.Warn("start game main loop, times: %v", times)
		g.gameMainLoop()
		logger.Warn("game main loop stop")
	}
}

func (g *GameManager) gameMainLoop() {
	defer func() {
		if err := recover(); err != nil {
			logger.Error("!!! GAME MAIN LOOP PANIC !!!")
			logger.Error("error: %v", err)
			logger.Error("stack: %v", logger.Stack())
		}
	}()
	intervalTime := time.Second.Nanoseconds() * 60
	lastTime := time.Now().UnixNano()
	routeCost := int64(0)
	tickCost := int64(0)
	localEventCost := int64(0)
	commandCost := int64(0)
	for {
		now := time.Now().UnixNano()
		if now-lastTime > intervalTime {
			routeCost /= 1e6
			tickCost /= 1e6
			localEventCost /= 1e6
			commandCost /= 1e6
			logger.Info("[GAME MAIN LOOP] cpu time cost detail, routeCost: %vms, tickCost: %vms, localEventCost: %vms, commandCost: %vms",
				routeCost, tickCost, localEventCost, commandCost)
			totalCost := routeCost + tickCost + localEventCost + commandCost
			logger.Info("[GAME MAIN LOOP] cpu time cost percent, routeCost: %v%%, tickCost: %v%%, localEventCost: %v%%, commandCost: %v%%",
				float32(routeCost)/float32(totalCost)*100.0,
				float32(tickCost)/float32(totalCost)*100.0,
				float32(localEventCost)/float32(totalCost)*100.0,
				float32(commandCost)/float32(totalCost)*100.0)
			logger.Info("[GAME MAIN LOOP] total cpu time cost detail, totalCost: %vms",
				totalCost)
			logger.Info("[GAME MAIN LOOP] total cpu time cost percent, totalCost: %v%%",
				float32(totalCost)/float32(intervalTime/1e6)*100.0)
			lastTime = now
			routeCost = 0
			tickCost = 0
			localEventCost = 0
			commandCost = 0
		}
		select {
		case netMsg := <-g.messageQueue.GetNetMsg():
			// 接收客户端消息
			start := time.Now().UnixNano()
			ROUTE_MANAGER.RouteHandle(netMsg)
			end := time.Now().UnixNano()
			routeCost += end - start
		case <-TICK_MANAGER.ticker.C:
			// 游戏服务器定时帧
			start := time.Now().UnixNano()
			TICK_MANAGER.OnGameServerTick()
			end := time.Now().UnixNano()
			tickCost += end - start
		case localEvent := <-LOCAL_EVENT_MANAGER.localEventChan:
			// 处理本地事件
			start := time.Now().UnixNano()
			LOCAL_EVENT_MANAGER.LocalEventHandle(localEvent)
			end := time.Now().UnixNano()
			localEventCost += end - start
		case command := <-COMMAND_MANAGER.commandTextInput:
			// 处理传入的命令 (普通玩家 GM命令)
			start := time.Now().UnixNano()
			COMMAND_MANAGER.HandleCommand(command)
			end := time.Now().UnixNano()
			commandCost += end - start
		}
	}
}

func (g *GameManager) Stop() {
	// 下线玩家
	userList := USER_MANAGER.GetAllOnlineUserList()
	for _, player := range userList {
		g.DisconnectPlayer(player.PlayerID, kcp.EnetServerShutdown)
	}
	time.Sleep(time.Second * 5)
	// 保存玩家数据
	LOCAL_EVENT_MANAGER.localEventChan <- &LocalEvent{
		EventId: RunUserCopyAndSave,
	}
	time.Sleep(time.Second * 5)
}

// SendMsg 发送消息给客户端
func (g *GameManager) SendMsg(cmdId uint16, userId uint32, clientSeq uint32, payloadMsg pb.Message) {
	if userId < 100000000 || payloadMsg == nil {
		return
	}
	gameMsg := new(mq.GameMsg)
	gameMsg.UserId = userId
	gameMsg.CmdId = cmdId
	gameMsg.ClientSeq = clientSeq
	// 在这里直接序列化成二进制数据 防止发送的消息内包含各种游戏数据指针 而造成并发读写的问题
	payloadMessageData, err := pb.Marshal(payloadMsg)
	if err != nil {
		logger.Error("parse payload msg to bin error: %v", err)
		return
	}
	gameMsg.PayloadMessageData = payloadMessageData
	g.messageQueue.SendToGate("1", &mq.NetMsg{
		MsgType: mq.MsgTypeGame,
		EventId: mq.NormalMsg,
		GameMsg: gameMsg,
	})
}

// CommonRetError 通用返回错误码
func (g *GameManager) CommonRetError(cmdId uint16, player *model.Player, rsp pb.Message, retCode ...proto.Retcode) {
	if rsp == nil {
		return
	}
	ret := int32(proto.Retcode_RET_FAIL)
	if len(retCode) == 0 {
		ret = int32(proto.Retcode_RET_SVR_ERROR)
	} else if len(retCode) == 1 {
		ret = int32(retCode[0])
	} else {
		return
	}
	ok := reflection.SetStructFieldValue(rsp, "Retcode", ret)
	if !ok {
		return
	}
	logger.Debug("send common error: %v", rsp)
	g.SendMsg(cmdId, player.PlayerID, player.ClientSeq, rsp)
}

// CommonRetSucc 通用返回成功
func (g *GameManager) CommonRetSucc(cmdId uint16, player *model.Player, rsp pb.Message) {
	if rsp == nil {
		return
	}
	ok := reflection.SetStructFieldValue(rsp, "Retcode", int32(proto.Retcode_RET_SUCC))
	if !ok {
		return
	}
	g.SendMsg(cmdId, player.PlayerID, player.ClientSeq, rsp)
}

func (g *GameManager) SendToWorldA(world *World, cmdId uint16, seq uint32, msg pb.Message) {
	for _, v := range world.playerMap {
		GAME_MANAGER.SendMsg(cmdId, v.PlayerID, seq, msg)
	}
}

func (g *GameManager) SendToWorldAEC(world *World, cmdId uint16, seq uint32, msg pb.Message, uid uint32) {
	for _, v := range world.playerMap {
		if uid == v.PlayerID {
			continue
		}
		GAME_MANAGER.SendMsg(cmdId, v.PlayerID, seq, msg)
	}
}

func (g *GameManager) SendToWorldH(world *World, cmdId uint16, seq uint32, msg pb.Message) {
	GAME_MANAGER.SendMsg(cmdId, world.owner.PlayerID, seq, msg)
}

func (g *GameManager) ReconnectPlayer(userId uint32) {
	g.SendMsg(cmd.ClientReconnectNotify, userId, 0, new(proto.ClientReconnectNotify))
}

func (g *GameManager) DisconnectPlayer(userId uint32, reason uint32) {
	g.messageQueue.SendToGate("1", &mq.NetMsg{
		MsgType: mq.MsgTypeConnCtrl,
		EventId: mq.KickPlayerNotify,
		ConnCtrlMsg: &mq.ConnCtrlMsg{
			KickUserId: userId,
			KickReason: reason,
		},
	})
	// g.SendMsg(cmd.ServerDisconnectClientNotify, userId, 0, new(proto.ServerDisconnectClientNotify))
}
