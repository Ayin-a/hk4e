package game

import (
	"strconv"
	"time"

	gdc "hk4e/gs/config"
	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) EnterSceneReadyReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user enter scene ready, uid: %v", player.PlayerID)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)

	enterScenePeerNotify := &proto.EnterScenePeerNotify{
		DestSceneId:     player.SceneId,
		PeerId:          world.GetPlayerPeerId(player),
		HostPeerId:      world.GetPlayerPeerId(world.owner),
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.EnterScenePeerNotify, player.PlayerID, player.ClientSeq, enterScenePeerNotify)

	enterSceneReadyRsp := &proto.EnterSceneReadyRsp{
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.EnterSceneReadyRsp, player.PlayerID, player.ClientSeq, enterSceneReadyRsp)
}

func (g *GameManager) SceneInitFinishReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user scene init finish, uid: %v", player.PlayerID)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	serverTimeNotify := &proto.ServerTimeNotify{
		ServerTime: uint64(time.Now().UnixMilli()),
	}
	g.SendMsg(cmd.ServerTimeNotify, player.PlayerID, player.ClientSeq, serverTimeNotify)

	if world.IsPlayerFirstEnter(player) {
		worldPlayerInfoNotify := &proto.WorldPlayerInfoNotify{
			PlayerInfoList: make([]*proto.OnlinePlayerInfo, 0),
			PlayerUidList:  make([]uint32, 0),
		}
		for _, worldPlayer := range world.playerMap {
			onlinePlayerInfo := &proto.OnlinePlayerInfo{
				Uid:                 worldPlayer.PlayerID,
				Nickname:            worldPlayer.NickName,
				PlayerLevel:         worldPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL],
				MpSettingType:       proto.MpSettingType(worldPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_MP_SETTING_TYPE]),
				NameCardId:          worldPlayer.NameCard,
				Signature:           worldPlayer.Signature,
				ProfilePicture:      &proto.ProfilePicture{AvatarId: worldPlayer.HeadImage},
				CurPlayerNumInWorld: uint32(len(world.playerMap)),
			}
			worldPlayerInfoNotify.PlayerInfoList = append(worldPlayerInfoNotify.PlayerInfoList, onlinePlayerInfo)
			worldPlayerInfoNotify.PlayerUidList = append(worldPlayerInfoNotify.PlayerUidList, worldPlayer.PlayerID)
		}
		g.SendMsg(cmd.WorldPlayerInfoNotify, player.PlayerID, player.ClientSeq, worldPlayerInfoNotify)

		worldDataNotify := &proto.WorldDataNotify{
			WorldPropMap: make(map[uint32]*proto.PropValue),
		}
		// 世界等级
		worldDataNotify.WorldPropMap[1] = &proto.PropValue{
			Type:  1,
			Val:   int64(world.worldLevel),
			Value: &proto.PropValue_Ival{Ival: int64(world.worldLevel)},
		}
		// 是否多人游戏
		worldDataNotify.WorldPropMap[2] = &proto.PropValue{
			Type:  2,
			Val:   object.ConvBoolToInt64(world.multiplayer),
			Value: &proto.PropValue_Ival{Ival: object.ConvBoolToInt64(world.multiplayer)},
		}
		g.SendMsg(cmd.WorldDataNotify, player.PlayerID, player.ClientSeq, worldDataNotify)

		playerWorldSceneInfoListNotify := &proto.PlayerWorldSceneInfoListNotify{
			InfoList: []*proto.PlayerWorldSceneInfo{
				{SceneId: 1, IsLocked: true, SceneTagIdList: []uint32{}},
				{SceneId: 3, IsLocked: false, SceneTagIdList: []uint32{102, 111, 112, 116, 118, 126, 135, 140, 142, 149, 1091, 1094, 1095, 1099, 1101, 1103, 1105, 1110, 1120, 1122, 1125, 1127, 1129, 1131, 1133, 1135, 1137, 1138, 1140, 1143, 1146, 1165, 1168}},
				{SceneId: 4, IsLocked: true, SceneTagIdList: []uint32{}},
				{SceneId: 5, IsLocked: false, SceneTagIdList: []uint32{121, 1031}},
				{SceneId: 6, IsLocked: false, SceneTagIdList: []uint32{144, 146, 1062, 1063}},
				{SceneId: 7, IsLocked: true, SceneTagIdList: []uint32{136, 137, 138, 148, 1034}},
				{SceneId: 9, IsLocked: true, SceneTagIdList: []uint32{1012, 1016, 1021, 1022, 1060, 1077}},
			},
		}
		g.SendMsg(cmd.PlayerWorldSceneInfoListNotify, player.PlayerID, player.ClientSeq, playerWorldSceneInfoListNotify)

		g.SendMsg(cmd.SceneForceUnlockNotify, player.PlayerID, player.ClientSeq, new(proto.SceneForceUnlockNotify))

		hostPlayerNotify := &proto.HostPlayerNotify{
			HostUid:    world.owner.PlayerID,
			HostPeerId: world.GetPlayerPeerId(world.owner),
		}
		g.SendMsg(cmd.HostPlayerNotify, player.PlayerID, player.ClientSeq, hostPlayerNotify)

		sceneTimeNotify := &proto.SceneTimeNotify{
			SceneId:   player.SceneId,
			SceneTime: uint64(scene.GetSceneTime()),
		}
		g.SendMsg(cmd.SceneTimeNotify, player.PlayerID, player.ClientSeq, sceneTimeNotify)

		playerGameTimeNotify := &proto.PlayerGameTimeNotify{
			GameTime: scene.gameTime,
			Uid:      player.PlayerID,
		}
		g.SendMsg(cmd.PlayerGameTimeNotify, player.PlayerID, player.ClientSeq, playerGameTimeNotify)

		empty := new(proto.AbilitySyncStateInfo)
		activeAvatarId := player.TeamConfig.GetActiveAvatarId()
		playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)
		playerEnterSceneInfoNotify := &proto.PlayerEnterSceneInfoNotify{
			CurAvatarEntityId: playerTeamEntity.avatarEntityMap[activeAvatarId],
			EnterSceneToken:   player.EnterSceneToken,
			TeamEnterInfo: &proto.TeamEnterSceneInfo{
				TeamEntityId:        playerTeamEntity.teamEntityId,
				TeamAbilityInfo:     empty,
				AbilityControlBlock: new(proto.AbilityControlBlock),
			},
			MpLevelEntityInfo: &proto.MPLevelEntityInfo{
				EntityId:        WORLD_MANAGER.GetWorldByID(player.WorldId).mpLevelEntityId,
				AuthorityPeerId: 1,
				AbilityInfo:     empty,
			},
			AvatarEnterInfo: make([]*proto.AvatarEnterSceneInfo, 0),
		}
		activeTeam := player.TeamConfig.GetActiveTeam()
		for _, avatarId := range activeTeam.AvatarIdList {
			if avatarId == 0 {
				break
			}
			avatar := player.AvatarMap[avatarId]
			avatarEnterSceneInfo := &proto.AvatarEnterSceneInfo{
				AvatarGuid:        avatar.Guid,
				AvatarEntityId:    playerTeamEntity.avatarEntityMap[avatarId],
				WeaponGuid:        avatar.EquipWeapon.Guid,
				WeaponEntityId:    playerTeamEntity.weaponEntityMap[avatar.EquipWeapon.WeaponId],
				AvatarAbilityInfo: empty,
				WeaponAbilityInfo: empty,
			}
			playerEnterSceneInfoNotify.AvatarEnterInfo = append(playerEnterSceneInfoNotify.AvatarEnterInfo, avatarEnterSceneInfo)
		}
		g.SendMsg(cmd.PlayerEnterSceneInfoNotify, player.PlayerID, player.ClientSeq, playerEnterSceneInfoNotify)

		sceneAreaWeatherNotify := &proto.SceneAreaWeatherNotify{
			WeatherAreaId: 0,
			ClimateType:   uint32(constant.ClimateTypeConst.CLIMATE_SUNNY),
		}
		g.SendMsg(cmd.SceneAreaWeatherNotify, player.PlayerID, player.ClientSeq, sceneAreaWeatherNotify)
	}

	scenePlayerInfoNotify := &proto.ScenePlayerInfoNotify{
		PlayerInfoList: make([]*proto.ScenePlayerInfo, 0),
	}
	for _, worldPlayer := range world.playerMap {
		onlinePlayerInfo := &proto.OnlinePlayerInfo{
			Uid:                 worldPlayer.PlayerID,
			Nickname:            worldPlayer.NickName,
			PlayerLevel:         worldPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL],
			MpSettingType:       proto.MpSettingType(worldPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_MP_SETTING_TYPE]),
			NameCardId:          worldPlayer.NameCard,
			Signature:           worldPlayer.Signature,
			ProfilePicture:      &proto.ProfilePicture{AvatarId: worldPlayer.HeadImage},
			CurPlayerNumInWorld: uint32(len(world.playerMap)),
		}
		scenePlayerInfoNotify.PlayerInfoList = append(scenePlayerInfoNotify.PlayerInfoList, &proto.ScenePlayerInfo{
			Uid:              worldPlayer.PlayerID,
			PeerId:           world.GetPlayerPeerId(worldPlayer),
			Name:             worldPlayer.NickName,
			SceneId:          worldPlayer.SceneId,
			OnlinePlayerInfo: onlinePlayerInfo,
		})
	}
	g.SendMsg(cmd.ScenePlayerInfoNotify, player.PlayerID, player.ClientSeq, scenePlayerInfoNotify)

	var sceneTeamUpdateNotify *proto.SceneTeamUpdateNotify = nil
	if world.multiplayer {
		sceneTeamUpdateNotify = g.PacketSceneTeamUpdateNotifyMp(world)
	} else {
		sceneTeamUpdateNotify = g.PacketSceneTeamUpdateNotify(world)
	}
	g.SendMsg(cmd.SceneTeamUpdateNotify, player.PlayerID, player.ClientSeq, sceneTeamUpdateNotify)

	syncTeamEntityNotify := &proto.SyncTeamEntityNotify{
		SceneId:            player.SceneId,
		TeamEntityInfoList: make([]*proto.TeamEntityInfo, 0),
	}
	if world.multiplayer {
		for _, worldPlayer := range world.playerMap {
			if worldPlayer.PlayerID == player.PlayerID {
				continue
			}
			worldPlayerScene := world.GetSceneById(worldPlayer.SceneId)
			worldPlayerTeamEntity := worldPlayerScene.GetPlayerTeamEntity(worldPlayer.PlayerID)
			teamEntityInfo := &proto.TeamEntityInfo{
				TeamEntityId:    worldPlayerTeamEntity.teamEntityId,
				AuthorityPeerId: world.GetPlayerPeerId(worldPlayer),
				TeamAbilityInfo: new(proto.AbilitySyncStateInfo),
			}
			syncTeamEntityNotify.TeamEntityInfoList = append(syncTeamEntityNotify.TeamEntityInfoList, teamEntityInfo)
		}
	}
	g.SendMsg(cmd.SyncTeamEntityNotify, player.PlayerID, player.ClientSeq, syncTeamEntityNotify)

	syncScenePlayTeamEntityNotify := &proto.SyncScenePlayTeamEntityNotify{
		SceneId: player.SceneId,
	}
	g.SendMsg(cmd.SyncScenePlayTeamEntityNotify, player.PlayerID, player.ClientSeq, syncScenePlayTeamEntityNotify)

	SceneInitFinishRsp := &proto.SceneInitFinishRsp{
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.SceneInitFinishRsp, player.PlayerID, player.ClientSeq, SceneInitFinishRsp)

	player.SceneLoadState = model.SceneInitFinish
}

