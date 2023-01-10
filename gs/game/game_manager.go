package game

import (
	"encoding/json"
	"reflect"
	"time"

	appConfig "hk4e/common/config"
	"hk4e/common/mq"
	"hk4e/gate/client_proto"
	"hk4e/gate/kcp"
	"hk4e/gdconf"
	"hk4e/gs/dao"
	"hk4e/gs/model"
	"hk4e/pkg/alg"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/pkg/reflection"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

const (
	AiBaseUid      = 10000
	AiName         = "GM"
	AiSign         = "快捷指令"
	BigWorldAiUid  = 100
	BigWorldAiName = "小可爱"
	BigWorldAiSign = "UnKownOwO"
)

var GAME_MANAGER *GameManager = nil
var LOCAL_EVENT_MANAGER *LocalEventManager = nil
var ROUTE_MANAGER *RouteManager = nil
var USER_MANAGER *UserManager = nil
var WORLD_MANAGER *WorldManager = nil
var TICK_MANAGER *TickManager = nil
var COMMAND_MANAGER *CommandManager = nil
var GCG_MANAGER *GCGManager = nil
var MESSAGE_QUEUE *mq.MessageQueue

var SELF *model.Player

type GameManager struct {
	dao                       *dao.Dao
	snowflake                 *alg.SnowflakeWorker
	clientCmdProtoMap         *client_proto.ClientCmdProtoMap
	clientCmdProtoMapRefValue reflect.Value
	gsId                      uint32
	gsAppid                   string
	mainGsAppid               string
	ai                        *model.Player // 本服的Ai玩家对象
}

func NewGameManager(dao *dao.Dao, messageQueue *mq.MessageQueue, gsId uint32, gsAppid string, mainGsAppid string) (r *GameManager) {
	r = new(GameManager)
	if appConfig.CONF.Hk4e.ClientProtoProxyEnable {
		// 反射调用的方法在启动时测试是否正常防止中途panic
		r.GetClientProtoObjByName("PingReq")
	}
	r.dao = dao
	MESSAGE_QUEUE = messageQueue
	r.snowflake = alg.NewSnowflakeWorker(int64(gsId))
	if appConfig.CONF.Hk4e.ClientProtoProxyEnable {
		r.clientCmdProtoMap = client_proto.NewClientCmdProtoMap()
		r.clientCmdProtoMapRefValue = reflect.ValueOf(r.clientCmdProtoMap)
	}
	r.gsId = gsId
	r.gsAppid = gsAppid
	r.mainGsAppid = mainGsAppid
	GAME_MANAGER = r
	LOCAL_EVENT_MANAGER = NewLocalEventManager()
	ROUTE_MANAGER = NewRouteManager()
	USER_MANAGER = NewUserManager(dao)
	WORLD_MANAGER = NewWorldManager(r.snowflake)
	TICK_MANAGER = NewTickManager()
	COMMAND_MANAGER = NewCommandManager()
	GCG_MANAGER = NewGCGManager()
	// 创建本服的Ai世界
	uid := AiBaseUid + gsId
	name := AiName
	sign := AiSign
	if r.IsMainGs() {
		// 约定MainGameServer的Ai的AiWorld叫BigWorld
		// 此世界会出现在全服的在线玩家列表中 所有的玩家都可以进入到此世界里来
		uid = BigWorldAiUid
		name = BigWorldAiName
		sign = BigWorldAiSign
	}
	r.ai = r.CreateRobot(uid, name, sign)
	WORLD_MANAGER.InitAiWorld(r.ai)
	COMMAND_MANAGER.SetSystem(r.ai)
	USER_MANAGER.SetRemoteUserOnlineState(BigWorldAiUid, true, mainGsAppid)
	if r.IsMainGs() {
		// TODO 测试
		for i := 1; i < 8; i++ {
			uid := 1000000 + uint32(i)
			avatarId := uint32(0)
			for _, avatarData := range gdconf.CONF.AvatarDataMap {
				avatarId = uint32(avatarData.AvatarId)
				break
			}
			robot := r.CreateRobot(uid, random.GetRandomStr(8), random.GetRandomStr(10))
			r.AddUserAvatar(uid, avatarId)
			r.SetUpAvatarTeamReq(robot, &proto.SetUpAvatarTeamReq{
				TeamId:             1,
				AvatarTeamGuidList: []uint64{robot.AvatarMap[avatarId].Guid},
				CurAvatarGuid:      robot.AvatarMap[avatarId].Guid,
			})
			robot.Pos.X += random.GetRandomFloat64(0.0, 1.0)
			robot.Pos.Z += random.GetRandomFloat64(0.0, 1.0)
			r.UserWorldAddPlayer(WORLD_MANAGER.GetAiWorld(), robot)
		}
	}
	r.run()
	return r
}

func (g *GameManager) GetGsId() uint32 {
	return g.gsId
}

func (g *GameManager) GetGsAppid() string {
	return g.gsAppid
}

func (g *GameManager) GetMainGsAppid() string {
	return g.mainGsAppid
}

func (g *GameManager) IsMainGs() bool {
	// 目前的实现逻辑是当前GsId最小的Gs做MainGs
	return g.gsAppid == g.mainGsAppid
}

// GetAi 获取本服的Ai玩家对象
func (g *GameManager) GetAi() *model.Player {
	return g.ai
}

func (g *GameManager) CreateRobot(uid uint32, name string, sign string) *model.Player {
	GAME_MANAGER.OnRegOk(false, &proto.SetPlayerBornDataReq{AvatarId: 10000007, NickName: name}, uid, 0, "")
	GAME_MANAGER.ServerAppidBindNotify(uid, "", 0)
	robot := USER_MANAGER.GetOnlineUser(uid)
	robot.DbState = model.DbNormal
	robot.SceneLoadState = model.SceneEnterDone
	robot.Signature = sign
	return robot
}

func (g *GameManager) run() {
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
	// panic捕获
	defer func() {
		if err := recover(); err != nil {
			logger.Error("!!! GAME MAIN LOOP PANIC !!!")
			logger.Error("error: %v", err)
			logger.Error("stack: %v", logger.Stack())
			motherfuckerPlayerInfo, _ := json.Marshal(SELF)
			logger.Error("the motherfucker player info: %v", motherfuckerPlayerInfo)
			if SELF != nil {
				GAME_MANAGER.DisconnectPlayer(SELF.PlayerID, kcp.EnetServerKick)
			}
		}
	}()
	intervalTime := time.Second.Nanoseconds() * 60
	lastTime := time.Now().UnixNano()
	routeCost := int64(0)
	tickCost := int64(0)
	localEventCost := int64(0)
	commandCost := int64(0)
	for {
		// 消耗CPU时间性能统计
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
		case netMsg := <-MESSAGE_QUEUE.GetNetMsg():
			// 接收客户端消息
			start := time.Now().UnixNano()
			ROUTE_MANAGER.RouteHandle(netMsg)
			end := time.Now().UnixNano()
			routeCost += end - start
		case <-TICK_MANAGER.globalTick.C:
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
			// 处理传入的命令(普通玩家 GM命令)
			start := time.Now().UnixNano()
			COMMAND_MANAGER.HandleCommand(command)
			end := time.Now().UnixNano()
			commandCost += end - start
		}
	}
}

