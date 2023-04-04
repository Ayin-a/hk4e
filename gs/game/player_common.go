package game

import (
	"math"
	"time"

	"hk4e/common/constant"
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

func (g *Game) ServerAppidBindNotify(userId uint32, anticheatAppId string) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	logger.Debug("server appid bind notify, uid: %v, anticheatAppId: %v", userId, anticheatAppId)
	player.AnticheatAppId = anticheatAppId
}

// WorldPlayerRTTNotify 世界里所有玩家的网络延迟广播
func (g *Game) WorldPlayerRTTNotify(world *World) {
	worldPlayerRTTNotify := &proto.WorldPlayerRTTNotify{
		PlayerRttList: make([]*proto.PlayerRTTInfo, 0),
	}
	for _, worldPlayer := range world.GetAllPlayer() {
		playerRTTInfo := &proto.PlayerRTTInfo{Uid: worldPlayer.PlayerID, Rtt: worldPlayer.ClientRTT}
		worldPlayerRTTNotify.PlayerRttList = append(worldPlayerRTTNotify.PlayerRttList, playerRTTInfo)
	}
	GAME.SendToWorldA(world, cmd.WorldPlayerRTTNotify, 0, worldPlayerRTTNotify)
}

// WorldPlayerLocationNotify 多人世界其他玩家的坐标位置广播
func (g *Game) WorldPlayerLocationNotify(world *World) {
	worldPlayerLocationNotify := &proto.WorldPlayerLocationNotify{
		PlayerWorldLocList: make([]*proto.PlayerWorldLocationInfo, 0),
	}
	for _, worldPlayer := range world.GetAllPlayer() {
		playerWorldLocationInfo := &proto.PlayerWorldLocationInfo{
			SceneId: worldPlayer.SceneId,
			PlayerLoc: &proto.PlayerLocationInfo{
				Uid: worldPlayer.PlayerID,
				Pos: &proto.Vector{
					X: float32(worldPlayer.Pos.X),
					Y: float32(worldPlayer.Pos.Y),
					Z: float32(worldPlayer.Pos.Z),
				},
				Rot: &proto.Vector{
					X: float32(worldPlayer.Rot.X),
					Y: float32(worldPlayer.Rot.Y),
					Z: float32(worldPlayer.Rot.Z),
				},
			},
		}
		worldPlayerLocationNotify.PlayerWorldLocList = append(worldPlayerLocationNotify.PlayerWorldLocList, playerWorldLocationInfo)
	}
	GAME.SendToWorldA(world, cmd.WorldPlayerLocationNotify, 0, worldPlayerLocationNotify)
}

func (g *Game) ScenePlayerLocationNotify(world *World) {
	for _, scene := range world.GetAllScene() {
		scenePlayerLocationNotify := &proto.ScenePlayerLocationNotify{
			SceneId:        scene.id,
			PlayerLocList:  make([]*proto.PlayerLocationInfo, 0),
			VehicleLocList: make([]*proto.VehicleLocationInfo, 0),
		}
		for _, scenePlayer := range scene.GetAllPlayer() {
			// 玩家位置
			playerLocationInfo := &proto.PlayerLocationInfo{
				Uid: scenePlayer.PlayerID,
				Pos: &proto.Vector{
					X: float32(scenePlayer.Pos.X),
					Y: float32(scenePlayer.Pos.Y),
					Z: float32(scenePlayer.Pos.Z),
				},
				Rot: &proto.Vector{
					X: float32(scenePlayer.Rot.X),
					Y: float32(scenePlayer.Rot.Y),
					Z: float32(scenePlayer.Rot.Z),
				},
			}
			scenePlayerLocationNotify.PlayerLocList = append(scenePlayerLocationNotify.PlayerLocList, playerLocationInfo)
			// 载具位置
			for _, entityId := range scenePlayer.VehicleInfo.LastCreateEntityIdMap {
				entity := scene.GetEntity(entityId)
				// 确保实体类型是否为载具
				if entity != nil && entity.GetEntityType() == constant.ENTITY_TYPE_GADGET && entity.gadgetEntity.gadgetVehicleEntity != nil {
					vehicleLocationInfo := &proto.VehicleLocationInfo{
						Rot: &proto.Vector{
							X: float32(entity.rot.X),
							Y: float32(entity.rot.Y),
							Z: float32(entity.rot.Z),
						},
						EntityId: entity.id,
						CurHp:    entity.fightProp[constant.FIGHT_PROP_CUR_HP],
						OwnerUid: entity.gadgetEntity.gadgetVehicleEntity.owner.PlayerID,
						Pos: &proto.Vector{
							X: float32(entity.pos.X),
							Y: float32(entity.pos.Y),
							Z: float32(entity.pos.Z),
						},
						UidList:  make([]uint32, 0, len(entity.gadgetEntity.gadgetVehicleEntity.memberMap)),
						GadgetId: entity.gadgetEntity.gadgetVehicleEntity.vehicleId,
						MaxHp:    entity.fightProp[constant.FIGHT_PROP_MAX_HP],
					}
					for _, p := range entity.gadgetEntity.gadgetVehicleEntity.memberMap {
						vehicleLocationInfo.UidList = append(vehicleLocationInfo.UidList, p.PlayerID)
					}
					scenePlayerLocationNotify.VehicleLocList = append(scenePlayerLocationNotify.VehicleLocList, vehicleLocationInfo)
				}
			}
		}
		GAME.SendToWorldA(world, cmd.ScenePlayerLocationNotify, 0, scenePlayerLocationNotify)
	}
}

func (g *Game) SceneTimeNotify(world *World) {
	for _, scene := range world.GetAllScene() {
		for _, player := range scene.GetAllPlayer() {
			sceneTimeNotify := &proto.SceneTimeNotify{
				SceneId:   player.SceneId,
				SceneTime: uint64(scene.GetSceneTime()),
			}
			GAME.SendMsg(cmd.SceneTimeNotify, player.PlayerID, 0, sceneTimeNotify)
		}
	}
}

func (g *Game) PlayerTimeNotify(world *World) {
	for _, player := range world.GetAllPlayer() {
		playerTimeNotify := &proto.PlayerTimeNotify{
			IsPaused:   player.Pause,
			PlayerTime: uint64(player.TotalOnlineTime),
			ServerTime: uint64(time.Now().UnixMilli()),
		}
		GAME.SendMsg(cmd.PlayerTimeNotify, player.PlayerID, 0, playerTimeNotify)
	}
}