func (g *GameManager) EnterSceneDoneReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user enter scene done, uid: %v", player.PlayerID)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	if world.multiplayer && world.IsPlayerFirstEnter(player) {
		guestPostEnterSceneNotify := &proto.GuestPostEnterSceneNotify{
			SceneId: player.SceneId,
			Uid:     player.PlayerID,
		}
		g.SendMsg(cmd.GuestPostEnterSceneNotify, world.owner.PlayerID, world.owner.ClientSeq, guestPostEnterSceneNotify)
	}

	var visionType = proto.VisionType_VISION_TYPE_TRANSPORT

	playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)
	activeAvatarId := player.TeamConfig.GetActiveAvatarId()
	if world.IsPlayerFirstEnter(player) {
		visionType = proto.VisionType_VISION_TYPE_BORN
	}
	g.AddSceneEntityNotify(player, visionType, []uint32{playerTeamEntity.avatarEntityMap[activeAvatarId]}, true)

	// 通过aoi获取场景中在自己周围格子里的全部实体id
	//entityIdList := world.aoiManager.GetEntityIdListByPos(float32(player.Pos.X), float32(player.Pos.Y), float32(player.Pos.Z))
	entityIdList := world.GetSceneById(player.SceneId).GetEntityIdList()
	if world.IsPlayerFirstEnter(player) {
		visionType = proto.VisionType_VISION_TYPE_MEET
	}
	g.AddSceneEntityNotify(player, visionType, entityIdList, false)

	sceneAreaWeatherNotify := &proto.SceneAreaWeatherNotify{
		WeatherAreaId: 0,
		ClimateType:   uint32(constant.ClimateTypeConst.CLIMATE_SUNNY),
	}
	g.SendMsg(cmd.SceneAreaWeatherNotify, player.PlayerID, player.ClientSeq, sceneAreaWeatherNotify)

	enterSceneDoneRsp := &proto.EnterSceneDoneRsp{
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.EnterSceneDoneRsp, player.PlayerID, player.ClientSeq, enterSceneDoneRsp)

	player.SceneLoadState = model.SceneEnterDone
	world.PlayerEnter(player)

	for otherPlayerId := range world.waitEnterPlayerMap {
		delete(world.waitEnterPlayerMap, otherPlayerId)
		otherPlayer := USER_MANAGER.GetOnlineUser(otherPlayerId)
		otherPlayer.Pos = &model.Vector{
			X: player.Pos.X,
			Y: player.Pos.Y,
			Z: player.Pos.Z,
		}
		otherPlayer.Rot = &model.Vector{
			X: player.Rot.X,
			Y: player.Rot.Y,
			Z: player.Rot.Z,
		}
		otherPlayer.SceneId = player.SceneId

		g.UserWorldAddPlayer(world, otherPlayer)

		otherPlayer.SceneLoadState = model.SceneNone
		playerEnterSceneNotify := g.PacketPlayerEnterSceneNotifyLogin(otherPlayer, proto.EnterType_ENTER_TYPE_OTHER)
		g.SendMsg(cmd.PlayerEnterSceneNotify, otherPlayer.PlayerID, otherPlayer.ClientSeq, playerEnterSceneNotify)
	}
}

