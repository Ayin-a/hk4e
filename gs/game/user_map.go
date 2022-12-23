package game

import (
	"strconv"

	"hk4e/common/constant"
	gdc "hk4e/gs/config"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) SceneTransToPointReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user get scene trans to point, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SceneTransToPointReq)

	transPointId := strconv.Itoa(int(req.SceneId)) + "_" + strconv.Itoa(int(req.PointId))
	transPointConfig, exist := gdc.CONF.ScenePointEntries[transPointId]
	if !exist {
		g.CommonRetError(cmd.SceneTransToPointRsp, player, &proto.SceneTransToPointRsp{})
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
	g.TeleportPlayer(player, uint32(constant.EnterReasonConst.TransPoint), sceneId, pos)

	sceneTransToPointRsp := &proto.SceneTransToPointRsp{
		PointId: req.PointId,
		SceneId: req.SceneId,
	}
	g.SendMsg(cmd.SceneTransToPointRsp, player.PlayerID, player.ClientSeq, sceneTransToPointRsp)
}

func (g *GameManager) MarkMapReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user mark map, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.MarkMapReq)
	operation := req.Op
	if operation == proto.MarkMapReq_OPERATION_ADD {
		logger.Debug("user mark type: %v", req.Mark.PointType)
		if req.Mark.PointType == proto.MapMarkPointType_MAP_MARK_POINT_TYPE_NPC {
			posYInt, err := strconv.ParseInt(req.Mark.Name, 10, 64)
			if err != nil {
				logger.Error("parse pos y error: %v", err)
				posYInt = 300
			}
			// 传送玩家
			pos := &model.Vector{
				X: float64(req.Mark.Pos.X),
				Y: float64(posYInt),
				Z: float64(req.Mark.Pos.Z),
			}
			g.TeleportPlayer(player, uint32(constant.EnterReasonConst.Gm), req.Mark.SceneId, pos)
		}
	}
}

// TeleportPlayer 传送玩家至地图上的某个位置
func (g *GameManager) TeleportPlayer(player *model.Player, enterReason uint32, sceneId uint32, pos *model.Vector) {
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
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	oldScene := world.GetSceneById(oldSceneId)
	activeAvatarId := world.GetPlayerActiveAvatarId(player)
	g.RemoveSceneEntityNotifyBroadcast(oldScene, proto.VisionType_VISION_TYPE_REMOVE, []uint32{world.GetPlayerWorldAvatarEntityId(player, activeAvatarId)})
	if jumpScene {
		delTeamEntityNotify := g.PacketDelTeamEntityNotify(oldScene, player)
		g.SendMsg(cmd.DelTeamEntityNotify, player.PlayerID, player.ClientSeq, delTeamEntityNotify)

		oldScene.RemovePlayer(player)
		newScene := world.GetSceneById(newSceneId)
		newScene.AddPlayer(player)
	}
	player.Pos.X = pos.X
	player.Pos.Y = pos.Y
	player.Pos.Z = pos.Z
	player.SceneId = newSceneId
	player.SceneLoadState = model.SceneNone

	var enterType proto.EnterType
	if jumpScene {
		logger.Debug("player jump scene, scene: %v, pos: %v", player.SceneId, player.Pos)
		enterType = proto.EnterType_ENTER_TYPE_JUMP
	} else {
		logger.Debug("player goto scene, scene: %v, pos: %v", player.SceneId, player.Pos)
		enterType = proto.EnterType_ENTER_TYPE_GOTO
	}
	playerEnterSceneNotify := g.PacketPlayerEnterSceneNotifyTp(player, enterType, enterReason, oldSceneId, oldPos)
	g.SendMsg(cmd.PlayerEnterSceneNotify, player.PlayerID, player.ClientSeq, playerEnterSceneNotify)
}

