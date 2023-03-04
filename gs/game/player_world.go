package game

import (
	"strconv"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) SceneTransToPointReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SceneTransToPointReq)

	dbWorld := player.GetDbWorld()
	dbScene := dbWorld.GetSceneById(req.SceneId)
	if dbScene == nil {
		g.SendError(cmd.SceneTransToPointRsp, player, &proto.SceneTransToPointRsp{}, proto.Retcode_RET_POINT_NOT_UNLOCKED)
		return
	}
	unlock := dbScene.CheckPointUnlock(req.PointId)
	if !unlock {
		g.SendError(cmd.SceneTransToPointRsp, player, &proto.SceneTransToPointRsp{}, proto.Retcode_RET_POINT_NOT_UNLOCKED)
		return
	}
	pointDataConfig := gdconf.GetScenePointBySceneIdAndPointId(int32(req.SceneId), int32(req.PointId))
	if pointDataConfig == nil {
		g.SendError(cmd.SceneTransToPointRsp, player, &proto.SceneTransToPointRsp{}, proto.Retcode_RET_POINT_NOT_UNLOCKED)
		return
	}
	// 传送玩家
	sceneId := req.SceneId
	g.TeleportPlayer(player, uint16(proto.EnterReason_ENTER_REASON_TRANS_POINT), sceneId, &model.Vector{
		X: pointDataConfig.TranPos.X,
		Y: pointDataConfig.TranPos.Y,
		Z: pointDataConfig.TranPos.Z,
	}, &model.Vector{
		X: pointDataConfig.TranRot.X,
		Y: pointDataConfig.TranRot.Y,
		Z: pointDataConfig.TranRot.Z,
	}, 0)

	sceneTransToPointRsp := &proto.SceneTransToPointRsp{
		PointId: req.PointId,
		SceneId: req.SceneId,
	}
	g.SendMsg(cmd.SceneTransToPointRsp, player.PlayerID, player.ClientSeq, sceneTransToPointRsp)
}

func (g *GameManager) UnlockTransPointReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.UnlockTransPointReq)

	dbWorld := player.GetDbWorld()
	dbScene := dbWorld.GetSceneById(req.SceneId)
	if dbScene == nil {
		g.SendError(cmd.UnlockTransPointRsp, player, &proto.UnlockTransPointRsp{}, proto.Retcode_RET_POINT_NOT_UNLOCKED)
		return
	}
	unlock := dbScene.CheckPointUnlock(req.PointId)
	if unlock {
		g.SendError(cmd.UnlockTransPointRsp, player, &proto.UnlockTransPointRsp{}, proto.Retcode_RET_POINT_ALREAY_UNLOCKED)
		return
	}
	dbScene.UnlockPoint(req.PointId)

	g.TriggerQuest(player, constant.QUEST_FINISH_COND_TYPE_UNLOCK_TRANS_POINT, int32(req.SceneId), int32(req.PointId))

	g.SendMsg(cmd.ScenePointUnlockNotify, player.PlayerID, player.ClientSeq, &proto.ScenePointUnlockNotify{
		SceneId:         req.SceneId,
		PointList:       []uint32{req.PointId},
		UnhidePointList: nil,
	})
	g.SendSucc(cmd.UnlockTransPointRsp, player, &proto.UnlockTransPointRsp{})
}

func (g *GameManager) GetScenePointReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.GetScenePointReq)

	dbWorld := player.GetDbWorld()
	dbScene := dbWorld.GetSceneById(req.SceneId)
	if dbScene == nil {
		g.SendError(cmd.GetScenePointRsp, player, &proto.GetScenePointRsp{})
		return
	}
	getScenePointRsp := &proto.GetScenePointRsp{
		SceneId: req.SceneId,
	}
	areaIdMap := make(map[uint32]bool)
	for _, worldAreaData := range gdconf.GetWorldAreaDataMap() {
		if uint32(worldAreaData.SceneId) == req.SceneId {
			areaIdMap[uint32(worldAreaData.AreaId1)] = true
		}
	}
	areaList := make([]uint32, 0)
	for areaId := range areaIdMap {
		areaList = append(areaList, areaId)
	}
	getScenePointRsp.UnlockAreaList = areaList
	for _, pointId := range dbScene.GetUnlockPointList() {
		pointData := gdconf.GetScenePointBySceneIdAndPointId(int32(req.SceneId), int32(pointId))
		if pointData.IsModelHidden {
			getScenePointRsp.HidePointList = append(getScenePointRsp.HidePointList, pointId)
		}
		getScenePointRsp.UnlockedPointList = append(getScenePointRsp.UnlockedPointList, pointId)
	}
	g.SendMsg(cmd.GetScenePointRsp, player.PlayerID, player.ClientSeq, getScenePointRsp)
}