func (g *GameManager) PostEnterSceneReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user post enter scene, uid: %v", player.PlayerID)

	postEnterSceneRsp := &proto.PostEnterSceneRsp{
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.PostEnterSceneRsp, player.PlayerID, player.ClientSeq, postEnterSceneRsp)
}

func (g *GameManager) EnterWorldAreaReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user enter world area, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EnterWorldAreaReq)

	enterWorldAreaRsp := &proto.EnterWorldAreaRsp{
		AreaType: req.AreaType,
		AreaId:   req.AreaId,
	}
	g.SendMsg(cmd.EnterWorldAreaRsp, player.PlayerID, player.ClientSeq, enterWorldAreaRsp)
}

func (g *GameManager) ChangeGameTimeReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user change game time, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ChangeGameTimeReq)
	gameTime := req.GameTime
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	scene.ChangeGameTime(gameTime)

	for _, scenePlayer := range scene.playerMap {
		playerGameTimeNotify := &proto.PlayerGameTimeNotify{
			GameTime: scene.gameTime,
			Uid:      scenePlayer.PlayerID,
		}
		g.SendMsg(cmd.PlayerGameTimeNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, playerGameTimeNotify)
	}

	changeGameTimeRsp := &proto.ChangeGameTimeRsp{
		CurGameTime: scene.gameTime,
	}
	g.SendMsg(cmd.ChangeGameTimeRsp, player.PlayerID, player.ClientSeq, changeGameTimeRsp)
}