var EXIT_SAVE_FIN_CHAN chan bool

func (g *GameManager) Close() {
	// 保存玩家数据
	onlinePlayerMap := USER_MANAGER.GetAllOnlineUserList()
	saveUserIdList := make([]uint32, 0, len(onlinePlayerMap))
	for userId := range onlinePlayerMap {
		saveUserIdList = append(saveUserIdList, userId)
	}
	EXIT_SAVE_FIN_CHAN = make(chan bool)
	LOCAL_EVENT_MANAGER.localEventChan <- &LocalEvent{
		EventId: ExitRunUserCopyAndSave,
		Msg:     saveUserIdList,
	}
	<-EXIT_SAVE_FIN_CHAN
	// 单纯的告诉网关下线玩家
	userList := USER_MANAGER.GetAllOnlineUserList()
	for _, player := range userList {
		g.DisconnectPlayer(player.PlayerID, kcp.EnetServerShutdown)
	}
	time.Sleep(time.Second)
}

// SendMsgToGate 发送消息给客户端 指定网关
func (g *GameManager) SendMsgToGate(cmdId uint16, userId uint32, clientSeq uint32, gateAppId string, payloadMsg pb.Message) {
	if userId < 100000000 {
		return
	}
	if payloadMsg == nil {
		logger.Error("payload msg is nil, stack: %v", logger.Stack())
		return
	}
	gameMsg := &mq.GameMsg{
		UserId:         userId,
		CmdId:          cmdId,
		ClientSeq:      clientSeq,
		PayloadMessage: payloadMsg,
	}
	MESSAGE_QUEUE.SendToGate(gateAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeGame,
		EventId: mq.NormalMsg,
		GameMsg: gameMsg,
	})
}

