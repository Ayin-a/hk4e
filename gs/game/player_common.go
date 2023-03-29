package game

import (
	"math"
	"time"

	"hk4e/gate/kcp"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *Game) PlayerSetPauseReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.PlayerSetPauseReq)
	isPaused := req.IsPaused
	player.Pause = isPaused
	g.SendMsg(cmd.PlayerSetPauseRsp, player.PlayerID, player.ClientSeq, new(proto.PlayerSetPauseRsp))
}

func (g *Game) TowerAllDataReq(player *model.Player, payloadMsg pb.Message) {
	towerAllDataRsp := &proto.TowerAllDataRsp{
		TowerScheduleId:        29,
		TowerFloorRecordList:   []*proto.TowerFloorRecord{{FloorId: 1001}},
		CurLevelRecord:         &proto.TowerCurLevelRecord{IsEmpty: true},
		NextScheduleChangeTime: 4294967295,
		FloorOpenTimeMap: map[uint32]uint32{
			1024: 1630486800,
			1025: 1630486800,
			1026: 1630486800,
			1027: 1630486800,
		},
		ScheduleStartTime: 1630486800,
	}
	g.SendMsg(cmd.TowerAllDataRsp, player.PlayerID, player.ClientSeq, towerAllDataRsp)
}

func (g *Game) ClientRttNotify(userId uint32, clientRtt uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	logger.Debug("client rtt notify, uid: %v, rtt: %v", userId, clientRtt)
	player.ClientRTT = clientRtt
}

func (g *Game) ClientTimeNotify(userId uint32, clientTime uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	player.ClientTime = clientTime
	now := uint32(time.Now().Unix())
	// 客户端与服务器时间相差太过严重
	if math.Abs(float64(now-player.ClientTime)) > 60.0 {
		g.KickPlayer(player.PlayerID, kcp.EnetServerKick)
		logger.Error("abs of client time and server time above 60s, uid: %v", userId)
	}
	player.LastKeepaliveTime = now
}

func (g *Game) ServerAnnounceNotify(announceId uint32, announceMsg string) {
	for _, onlinePlayer := range USER_MANAGER.GetAllOnlineUserList() {
		now := uint32(time.Now().Unix())
		serverAnnounceNotify := &proto.ServerAnnounceNotify{
			AnnounceDataList: []*proto.AnnounceData{{
				ConfigId:              announceId,
				BeginTime:             now + 1,
				EndTime:               now + 2,
				CenterSystemText:      announceMsg,
				CenterSystemFrequency: 1,
			}},
		}
		g.SendMsg(cmd.ServerAnnounceNotify, onlinePlayer.PlayerID, 0, serverAnnounceNotify)
	}
}

func (g *Game) ServerAnnounceRevokeNotify(announceId uint32) {
	for _, onlinePlayer := range USER_MANAGER.GetAllOnlineUserList() {
		serverAnnounceRevokeNotify := &proto.ServerAnnounceRevokeNotify{
			ConfigIdList: []uint32{announceId},
		}
		g.SendMsg(cmd.ServerAnnounceRevokeNotify, onlinePlayer.PlayerID, 0, serverAnnounceRevokeNotify)
	}
}

func (g *Game) ToTheMoonEnterSceneReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("player ttm enter scene, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ToTheMoonEnterSceneReq)
	_ = req
	g.SendMsg(cmd.ToTheMoonEnterSceneRsp, player.PlayerID, player.ClientSeq, new(proto.ToTheMoonEnterSceneRsp))
}

func (g *Game) PathfindingEnterSceneReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("player pf enter scene, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PathfindingEnterSceneReq)
	_ = req
	g.SendMsg(cmd.PathfindingEnterSceneRsp, player.PlayerID, player.ClientSeq, new(proto.PathfindingEnterSceneRsp))
}

func (g *Game) QueryPathReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.QueryPathReq)
	queryPathRsp := &proto.QueryPathRsp{
		QueryId:     req.QueryId,
		QueryStatus: proto.QueryPathRsp_STATUS_SUCC,
		Corners:     []*proto.Vector{req.DestinationPos[0]},
	}
	g.SendMsg(cmd.QueryPathRsp, player.PlayerID, player.ClientSeq, queryPathRsp)
}

func (g *Game) ObstacleModifyNotify(player *model.Player, payloadMsg pb.Message) {
	ntf := payloadMsg.(*proto.ObstacleModifyNotify)
	_ = ntf
	// logger.Debug("ObstacleModifyNotify: %v, uid: %v", ntf, player.PlayerID)
}

func (g *Game) ServerAppidBindNotify(userId uint32, anticheatAppId string, joinHostUserId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	if joinHostUserId != 0 {
		hostPlayer := USER_MANAGER.GetOnlineUser(joinHostUserId)
		if hostPlayer == nil {
			logger.Error("player is nil, uid: %v", joinHostUserId)
			return
		}
		g.JoinOtherWorld(player, hostPlayer)
		return
	}
	logger.Debug("server appid bind notify, uid: %v, anticheatAppId: %v", userId, anticheatAppId)
	player.AnticheatAppId = anticheatAppId
	// 创建世界
	world := WORLD_MANAGER.CreateWorld(player)
	world.AddPlayer(player, player.SceneId)
	player.WorldId = world.GetId()
	// 进入场景
	player.SceneJump = true
	player.SceneLoadState = model.SceneNone
	g.SendMsg(cmd.PlayerEnterSceneNotify, userId, player.ClientSeq, g.PacketPlayerEnterSceneNotifyLogin(player, proto.EnterType_ENTER_SELF))
}