func (g *GameManager) PacketPlayerEnterSceneNotifyLogin(player *model.Player, enterType proto.EnterType) *proto.PlayerEnterSceneNotify {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	player.EnterSceneToken = uint32(random.GetRandomInt32(5000, 50000))
	playerEnterSceneNotify := &proto.PlayerEnterSceneNotify{
		SceneId:                player.SceneId,
		Pos:                    &proto.Vector{X: float32(player.Pos.X), Y: float32(player.Pos.Y), Z: float32(player.Pos.Z)},
		SceneBeginTime:         uint64(scene.GetSceneCreateTime()),
		Type:                   enterType,
		TargetUid:              player.PlayerID,
		EnterSceneToken:        player.EnterSceneToken,
		WorldLevel:             player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL],
		EnterReason:            uint32(constant.EnterReasonConst.Login),
		IsFirstLoginEnterScene: true,
		WorldType:              1,
	}
	playerEnterSceneNotify.SceneTransaction = strconv.Itoa(int(player.SceneId)) + "-" +
		strconv.Itoa(int(player.PlayerID)) + "-" +
		strconv.Itoa(int(time.Now().Unix())) + "-" +
		"296359"
	playerEnterSceneNotify.SceneTagIdList = []uint32{102, 111, 112, 116, 118, 126, 135, 140, 142, 149, 1091, 1094, 1095, 1099, 1101, 1103, 1105, 1110, 1120, 1122, 1125, 1127, 1129, 1131, 1133, 1135, 1137, 1138, 1140, 1143, 1146, 1165, 1168}
	return playerEnterSceneNotify
}

