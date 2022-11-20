package game

import (
	"flswld.com/common/utils/alg"
	"flswld.com/gate-hk4e-api/proto"
	"flswld.com/logger"
	"game-hk4e/dao"
	"game-hk4e/model"
	"game-hk4e/rpc"
	pb "google.golang.org/protobuf/proto"
)

type GameManager struct {
	dao          *dao.Dao
	rpcManager   *rpc.RpcManager
	netMsgInput  chan *proto.NetMsg
	netMsgOutput chan *proto.NetMsg
	snowflake    *alg.SnowflakeWorker
	// 本地事件队列管理器
	localEventManager *LocalEventManager
	// 接口路由管理器
	routeManager *RouteManager
	// 用户管理器
	userManager *UserManager
	// 世界管理器
	worldManager *WorldManager
	// 游戏服务器tick
	tickManager *TickManager
}

func NewGameManager(dao *dao.Dao, rpcManager *rpc.RpcManager, netMsgInput chan *proto.NetMsg, netMsgOutput chan *proto.NetMsg) (r *GameManager) {
	r = new(GameManager)
	r.dao = dao
	r.rpcManager = rpcManager
	r.netMsgInput = netMsgInput
	r.netMsgOutput = netMsgOutput
	r.snowflake = alg.NewSnowflakeWorker(1)
	r.localEventManager = NewLocalEventManager(r)
	r.routeManager = NewRouteManager(r)
	r.userManager = NewUserManager(dao, r.localEventManager.localEventChan)
	r.worldManager = NewWorldManager(r.snowflake)
	r.tickManager = NewTickManager(r)

	r.worldManager.worldStatic.InitTerrain()
	r.worldManager.worldStatic.Pathfinding()
	r.worldManager.worldStatic.ConvPathVectorListToAiMoveVectorList()

	// 大世界的主人
	r.OnRegOk(false, &proto.SetPlayerBornDataReq{AvatarId: 10000007, NickName: "大世界的主人"}, 1, 0)
	bigWorldOwner := r.userManager.GetOnlineUser(1)
	bigWorldOwner.SceneLoadState = model.SceneEnterDone
	bigWorldOwner.DbState = model.DbNormal
	r.worldManager.InitBigWorld(bigWorldOwner)

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
			}
		}
	}()
}

func (g *GameManager) Stop() {
	g.worldManager.worldStatic.SaveTerrain()
}

// 发送消息给客户端
func (g *GameManager) SendMsg(apiId uint16, userId uint32, clientSeq uint32, payloadMsg pb.Message) {
	if userId < 100000000 {
		return
	}
	netMsg := new(proto.NetMsg)
	netMsg.UserId = userId
	netMsg.EventId = proto.NormalMsg
	netMsg.ApiId = apiId
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
	g.SendMsg(proto.ApiClientReconnectNotify, userId, 0, new(proto.ClientReconnectNotify))
}

func (g *GameManager) DisconnectPlayer(userId uint32) {
	g.SendMsg(proto.ApiServerDisconnectClientNotify, userId, 0, new(proto.ServerDisconnectClientNotify))
}

func (g *GameManager) KickPlayer(userId uint32) {
	g.rpcManager.SendKickPlayerToHk4eGateway(userId)
}