func (g *GameManager) MarkMapReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.MarkMapReq)
	operation := req.Op
	if operation == proto.MarkMapReq_ADD {
		logger.Debug("user mark type: %v", req.Mark.PointType)
		if req.Mark.PointType == proto.MapMarkPointType_NPC {
			posYInt, err := strconv.ParseInt(req.Mark.Name, 10, 64)
			if err != nil {
				logger.Error("parse pos y error: %v", err)
				posYInt = 300
			}
			// 传送玩家
			g.TeleportPlayer(player, uint16(proto.EnterReason_ENTER_REASON_GM), req.Mark.SceneId, &model.Vector{
				X: float64(req.Mark.Pos.X),
				Y: float64(posYInt),
				Z: float64(req.Mark.Pos.Z),
			}, new(model.Vector), 0)
		}
	}
}

func (g *GameManager) GetSceneAreaReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.GetSceneAreaReq)

	getSceneAreaRsp := &proto.GetSceneAreaRsp{
		SceneId: req.SceneId,
	}
	areaIdMap := make(map[uint32]bool)
	for _, worldAreaData := range gdconf.GetWorldAreaDataMap() {
		if uint32(worldAreaData.SceneId) == req.SceneId {
			areaIdMap[uint32(worldAreaData.AreaId1)] = true
		}
	}
	areaList := make([]uint32, 0)
	for areaId := range areaIdMap {
		areaList = append(areaList, areaId)
	}
	getSceneAreaRsp.AreaIdList = areaList
	if req.SceneId == 3 {
		getSceneAreaRsp.CityInfoList = []*proto.CityInfo{
			{CityId: 1, Level: 10},
			{CityId: 2, Level: 10},
			{CityId: 3, Level: 10},
			{CityId: 4, Level: 10},
			{CityId: 99, Level: 1},
			{CityId: 100, Level: 1},
			{CityId: 101, Level: 1},
			{CityId: 102, Level: 1},
		}
	}
	g.SendMsg(cmd.GetSceneAreaRsp, player.PlayerID, player.ClientSeq, getSceneAreaRsp)
}

func (g *GameManager) EnterWorldAreaReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("player enter world area, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EnterWorldAreaReq)

	logger.Debug("EnterWorldAreaReq: %v", req)

	enterWorldAreaRsp := &proto.EnterWorldAreaRsp{
		AreaType: req.AreaType,
		AreaId:   req.AreaId,
	}
	g.SendMsg(cmd.EnterWorldAreaRsp, player.PlayerID, player.ClientSeq, enterWorldAreaRsp)
}

// TeleportPlayer 传送玩家至地图上的某个位置
func (g *GameManager) TeleportPlayer(player *model.Player, enterReason uint16, sceneId uint32, pos, rot *model.Vector, dungeonId uint32) {
	// 传送玩家
	newSceneId := sceneId
	oldSceneId := player.SceneId
	oldPos := &model.Vector{
		X: player.Pos.X,
		Y: player.Pos.Y,
		Z: player.Pos.Z,
	}
	jumpScene := false
	if newSceneId != oldSceneId {
		jumpScene = true
	}
	player.SceneJump = jumpScene
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	oldScene := world.GetSceneById(oldSceneId)
	if oldScene == nil {
		logger.Error("old scene is nil, sceneId: %v", oldSceneId)
		return
	}
	activeAvatarId := world.GetPlayerActiveAvatarId(player)
	g.RemoveSceneEntityNotifyBroadcast(oldScene, proto.VisionType_VISION_REMOVE, []uint32{world.GetPlayerWorldAvatarEntityId(player, activeAvatarId)})
	if jumpScene {
		delTeamEntityNotify := g.PacketDelTeamEntityNotify(oldScene, player)
		g.SendMsg(cmd.DelTeamEntityNotify, player.PlayerID, player.ClientSeq, delTeamEntityNotify)

		oldScene.RemovePlayer(player)
		player.SceneId = newSceneId
		newScene := world.GetSceneById(newSceneId)
		if newScene == nil {
			logger.Error("new scene is nil, sceneId: %v", newSceneId)
			return
		}
		newScene.AddPlayer(player)
	}
	player.SceneLoadState = model.SceneNone
	player.Pos.X = pos.X
	player.Pos.Y = pos.Y
	player.Pos.Z = pos.Z
	player.Rot.X = rot.X
	player.Rot.Y = rot.Y
	player.Rot.Z = rot.Z

	var enterType proto.EnterType
	switch enterReason {
	case uint16(proto.EnterReason_ENTER_REASON_DUNGEON_ENTER):
		logger.Debug("player tp to dungeon scene, sceneId: %v, pos: %v", player.SceneId, player.Pos)
		enterType = proto.EnterType_ENTER_DUNGEON
	default:
		if jumpScene {
			logger.Debug("player jump scene, scene: %v, pos: %v", player.SceneId, player.Pos)
			enterType = proto.EnterType_ENTER_JUMP
		} else {
			logger.Debug("player goto scene, scene: %v, pos: %v", player.SceneId, player.Pos)
			enterType = proto.EnterType_ENTER_GOTO
		}
	}
	playerEnterSceneNotify := g.PacketPlayerEnterSceneNotifyTp(player, enterType, uint32(enterReason), oldSceneId, oldPos, dungeonId)
	g.SendMsg(cmd.PlayerEnterSceneNotify, player.PlayerID, player.ClientSeq, playerEnterSceneNotify)
}