func (g *GameManager) PacketPlayerEnterSceneNotifyTp(
	player *model.Player,
	enterType proto.EnterType,
	enterReason uint32,
	prevSceneId uint32,
	prevPos *model.Vector,
) *proto.PlayerEnterSceneNotify {
	return g.PacketPlayerEnterSceneNotifyMp(player, player, enterType, enterReason, prevSceneId, prevPos)
}

func (g *GameManager) PacketPlayerEnterSceneNotifyMp(
	player *model.Player,
	targetPlayer *model.Player,
	enterType proto.EnterType,
	enterReason uint32,
	prevSceneId uint32,
	prevPos *model.Vector,
) *proto.PlayerEnterSceneNotify {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	player.EnterSceneToken = uint32(random.GetRandomInt32(5000, 50000))
	playerEnterSceneNotify := &proto.PlayerEnterSceneNotify{
		PrevSceneId:     prevSceneId,
		PrevPos:         &proto.Vector{X: float32(prevPos.X), Y: float32(prevPos.Y), Z: float32(prevPos.Z)},
		SceneId:         player.SceneId,
		Pos:             &proto.Vector{X: float32(player.Pos.X), Y: float32(player.Pos.Y), Z: float32(player.Pos.Z)},
		SceneBeginTime:  uint64(scene.GetSceneCreateTime()),
		Type:            enterType,
		TargetUid:       targetPlayer.PlayerID,
		EnterSceneToken: player.EnterSceneToken,
		WorldLevel:      targetPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL],
		EnterReason:     enterReason,
		WorldType:       1,
	}
	playerEnterSceneNotify.SceneTransaction = strconv.Itoa(int(player.SceneId)) + "-" +
		strconv.Itoa(int(targetPlayer.PlayerID)) + "-" +
		strconv.Itoa(int(time.Now().Unix())) + "-" +
		"296359"
	playerEnterSceneNotify.SceneTagIdList = []uint32{102, 111, 112, 116, 118, 126, 135, 140, 142, 149, 1091, 1094, 1095, 1099, 1101, 1103, 1105, 1110, 1120, 1122, 1125, 1127, 1129, 1131, 1133, 1135, 1137, 1138, 1140, 1143, 1146, 1165, 1168}
	return playerEnterSceneNotify
}

func (g *GameManager) AddSceneEntityNotifyToPlayer(player *model.Player, visionType proto.VisionType, entityList []*proto.SceneEntityInfo) {
	sceneEntityAppearNotify := &proto.SceneEntityAppearNotify{
		AppearType: visionType,
		EntityList: entityList,
	}
	g.SendMsg(cmd.SceneEntityAppearNotify, player.PlayerID, player.ClientSeq, sceneEntityAppearNotify)
	logger.LOG.Debug("SceneEntityAppearNotify, uid: %v, type: %v, len: %v",
		player.PlayerID, sceneEntityAppearNotify.AppearType, len(sceneEntityAppearNotify.EntityList))
}

func (g *GameManager) AddSceneEntityNotifyBroadcast(scene *Scene, visionType proto.VisionType, entityList []*proto.SceneEntityInfo) {
	sceneEntityAppearNotify := &proto.SceneEntityAppearNotify{
		AppearType: visionType,
		EntityList: entityList,
	}
	for _, scenePlayer := range scene.playerMap {
		g.SendMsg(cmd.SceneEntityAppearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityAppearNotify)
		logger.LOG.Debug("SceneEntityAppearNotify, uid: %v, type: %v, len: %v",
			scenePlayer.PlayerID, sceneEntityAppearNotify.AppearType, len(sceneEntityAppearNotify.EntityList))
	}
}

func (g *GameManager) RemoveSceneEntityNotifyToPlayer(player *model.Player, visionType proto.VisionType, entityIdList []uint32) {
	sceneEntityDisappearNotify := &proto.SceneEntityDisappearNotify{
		EntityList:    entityIdList,
		DisappearType: visionType,
	}
	g.SendMsg(cmd.SceneEntityDisappearNotify, player.PlayerID, player.ClientSeq, sceneEntityDisappearNotify)
	logger.LOG.Debug("SceneEntityDisappearNotify, uid: %v, type: %v, len: %v",
		player.PlayerID, sceneEntityDisappearNotify.DisappearType, len(sceneEntityDisappearNotify.EntityList))
}

