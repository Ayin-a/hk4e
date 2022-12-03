package game

import (
	"strconv"

	gdc "hk4e/gs/config"
	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) SceneTransToPointReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get scene trans to point, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SceneTransToPointReq)

	transPointId := strconv.Itoa(int(req.SceneId)) + "_" + strconv.Itoa(int(req.PointId))
	transPointConfig, exist := gdc.CONF.ScenePointEntries[transPointId]
	if !exist {
		// PacketSceneTransToPointRsp
		sceneTransToPointRsp := new(proto.SceneTransToPointRsp)
		sceneTransToPointRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SVR_ERROR)
		g.SendMsg(cmd.SceneTransToPointRsp, player.PlayerID, player.ClientSeq, sceneTransToPointRsp)
		return
	}

	// 传送玩家
	sceneId := req.SceneId
	transPos := transPointConfig.PointData.TranPos
	pos := &model.Vector{
		X: transPos.X,
		Y: transPos.Y,
		Z: transPos.Z,
	}
	g.TeleportPlayer(player, sceneId, pos)

	// PacketSceneTransToPointRsp
	sceneTransToPointRsp := new(proto.SceneTransToPointRsp)
	sceneTransToPointRsp.Retcode = 0
	sceneTransToPointRsp.PointId = req.PointId
	sceneTransToPointRsp.SceneId = req.SceneId
	g.SendMsg(cmd.SceneTransToPointRsp, player.PlayerID, player.ClientSeq, sceneTransToPointRsp)
}

func (g *GameManager) MarkMapReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user mark map, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.MarkMapReq)
	operation := req.Op
	if operation == proto.MarkMapReq_OPERATION_ADD {
		logger.LOG.Debug("user mark type: %v", req.Mark.PointType)
		if req.Mark.PointType == proto.MapMarkPointType_MAP_MARK_POINT_TYPE_NPC {
			posYInt, err := strconv.ParseInt(req.Mark.Name, 10, 64)
			if err != nil {
				logger.LOG.Error("parse pos y error: %v", err)
				posYInt = 300
			}
			// 传送玩家
			pos := &model.Vector{
				X: float64(req.Mark.Pos.X),
				Y: float64(posYInt),
				Z: float64(req.Mark.Pos.Z),
			}
			g.TeleportPlayer(player, req.Mark.SceneId, pos)
		}
	}
}

// TeleportPlayer 传送玩家至地图上的某个位置
func (g *GameManager) TeleportPlayer(player *model.Player, sceneId uint32, pos *model.Vector) {
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
	world := g.worldManager.GetWorldByID(player.WorldId)
	oldScene := world.GetSceneById(oldSceneId)
	activeAvatarId := player.TeamConfig.GetActiveAvatarId()
	playerTeamEntity := oldScene.GetPlayerTeamEntity(player.PlayerID)
	g.RemoveSceneEntityNotifyBroadcast(oldScene, []uint32{playerTeamEntity.avatarEntityMap[activeAvatarId]})
	if jumpScene {
		// PacketDelTeamEntityNotify
		delTeamEntityNotify := g.PacketDelTeamEntityNotify(oldScene, player)
		g.SendMsg(cmd.DelTeamEntityNotify, player.PlayerID, player.ClientSeq, delTeamEntityNotify)

		oldScene.RemovePlayer(player)
		newScene := world.GetSceneById(newSceneId)
		newScene.AddPlayer(player)
	} else {
		oldScene.UpdatePlayerTeamEntity(player)
	}
	player.Pos.X = pos.X
	player.Pos.Y = pos.Y
	player.Pos.Z = pos.Z
	player.SceneId = newSceneId
	player.SceneLoadState = model.SceneNone

	// PacketPlayerEnterSceneNotify
	var enterType proto.EnterType
	if jumpScene {
		logger.LOG.Debug("player jump scene, scene: %v, pos: %v", player.SceneId, player.Pos)
		enterType = proto.EnterType_ENTER_TYPE_JUMP
	} else {
		logger.LOG.Debug("player goto scene, scene: %v, pos: %v", player.SceneId, player.Pos)
		enterType = proto.EnterType_ENTER_TYPE_GOTO
	}
	playerEnterSceneNotify := g.PacketPlayerEnterSceneNotifyTp(player, enterType, uint32(constant.EnterReasonConst.TransPoint), oldSceneId, oldPos)
	g.SendMsg(cmd.PlayerEnterSceneNotify, player.PlayerID, player.ClientSeq, playerEnterSceneNotify)
}

func (g *GameManager) PathfindingEnterSceneReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user pathfinding enter scene, uid: %v", player.PlayerID)
	g.SendMsg(cmd.PathfindingEnterSceneRsp, player.PlayerID, player.ClientSeq, new(proto.PathfindingEnterSceneRsp))
}

func (g *GameManager) QueryPathReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user query path, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.QueryPathReq)

	// PacketQueryPathRsp
	queryPathRsp := new(proto.QueryPathRsp)
	queryPathRsp.Corners = []*proto.Vector{req.DestinationPos[0]}
	queryPathRsp.QueryId = req.QueryId
	queryPathRsp.QueryStatus = proto.QueryPathRsp_PATH_STATUS_TYPE_SUCC
	g.SendMsg(cmd.QueryPathRsp, player.PlayerID, player.ClientSeq, queryPathRsp)
}

func (g *GameManager) GetScenePointReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get scene point, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.GetScenePointReq)

	// PacketGetScenePointRsp
	getScenePointRsp := new(proto.GetScenePointRsp)
	getScenePointRsp.SceneId = req.SceneId
	getScenePointRsp.UnlockedPointList = make([]uint32, 0)
	for i := uint32(1); i < 1000; i++ {
		getScenePointRsp.UnlockedPointList = append(getScenePointRsp.UnlockedPointList, i)
	}
	getScenePointRsp.UnlockAreaList = make([]uint32, 0)
	for i := uint32(1); i < 9; i++ {
		getScenePointRsp.UnlockAreaList = append(getScenePointRsp.UnlockAreaList, i)
	}
	g.SendMsg(cmd.GetScenePointRsp, player.PlayerID, player.ClientSeq, getScenePointRsp)
}

func (g *GameManager) GetSceneAreaReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get scene area, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.GetSceneAreaReq)

	// PacketGetSceneAreaRsp
	getSceneAreaRsp := new(proto.GetSceneAreaRsp)
	getSceneAreaRsp.SceneId = req.SceneId
	getSceneAreaRsp.AreaIdList = []uint32{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 17, 18, 19, 20, 21, 22, 23, 24, 25, 100, 101, 102, 103, 200, 210, 300, 400, 401, 402, 403}
	getSceneAreaRsp.CityInfoList = make([]*proto.CityInfo, 0)
	getSceneAreaRsp.CityInfoList = append(getSceneAreaRsp.CityInfoList, &proto.CityInfo{CityId: 1, Level: 1})
	getSceneAreaRsp.CityInfoList = append(getSceneAreaRsp.CityInfoList, &proto.CityInfo{CityId: 2, Level: 1})
	getSceneAreaRsp.CityInfoList = append(getSceneAreaRsp.CityInfoList, &proto.CityInfo{CityId: 3, Level: 1})
	g.SendMsg(cmd.GetSceneAreaRsp, player.PlayerID, player.ClientSeq, getSceneAreaRsp)
}