// SendMsg 发送消息给客户端
func (g *GameManager) SendMsg(cmdId uint16, userId uint32, clientSeq uint32, payloadMsg pb.Message) {
	if userId < 100000000 {
		return
	}
	if payloadMsg == nil {
		logger.Error("payload msg is nil, stack: %v", logger.Stack())
		return
	}
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player not exist, uid: %v, stack: %v", userId, logger.Stack())
		return
	}
	gameMsg := new(mq.GameMsg)
	gameMsg.UserId = userId
	gameMsg.CmdId = cmdId
	gameMsg.ClientSeq = clientSeq
	// 在这里直接序列化成二进制数据 防止发送的消息内包含各种游戏数据指针 而造成并发读写的问题
	payloadMessageData, err := pb.Marshal(payloadMsg)
	if err != nil {
		logger.Error("parse payload msg to bin error: %v, stack: %v", err, logger.Stack())
		return
	}
	gameMsg.PayloadMessageData = payloadMessageData
	MESSAGE_QUEUE.SendToGate(player.GateAppId, &mq.NetMsg{
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

// SendToWorldA 给世界内所有玩家发消息
func (g *GameManager) SendToWorldA(world *World, cmdId uint16, seq uint32, msg pb.Message) {
	for _, v := range world.GetAllPlayer() {
		GAME_MANAGER.SendMsg(cmdId, v.PlayerID, seq, msg)
	}
}

// SendToWorldAEC 给世界内除某玩家(一般是自己)以外的所有玩家发消息
func (g *GameManager) SendToWorldAEC(world *World, cmdId uint16, seq uint32, msg pb.Message, uid uint32) {
	for _, v := range world.GetAllPlayer() {
		if uid == v.PlayerID {
			continue
		}
		GAME_MANAGER.SendMsg(cmdId, v.PlayerID, seq, msg)
	}
}

// SendToWorldH 给世界房主发消息
func (g *GameManager) SendToWorldH(world *World, cmdId uint16, seq uint32, msg pb.Message) {
	GAME_MANAGER.SendMsg(cmdId, world.owner.PlayerID, seq, msg)
}

func (g *GameManager) ReconnectPlayer(userId uint32) {
	g.SendMsg(cmd.ClientReconnectNotify, userId, 0, new(proto.ClientReconnectNotify))
}

func (g *GameManager) DisconnectPlayer(userId uint32, reason uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		return
	}
	MESSAGE_QUEUE.SendToGate(player.GateAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeConnCtrl,
		EventId: mq.KickPlayerNotify,
		ConnCtrlMsg: &mq.ConnCtrlMsg{
			KickUserId: userId,
			KickReason: reason,
		},
	})
	// g.SendMsg(cmd.ServerDisconnectClientNotify, userId, 0, new(proto.ServerDisconnectClientNotify))
}

func (g *GameManager) GetClientProtoObjByName(protoObjName string) pb.Message {
	fn := g.clientCmdProtoMapRefValue.MethodByName("GetClientProtoObjByName")
	ret := fn.Call([]reflect.Value{reflect.ValueOf(protoObjName)})
	obj := ret[0].Interface()
	if obj == nil {
		logger.Error("try to get a not exist proto obj, protoObjName: %v", protoObjName)
		return nil
	}
	clientProtoObj := obj.(pb.Message)
	return clientProtoObj
}