func (g *GameManager) RemoveSceneEntityNotifyBroadcast(scene *Scene, visionType proto.VisionType, entityIdList []uint32) {
	sceneEntityDisappearNotify := &proto.SceneEntityDisappearNotify{
		EntityList:    entityIdList,
		DisappearType: visionType,
	}
	for _, scenePlayer := range scene.playerMap {
		g.SendMsg(cmd.SceneEntityDisappearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityDisappearNotify)
		logger.LOG.Debug("SceneEntityDisappearNotify, uid: %v, type: %v, len: %v",
			scenePlayer.PlayerID, sceneEntityDisappearNotify.DisappearType, len(sceneEntityDisappearNotify.EntityList))
	}
}

func (g *GameManager) AddSceneEntityNotify(player *model.Player, visionType proto.VisionType, entityIdList []uint32, broadcast bool) {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	entityList := make([]*proto.SceneEntityInfo, 0)
	for _, entityId := range entityIdList {
		entity := scene.entityMap[entityId]
		if entity == nil {
			logger.LOG.Error("get entity is nil, entityId: %v", entityId)
			continue
		}
		switch entity.entityType {
		case uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_AVATAR):
			if visionType == proto.VisionType_VISION_TYPE_MEET && entity.avatarEntity.uid == player.PlayerID {
				continue
			}
			scenePlayer := USER_MANAGER.GetOnlineUser(entity.avatarEntity.uid)
			if scenePlayer == nil {
				logger.LOG.Error("get scene player is nil, world id: %v, scene id: %v", world.id, scene.id)
				continue
			}
			if entity.avatarEntity.avatarId != scenePlayer.TeamConfig.GetActiveAvatarId() {
				continue
			}
			sceneEntityInfoAvatar := g.PacketSceneEntityInfoAvatar(scene, scenePlayer, scenePlayer.TeamConfig.GetActiveAvatarId())
			entityList = append(entityList, sceneEntityInfoAvatar)
		case uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_WEAPON):
		case uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_MONSTER):
			sceneEntityInfoMonster := g.PacketSceneEntityInfoMonster(scene, entity.id)
			entityList = append(entityList, sceneEntityInfoMonster)
		case uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_GADGET):
			sceneEntityInfoGadget := g.PacketSceneEntityInfoGadget(scene, entity.id)
			entityList = append(entityList, sceneEntityInfoGadget)
		}
	}
	if broadcast {
		g.AddSceneEntityNotifyBroadcast(scene, visionType, entityList)
	} else {
		g.AddSceneEntityNotifyToPlayer(player, visionType, entityList)
	}
}

func (g *GameManager) PacketFightPropMapToPbFightPropList(fightPropMap map[uint32]float32) []*proto.FightPropPair {
	fightPropList := []*proto.FightPropPair{
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_HP),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_HP)],
		},
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_ATTACK),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_ATTACK)],
		},
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_DEFENSE),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_DEFENSE)],
		},
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_CRITICAL),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CRITICAL)],
		},
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_CRITICAL_HURT),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CRITICAL_HURT)],
		},
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_CHARGE_EFFICIENCY),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CHARGE_EFFICIENCY)],
		},
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP)],
		},
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_MAX_HP),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_MAX_HP)],
		},
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_ATTACK),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_ATTACK)],
		},
		{
			PropType:  uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_DEFENSE),
			PropValue: fightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_DEFENSE)],
		},
	}
	return fightPropList
}

func (g *GameManager) PacketSceneEntityInfoAvatar(scene *Scene, player *model.Player, avatarId uint32) *proto.SceneEntityInfo {
	playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)
	entity := scene.GetEntity(playerTeamEntity.avatarEntityMap[avatarId])
	if entity == nil {
		return new(proto.SceneEntityInfo)
	}
	sceneEntityInfo := &proto.SceneEntityInfo{
		EntityType: proto.ProtEntityType_PROT_ENTITY_TYPE_AVATAR,
		EntityId:   entity.id,
		MotionInfo: &proto.MotionInfo{
			Pos: &proto.Vector{
				X: float32(entity.pos.X),
				Y: float32(entity.pos.Y),
				Z: float32(entity.pos.Z),
			},
			Rot: &proto.Vector{
				X: float32(entity.rot.X),
				Y: float32(entity.rot.Y),
				Z: float32(entity.rot.Z),
			},
			Speed: &proto.Vector{},
			State: proto.MotionState(entity.moveState),
		},
		PropList: []*proto.PropPair{{Type: uint32(constant.PlayerPropertyConst.PROP_LEVEL), PropValue: &proto.PropValue{
			Type:  uint32(constant.PlayerPropertyConst.PROP_LEVEL),
			Value: &proto.PropValue_Ival{Ival: int64(entity.level)},
			Val:   int64(entity.level),
		}}},
		FightPropList:    g.PacketFightPropMapToPbFightPropList(entity.fightProp),
		LifeState:        1,
		AnimatorParaList: make([]*proto.AnimatorParameterValueInfoPair, 0),
		Entity: &proto.SceneEntityInfo_Avatar{
			Avatar: g.PacketSceneAvatarInfo(scene, player, avatarId),
		},
		EntityClientData: new(proto.EntityClientData),
		EntityAuthorityInfo: &proto.EntityAuthorityInfo{
			AbilityInfo:         new(proto.AbilitySyncStateInfo),
			RendererChangedInfo: new(proto.EntityRendererChangedInfo),
			AiInfo: &proto.SceneEntityAiInfo{
				IsAiOpen: true,
				BornPos:  new(proto.Vector),
			},
			BornPos: new(proto.Vector),
		},
		LastMoveSceneTimeMs: entity.lastMoveSceneTimeMs,
		LastMoveReliableSeq: entity.lastMoveReliableSeq,
	}
	return sceneEntityInfo
}