func (g *GameManager) GetScenePointReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user get scene point, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.GetScenePointReq)

	if req.SceneId != 3 {
		getScenePointRsp := &proto.GetScenePointRsp{
			SceneId: req.SceneId,
		}
		g.SendMsg(cmd.GetScenePointRsp, player.PlayerID, player.ClientSeq, getScenePointRsp)
		return
	}

	getScenePointRsp := &proto.GetScenePointRsp{
		SceneId:               3,
		UnlockAreaList:        []uint32{12, 11, 19, 28, 5, 1, 24, 10, 21, 2, 7, 18, 3, 26, 6, 17, 22, 20, 9, 14, 16, 8, 13, 4, 27, 23},
		UnlockedPointList:     []uint32{553, 155, 58, 257, 38, 135, 528, 329, 13, 212, 401, 3, 600, 545, 589, 180, 416, 7, 615, 206, 400, 599, 114, 12, 211, 104, 502, 93, 325, 540, 131, 320, 519, 121, 616, 218, 606, 197, 208, 703, 305, 499, 254, 652, 60, 458, 282, 691, 167, 366, 323, 32, 319, 222, 181, 380, 612, 234, 433, 391, 488, 79, 338, 139, 241, 42, 57, 256, 154, 353, 588, 491, 82, 209, 10, 500, 91, 301, 489, 4, 392, 536, 127, 337, 605, 8, 487, 78, 228, 626, 598, 1, 200, 137, 336, 535, 382, 310, 509, 100, 498, 14, 213, 625, 361, 471, 674, 475, 603, 6, 205, 485, 76, 77, 486, 359, 165, 364, 317, 271, 384, 72, 481, 253, 156, 350, 45, 244, 516, 107, 306, 296, 97, 162, 571, 495, 86, 44, 248, 646, 539, 221, 22, 318, 706, 308, 507, 103, 302, 258, 442, 33, 324, 393, 61, 255, 655, 246, 385, 73, 482, 551, 153, 363, 35, 444, 245, 439, 251, 445, 36, 235, 15, 424, 225, 214, 623, 327, 537, 128, 542, 133, 332, 322, 31, 20, 429, 432, 443, 34, 59, 468, 604, 405, 515, 316, 117, 321, 122, 249, 459, 50, 29, 438, 40, 330, 116, 326, 503, 304, 514, 105, 550, 351, 152, 586, 387, 250, 541, 328, 236, 435, 247, 48, 37, 446, 538, 339, 11, 210, 476, 379, 671, 477, 676, 242, 168, 577, 378, 383, 81, 490, 501, 92, 331, 543, 252, 87, 496, 463, 307, 484, 75, 505, 96, 534, 555, 146, 462, 365, 381, 182, 166, 575, 69, 478, 494, 85, 74, 483, 368, 465, 386, 95, 84, 493, 396, 587, 5, 602, 204, 99, 497, 298, 492, 702, 293},
		LockedPointList:       []uint32{173, 398, 627, 223, 417, 419, 231, 278, 699, 408, 276, 229, 520, 512, 415, 113, 274, 565, 344, 436, 394, 403, 262, 430, 195, 412, 315, 233, 440, 52, 409, 334, 193, 240, 566, 469, 187, 704, 413, 346, 259, 447, 286, 102, 345, 580, 411, 129, 578, 202, 682, 294, 570, 414, 511, 622, 428, 449, 426, 238, 265, 273, 564, 467, 563, 175, 269, 457, 574, 89, 388, 291, 707, 125, 559, 268, 656, 183, 280, 267, 357, 260, 354, 451, 410, 119, 216},
		HidePointList:         []uint32{458, 515, 459, 514},
		GroupUnlimitPointList: []uint32{221, 131, 107, 350, 50, 424, 359},
	}
	g.SendMsg(cmd.GetScenePointRsp, player.PlayerID, player.ClientSeq, getScenePointRsp)
}

func (g *GameManager) GetSceneAreaReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user get scene area, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.GetSceneAreaReq)

	if req.SceneId != 3 {
		getSceneAreaRsp := &proto.GetSceneAreaRsp{
			SceneId: req.SceneId,
		}
		g.SendMsg(cmd.GetSceneAreaRsp, player.PlayerID, player.ClientSeq, getSceneAreaRsp)
		return
	}

	getSceneAreaRsp := &proto.GetSceneAreaRsp{
		SceneId:    3,
		AreaIdList: []uint32{12, 11, 19, 28, 5, 1, 24, 10, 21, 2, 7, 18, 3, 26, 6, 17, 22, 20, 9, 14, 16, 8, 13, 4, 27, 23},
		CityInfoList: []*proto.CityInfo{
			{CityId: 1, Level: 10},
			{CityId: 2, Level: 10},
			{CityId: 3, Level: 10},
			{CityId: 4, Level: 10},
			{CityId: 99, Level: 1},
			{CityId: 100, Level: 1},
			{CityId: 101, Level: 1},
			{CityId: 102, Level: 1},
		},
	}
	g.SendMsg(cmd.GetSceneAreaRsp, player.PlayerID, player.ClientSeq, getSceneAreaRsp)
}