func (g *GameManager) PacketSceneEntityInfoMonster(scene *Scene, entityId uint32) *proto.SceneEntityInfo {
	entity := scene.GetEntity(entityId)
	if entity == nil {
		return new(proto.SceneEntityInfo)
	}
	pos := &proto.Vector{
		X: float32(entity.pos.X),
		Y: float32(entity.pos.Y),
		Z: float32(entity.pos.Z),
	}
	sceneEntityInfo := &proto.SceneEntityInfo{
		EntityType: proto.ProtEntityType_PROT_ENTITY_TYPE_MONSTER,
		EntityId:   entity.id,
		MotionInfo: &proto.MotionInfo{
			Pos: pos,
			Rot: &proto.Vector{
				X: float32(entity.rot.X),
				Y: float32(entity.rot.Y),
				Z: float32(entity.rot.Z),
			},
			Speed: &proto.Vector{},
			State: proto.MotionState(entity.moveState),
		},
		PropList: []*proto.PropPair{{Type: uint32(constant.PlayerPropertyConst.PROP_LEVEL), PropValue: &proto.PropValue{
			Type:  uint32(constant.PlayerPropertyConst.PROP_LEVEL),
			Value: &proto.PropValue_Ival{Ival: int64(entity.level)},
			Val:   int64(entity.level),
		}}},
		FightPropList:    g.PacketFightPropMapToPbFightPropList(entity.fightProp),
		LifeState:        1,
		AnimatorParaList: make([]*proto.AnimatorParameterValueInfoPair, 0),
		Entity: &proto.SceneEntityInfo_Monster{
			Monster: g.PacketSceneMonsterInfo(),
		},
		EntityClientData: new(proto.EntityClientData),
		EntityAuthorityInfo: &proto.EntityAuthorityInfo{
			AbilityInfo:         new(proto.AbilitySyncStateInfo),
			RendererChangedInfo: new(proto.EntityRendererChangedInfo),
			AiInfo: &proto.SceneEntityAiInfo{
				IsAiOpen: true,
				BornPos:  pos,
			},
			BornPos: pos,
		},
	}
	return sceneEntityInfo
}

func (g *GameManager) PacketSceneEntityInfoGadget(scene *Scene, entityId uint32) *proto.SceneEntityInfo {
	entity := scene.GetEntity(entityId)
	if entity == nil {
		return new(proto.SceneEntityInfo)
	}
	sceneEntityInfo := &proto.SceneEntityInfo{
		EntityType: proto.ProtEntityType_PROT_ENTITY_TYPE_GADGET,
		EntityId:   entity.id,
		MotionInfo: &proto.MotionInfo{
			Pos: &proto.Vector{
				X: float32(entity.pos.X),
				Y: float32(entity.pos.Y),
				Z: float32(entity.pos.Z),
			},
			Rot: &proto.Vector{
				X: float32(entity.rot.X),
				Y: float32(entity.rot.Y),
				Z: float32(entity.rot.Z),
			},
			Speed: &proto.Vector{},
			State: proto.MotionState(entity.moveState),
		},
		PropList: []*proto.PropPair{{Type: uint32(constant.PlayerPropertyConst.PROP_LEVEL), PropValue: &proto.PropValue{
			Type:  uint32(constant.PlayerPropertyConst.PROP_LEVEL),
			Value: &proto.PropValue_Ival{Ival: int64(1)},
			Val:   int64(1),
		}}},
		FightPropList:    g.PacketFightPropMapToPbFightPropList(entity.fightProp),
		LifeState:        1,
		AnimatorParaList: make([]*proto.AnimatorParameterValueInfoPair, 0),
		Entity: &proto.SceneEntityInfo_Gadget{
			Gadget: g.PacketSceneGadgetInfo(entity.gadgetEntity.gatherId),
		},
		EntityClientData: new(proto.EntityClientData),
		EntityAuthorityInfo: &proto.EntityAuthorityInfo{
			AbilityInfo:         new(proto.AbilitySyncStateInfo),
			RendererChangedInfo: new(proto.EntityRendererChangedInfo),
			AiInfo: &proto.SceneEntityAiInfo{
				IsAiOpen: true,
				BornPos:  new(proto.Vector),
			},
			BornPos: new(proto.Vector),
		},
	}
	return sceneEntityInfo
}

func (g *GameManager) PacketSceneAvatarInfo(scene *Scene, player *model.Player, avatarId uint32) *proto.SceneAvatarInfo {
	avatar := player.AvatarMap[avatarId]
	playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)
	equipIdList := make([]uint32, 0)
	weapon := player.AvatarMap[avatarId].EquipWeapon
	equipIdList = append(equipIdList, weapon.ItemId)
	for _, reliquary := range player.AvatarMap[avatarId].EquipReliquaryList {
		equipIdList = append(equipIdList, reliquary.ItemId)
	}
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	sceneAvatarInfo := &proto.SceneAvatarInfo{
		Uid:          player.PlayerID,
		AvatarId:     avatarId,
		Guid:         player.AvatarMap[avatarId].Guid,
		PeerId:       world.GetPlayerPeerId(player),
		EquipIdList:  equipIdList,
		SkillDepotId: player.AvatarMap[avatarId].SkillDepotId,
		Weapon: &proto.SceneWeaponInfo{
			EntityId:    playerTeamEntity.weaponEntityMap[avatar.EquipWeapon.WeaponId],
			GadgetId:    uint32(gdc.CONF.ItemDataMap[int32(weapon.ItemId)].GadgetId),
			ItemId:      weapon.ItemId,
			Guid:        weapon.Guid,
			Level:       uint32(weapon.Level),
			AbilityInfo: new(proto.AbilitySyncStateInfo),
		},
		ReliquaryList:     nil,
		SkillLevelMap:     player.AvatarMap[avatarId].SkillLevelMap,
		WearingFlycloakId: player.AvatarMap[avatarId].FlyCloak,
		CostumeId:         player.AvatarMap[avatarId].Costume,
		BornTime:          uint32(player.AvatarMap[avatarId].BornTime),
		TeamResonanceList: make([]uint32, 0),
	}
	for id := range player.TeamConfig.TeamResonances {
		sceneAvatarInfo.TeamResonanceList = append(sceneAvatarInfo.TeamResonanceList, uint32(id))
	}
	return sceneAvatarInfo
}

func (g *GameManager) PacketSceneMonsterInfo() *proto.SceneMonsterInfo {
	sceneMonsterInfo := &proto.SceneMonsterInfo{
		MonsterId:       20011301,
		AuthorityPeerId: 1,
		BornType:        proto.MonsterBornType_MONSTER_BORN_TYPE_DEFAULT,
		BlockId:         3001,
		TitleId:         3001,
		SpecialNameId:   40,
	}
	return sceneMonsterInfo
}

func (g *GameManager) PacketSceneGadgetInfo(gatherId uint32) *proto.SceneGadgetInfo {
	gather := gdc.CONF.GatherDataMap[int32(gatherId)]
	sceneGadgetInfo := &proto.SceneGadgetInfo{
		GadgetId: uint32(gather.GadgetId),
		//GroupId:          133003011,
		//ConfigId:         11001,
		GadgetState:      0,
		IsEnableInteract: false,
		AuthorityPeerId:  1,
		Content: &proto.SceneGadgetInfo_GatherGadget{
			GatherGadget: &proto.GatherGadgetInfo{
				ItemId:        uint32(gather.ItemId),
				IsForbidGuest: false,
			},
		},
	}
	return sceneGadgetInfo
}

func (g *GameManager) PacketDelTeamEntityNotify(scene *Scene, player *model.Player) *proto.DelTeamEntityNotify {
	playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)
	delTeamEntityNotify := &proto.DelTeamEntityNotify{
		SceneId:         player.SceneId,
		DelEntityIdList: []uint32{playerTeamEntity.teamEntityId},
	}
	return delTeamEntityNotify
}
