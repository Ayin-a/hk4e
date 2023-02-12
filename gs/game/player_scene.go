package game

import (
	"math"
	"strconv"
	"time"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

const (
	ENTITY_MAX_BATCH_SEND_NUM = 1000 // 单次同步的最大实体数量
)

func (g *GameManager) EnterSceneReadyReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user enter scene ready, uid: %v", player.PlayerID)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)

	enterScenePeerNotify := &proto.EnterScenePeerNotify{
		DestSceneId:     player.SceneId,
		PeerId:          world.GetPlayerPeerId(player),
		HostPeerId:      world.GetPlayerPeerId(world.GetOwner()),
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.EnterScenePeerNotify, player.PlayerID, player.ClientSeq, enterScenePeerNotify)

	enterSceneReadyRsp := &proto.EnterSceneReadyRsp{
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.EnterSceneReadyRsp, player.PlayerID, player.ClientSeq, enterSceneReadyRsp)
}

func (g *GameManager) SceneInitFinishReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user scene init finish, uid: %v", player.PlayerID)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	serverTimeNotify := &proto.ServerTimeNotify{
		ServerTime: uint64(time.Now().UnixMilli()),
	}
	g.SendMsg(cmd.ServerTimeNotify, player.PlayerID, player.ClientSeq, serverTimeNotify)

	if player.SceneJump {
		worldPlayerInfoNotify := &proto.WorldPlayerInfoNotify{
			PlayerInfoList: make([]*proto.OnlinePlayerInfo, 0),
			PlayerUidList:  make([]uint32, 0),
		}
		for _, worldPlayer := range world.GetAllPlayer() {
			onlinePlayerInfo := &proto.OnlinePlayerInfo{
				Uid:                 worldPlayer.PlayerID,
				Nickname:            worldPlayer.NickName,
				PlayerLevel:         worldPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
				MpSettingType:       proto.MpSettingType(worldPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_MP_SETTING_TYPE]),
				NameCardId:          worldPlayer.NameCard,
				Signature:           worldPlayer.Signature,
				ProfilePicture:      &proto.ProfilePicture{AvatarId: worldPlayer.HeadImage},
				CurPlayerNumInWorld: uint32(world.GetWorldPlayerNum()),
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
			Val:   int64(world.GetWorldLevel()),
			Value: &proto.PropValue_Ival{Ival: int64(world.GetWorldLevel())},
		}
		// 是否多人游戏
		worldDataNotify.WorldPropMap[2] = &proto.PropValue{
			Type:  2,
			Val:   object.ConvBoolToInt64(world.GetMultiplayer()),
			Value: &proto.PropValue_Ival{Ival: object.ConvBoolToInt64(world.GetMultiplayer())},
		}
		g.SendMsg(cmd.WorldDataNotify, player.PlayerID, player.ClientSeq, worldDataNotify)

		playerWorldSceneInfoListNotify := &proto.PlayerWorldSceneInfoListNotify{
			InfoList: []*proto.PlayerWorldSceneInfo{
				{SceneId: 1, IsLocked: false, SceneTagIdList: []uint32{}},
				{SceneId: 3, IsLocked: false, SceneTagIdList: []uint32{}},
				{SceneId: 4, IsLocked: false, SceneTagIdList: []uint32{}},
				{SceneId: 5, IsLocked: false, SceneTagIdList: []uint32{}},
				{SceneId: 6, IsLocked: false, SceneTagIdList: []uint32{}},
				{SceneId: 7, IsLocked: false, SceneTagIdList: []uint32{}},
				{SceneId: 9, IsLocked: false, SceneTagIdList: []uint32{}},
			},
		}
		for _, info := range playerWorldSceneInfoListNotify.InfoList {
			for _, sceneTagDataConfig := range gdconf.GetSceneTagDataMap() {
				if uint32(sceneTagDataConfig.SceneId) == info.SceneId {
					info.SceneTagIdList = append(info.SceneTagIdList, uint32(sceneTagDataConfig.SceneTagId))
				}
			}
		}
		g.SendMsg(cmd.PlayerWorldSceneInfoListNotify, player.PlayerID, player.ClientSeq, playerWorldSceneInfoListNotify)

		g.SendMsg(cmd.SceneForceUnlockNotify, player.PlayerID, player.ClientSeq, new(proto.SceneForceUnlockNotify))

		hostPlayerNotify := &proto.HostPlayerNotify{
			HostUid:    world.GetOwner().PlayerID,
			HostPeerId: world.GetPlayerPeerId(world.GetOwner()),
		}
		g.SendMsg(cmd.HostPlayerNotify, player.PlayerID, player.ClientSeq, hostPlayerNotify)

		sceneTimeNotify := &proto.SceneTimeNotify{
			SceneId:   player.SceneId,
			SceneTime: uint64(scene.GetSceneTime()),
		}
		g.SendMsg(cmd.SceneTimeNotify, player.PlayerID, player.ClientSeq, sceneTimeNotify)

		playerGameTimeNotify := &proto.PlayerGameTimeNotify{
			GameTime: scene.GetGameTime(),
			Uid:      player.PlayerID,
		}
		g.SendMsg(cmd.PlayerGameTimeNotify, player.PlayerID, player.ClientSeq, playerGameTimeNotify)

		empty := new(proto.AbilitySyncStateInfo)
		activeAvatarId := world.GetPlayerActiveAvatarId(player)
		playerEnterSceneInfoNotify := &proto.PlayerEnterSceneInfoNotify{
			CurAvatarEntityId: world.GetPlayerWorldAvatarEntityId(player, activeAvatarId),
			EnterSceneToken:   player.EnterSceneToken,
			TeamEnterInfo: &proto.TeamEnterSceneInfo{
				TeamEntityId:        world.GetPlayerTeamEntityId(player),
				TeamAbilityInfo:     empty,
				AbilityControlBlock: new(proto.AbilityControlBlock),
			},
			MpLevelEntityInfo: &proto.MPLevelEntityInfo{
				EntityId:        WORLD_MANAGER.GetWorldByID(player.WorldId).GetMpLevelEntityId(),
				AuthorityPeerId: world.GetPlayerPeerId(player),
				AbilityInfo:     empty,
			},
			AvatarEnterInfo: make([]*proto.AvatarEnterSceneInfo, 0),
		}
		for _, worldAvatar := range world.GetPlayerWorldAvatarList(player) {
			avatar := player.AvatarMap[worldAvatar.GetAvatarId()]
			avatarEnterSceneInfo := &proto.AvatarEnterSceneInfo{
				AvatarGuid:     avatar.Guid,
				AvatarEntityId: world.GetPlayerWorldAvatarEntityId(player, worldAvatar.GetAvatarId()),
				WeaponGuid:     avatar.EquipWeapon.Guid,
				WeaponEntityId: world.GetPlayerWorldAvatarWeaponEntityId(player, worldAvatar.GetAvatarId()),
				AvatarAbilityInfo: &proto.AbilitySyncStateInfo{
					IsInited:           len(worldAvatar.GetAbilityList()) != 0,
					DynamicValueMap:    nil,
					AppliedAbilities:   worldAvatar.GetAbilityList(),
					AppliedModifiers:   worldAvatar.GetModifierList(),
					MixinRecoverInfos:  nil,
					SgvDynamicValueMap: nil,
				},
				WeaponAbilityInfo: empty,
			}
			playerEnterSceneInfoNotify.AvatarEnterInfo = append(playerEnterSceneInfoNotify.AvatarEnterInfo, avatarEnterSceneInfo)
		}
		g.SendMsg(cmd.PlayerEnterSceneInfoNotify, player.PlayerID, player.ClientSeq, playerEnterSceneInfoNotify)

		sceneAreaWeatherNotify := &proto.SceneAreaWeatherNotify{
			WeatherAreaId: 0,
			ClimateType:   uint32(constant.CLIMATE_TYPE_SUNNY),
		}
		g.SendMsg(cmd.SceneAreaWeatherNotify, player.PlayerID, player.ClientSeq, sceneAreaWeatherNotify)
	}

	scenePlayerInfoNotify := &proto.ScenePlayerInfoNotify{
		PlayerInfoList: make([]*proto.ScenePlayerInfo, 0),
	}
	for _, worldPlayer := range world.GetAllPlayer() {
		onlinePlayerInfo := &proto.OnlinePlayerInfo{
			Uid:                 worldPlayer.PlayerID,
			Nickname:            worldPlayer.NickName,
			PlayerLevel:         worldPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
			MpSettingType:       proto.MpSettingType(worldPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_MP_SETTING_TYPE]),
			NameCardId:          worldPlayer.NameCard,
			Signature:           worldPlayer.Signature,
			ProfilePicture:      &proto.ProfilePicture{AvatarId: worldPlayer.HeadImage},
			CurPlayerNumInWorld: uint32(world.GetWorldPlayerNum()),
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

	sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(world)
	g.SendMsg(cmd.SceneTeamUpdateNotify, player.PlayerID, player.ClientSeq, sceneTeamUpdateNotify)

	syncTeamEntityNotify := &proto.SyncTeamEntityNotify{
		SceneId:            player.SceneId,
		TeamEntityInfoList: make([]*proto.TeamEntityInfo, 0),
	}
	if world.GetMultiplayer() {
		for _, worldPlayer := range world.GetAllPlayer() {
			if worldPlayer.PlayerID == player.PlayerID {
				continue
			}
			teamEntityInfo := &proto.TeamEntityInfo{
				TeamEntityId:    world.GetPlayerTeamEntityId(worldPlayer),
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

	g.GCGTavernInit(player) // GCG酒馆信息通知

	g.SendMsg(cmd.DungeonWayPointNotify, player.PlayerID, player.ClientSeq, &proto.DungeonWayPointNotify{})
	g.SendMsg(cmd.DungeonDataNotify, player.PlayerID, player.ClientSeq, &proto.DungeonDataNotify{})

	SceneInitFinishRsp := &proto.SceneInitFinishRsp{
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.SceneInitFinishRsp, player.PlayerID, player.ClientSeq, SceneInitFinishRsp)

	player.SceneLoadState = model.SceneInitFinish
}

func (g *GameManager) EnterSceneDoneReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user enter scene done, uid: %v", player.PlayerID)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	if world.GetMultiplayer() && world.IsPlayerFirstEnter(player) {
		guestPostEnterSceneNotify := &proto.GuestPostEnterSceneNotify{
			SceneId: player.SceneId,
			Uid:     player.PlayerID,
		}
		g.SendMsg(cmd.GuestPostEnterSceneNotify, world.GetOwner().PlayerID, world.GetOwner().ClientSeq, guestPostEnterSceneNotify)
	}

	var visionType = proto.VisionType_VISION_NONE

	activeAvatarId := world.GetPlayerActiveAvatarId(player)
	if player.SceneJump {
		visionType = proto.VisionType_VISION_BORN
	} else {
		visionType = proto.VisionType_VISION_TRANSPORT
	}
	activeAvatarEntityId := world.GetPlayerWorldAvatarEntityId(player, activeAvatarId)
	g.AddSceneEntityNotify(player, visionType, []uint32{activeAvatarEntityId}, true, false)

	aoiManager, exist := WORLD_MANAGER.GetSceneBlockAoiMap()[scene.GetId()]
	if exist {
		objectList := aoiManager.GetObjectListByPos(float32(player.Pos.X), 0.0, float32(player.Pos.Z))
		for objectId, entityConfig := range objectList {
			g.CreateConfigEntity(scene, objectId, entityConfig)
		}
	}
	if player.SceneJump {
		visionType = proto.VisionType_VISION_MEET
	} else {
		visionType = proto.VisionType_VISION_TRANSPORT
	}
	entityMap := scene.GetAllEntity()
	entityIdList := make([]uint32, 0)
	for _, entity := range entityMap {
		if entity.GetId() == activeAvatarEntityId {
			continue
		}
		entityIdList = append(entityIdList, entity.GetId())
	}
	g.AddSceneEntityNotify(player, visionType, entityIdList, false, false)

	sceneAreaWeatherNotify := &proto.SceneAreaWeatherNotify{
		WeatherAreaId: 0,
		ClimateType:   uint32(constant.CLIMATE_TYPE_SUNNY),
	}
	g.SendMsg(cmd.SceneAreaWeatherNotify, player.PlayerID, player.ClientSeq, sceneAreaWeatherNotify)

	enterSceneDoneRsp := &proto.EnterSceneDoneRsp{
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.EnterSceneDoneRsp, player.PlayerID, player.ClientSeq, enterSceneDoneRsp)

	player.SceneLoadState = model.SceneEnterDone
	world.PlayerEnter(player.PlayerID)

	for _, otherPlayerId := range world.GetAllWaitPlayer() {
		// 房主第一次进入多人世界场景完成 开始通知等待列表中的玩家进入场景
		world.RemoveWaitPlayer(otherPlayerId)
		otherPlayer := USER_MANAGER.GetOnlineUser(otherPlayerId)
		if otherPlayer == nil {
			logger.Error("player is nil, uid: %v", otherPlayerId)
			continue
		}
		g.JoinOtherWorld(otherPlayer, player)
	}
}

func (g *GameManager) PostEnterSceneReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user post enter scene, uid: %v", player.PlayerID)

	postEnterSceneRsp := &proto.PostEnterSceneRsp{
		EnterSceneToken: player.EnterSceneToken,
	}
	g.SendMsg(cmd.PostEnterSceneRsp, player.PlayerID, player.ClientSeq, postEnterSceneRsp)
}

func (g *GameManager) ChangeGameTimeReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user change game time, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ChangeGameTimeReq)
	gameTime := req.GameTime
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	scene.ChangeGameTime(gameTime)

	for _, scenePlayer := range scene.GetAllPlayer() {
		playerGameTimeNotify := &proto.PlayerGameTimeNotify{
			GameTime: scene.GetGameTime(),
			Uid:      scenePlayer.PlayerID,
		}
		g.SendMsg(cmd.PlayerGameTimeNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, playerGameTimeNotify)
	}

	changeGameTimeRsp := &proto.ChangeGameTimeRsp{
		CurGameTime: scene.GetGameTime(),
	}
	g.SendMsg(cmd.ChangeGameTimeRsp, player.PlayerID, player.ClientSeq, changeGameTimeRsp)
}

// SceneEntityDrownReq 实体溺水请求
func (g *GameManager) SceneEntityDrownReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SceneEntityDrownReq)

	logger.Error("entity drown, entityId: %v", req.EntityId)

	// PacketSceneEntityDrownRsp
	sceneEntityDrownRsp := new(proto.SceneEntityDrownRsp)
	sceneEntityDrownRsp.EntityId = req.EntityId
	g.SendMsg(cmd.SceneEntityDrownRsp, player.PlayerID, player.ClientSeq, sceneEntityDrownRsp)
}

// CreateConfigEntity 创建配置表里的实体
func (g *GameManager) CreateConfigEntity(scene *Scene, objectId int64, entityConfig any) uint32 {
	switch entityConfig.(type) {
	case *gdconf.Monster:
		monster := entityConfig.(*gdconf.Monster)
		return scene.CreateEntityMonster(&model.Vector{
			X: monster.Pos.X,
			Y: monster.Pos.Y,
			Z: monster.Pos.Z,
		}, &model.Vector{
			X: monster.Rot.X,
			Y: monster.Rot.Y,
			Z: monster.Rot.Z,
		}, uint32(monster.MonsterId), uint8(monster.Level), g.GetTempFightPropMap(), uint32(monster.ConfigId), objectId)
	case *gdconf.Npc:
		npc := entityConfig.(*gdconf.Npc)
		return scene.CreateEntityNpc(&model.Vector{
			X: npc.Pos.X,
			Y: npc.Pos.Y,
			Z: npc.Pos.Z,
		}, &model.Vector{
			X: npc.Rot.X,
			Y: npc.Rot.Y,
			Z: npc.Rot.Z,
		}, uint32(npc.NpcId), 0, 0, 0, uint32(npc.ConfigId), objectId)
	case *gdconf.Gadget:
		gadget := entityConfig.(*gdconf.Gadget)
		// 70500000并不是实际的装置id 根据节点类型对应采集物配置表
		if gadget.PointType != 0 && gadget.GadgetId == 70500000 {
			gatherDataConfig := gdconf.GetGatherDataByPointType(gadget.PointType)
			if gatherDataConfig == nil {
				return 0
			}
			return scene.CreateEntityGadgetGather(&model.Vector{
				X: gadget.Pos.X,
				Y: gadget.Pos.Y,
				Z: gadget.Pos.Z,
			}, &model.Vector{
				X: gadget.Rot.X,
				Y: gadget.Rot.Y,
				Z: gadget.Rot.Z,
			}, uint32(gatherDataConfig.GadgetId), uint32(gatherDataConfig.GatherId), uint32(gadget.ConfigId), objectId)
		} else {
			return scene.CreateEntityGadgetNormal(&model.Vector{
				X: gadget.Pos.X,
				Y: gadget.Pos.Y,
				Z: gadget.Pos.Z,
			}, &model.Vector{
				X: gadget.Rot.X,
				Y: gadget.Rot.Y,
				Z: gadget.Rot.Z,
			}, uint32(gadget.GadgetId), uint32(gadget.ConfigId), objectId)
		}
	default:
		return 0
	}
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
		WorldLevel:             player.PropertiesMap[constant.PLAYER_PROP_PLAYER_WORLD_LEVEL],
		EnterReason:            uint32(constant.EnterReasonLogin),
		IsFirstLoginEnterScene: true,
		WorldType:              1,
		SceneTagIdList:         make([]uint32, 0),
	}
	playerEnterSceneNotify.SceneTransaction = strconv.Itoa(int(player.SceneId)) + "-" +
		strconv.Itoa(int(player.PlayerID)) + "-" +
		strconv.Itoa(int(time.Now().Unix())) + "-" +
		"296359"
	for _, sceneTagDataConfig := range gdconf.GetSceneTagDataMap() {
		if uint32(sceneTagDataConfig.SceneId) == player.SceneId {
			playerEnterSceneNotify.SceneTagIdList = append(playerEnterSceneNotify.SceneTagIdList, uint32(sceneTagDataConfig.SceneTagId))
		}
	}
	return playerEnterSceneNotify
}

func (g *GameManager) PacketPlayerEnterSceneNotifyTp(
	player *model.Player,
	enterType proto.EnterType,
	enterReason uint32,
	prevSceneId uint32,
	prevPos *model.Vector,
	dungeonId uint32,
) *proto.PlayerEnterSceneNotify {
	return g.PacketPlayerEnterSceneNotifyMp(player, player, enterType, enterReason, prevSceneId, prevPos, dungeonId)
}

func (g *GameManager) PacketPlayerEnterSceneNotifyMp(
	player *model.Player,
	targetPlayer *model.Player,
	enterType proto.EnterType,
	enterReason uint32,
	prevSceneId uint32,
	prevPos *model.Vector,
	dungeonId uint32,
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
		WorldLevel:      targetPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_WORLD_LEVEL],
		EnterReason:     enterReason,
		WorldType:       1,
		DungeonId:       dungeonId,
		SceneTagIdList:  make([]uint32, 0),
	}
	playerEnterSceneNotify.SceneTransaction = strconv.Itoa(int(player.SceneId)) + "-" +
		strconv.Itoa(int(targetPlayer.PlayerID)) + "-" +
		strconv.Itoa(int(time.Now().Unix())) + "-" +
		"296359"
	for _, sceneTagDataConfig := range gdconf.GetSceneTagDataMap() {
		if uint32(sceneTagDataConfig.SceneId) == player.SceneId {
			playerEnterSceneNotify.SceneTagIdList = append(playerEnterSceneNotify.SceneTagIdList, uint32(sceneTagDataConfig.SceneTagId))
		}
	}
	return playerEnterSceneNotify
}

func (g *GameManager) AddSceneEntityNotifyToPlayer(player *model.Player, visionType proto.VisionType, entityList []*proto.SceneEntityInfo) {
	sceneEntityAppearNotify := &proto.SceneEntityAppearNotify{
		AppearType: visionType,
		EntityList: entityList,
	}
	g.SendMsg(cmd.SceneEntityAppearNotify, player.PlayerID, player.ClientSeq, sceneEntityAppearNotify)
	logger.Debug("SceneEntityAppearNotify, uid: %v, type: %v, len: %v",
		player.PlayerID, sceneEntityAppearNotify.AppearType, len(sceneEntityAppearNotify.EntityList))
}

func (g *GameManager) AddSceneEntityNotifyBroadcast(player *model.Player, scene *Scene, visionType proto.VisionType, entityList []*proto.SceneEntityInfo, aec bool) {
	sceneEntityAppearNotify := &proto.SceneEntityAppearNotify{
		AppearType: visionType,
		EntityList: entityList,
	}
	for _, scenePlayer := range scene.GetAllPlayer() {
		if aec && scenePlayer.PlayerID == player.PlayerID {
			continue
		}
		g.SendMsg(cmd.SceneEntityAppearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityAppearNotify)
		// logger.Debug("SceneEntityAppearNotify, uid: %v, type: %v, len: %v",
		// 	scenePlayer.PlayerID, sceneEntityAppearNotify.AppearType, len(sceneEntityAppearNotify.EntityList))
	}
}

func (g *GameManager) RemoveSceneEntityNotifyToPlayer(player *model.Player, visionType proto.VisionType, entityIdList []uint32) {
	sceneEntityDisappearNotify := &proto.SceneEntityDisappearNotify{
		EntityList:    entityIdList,
		DisappearType: visionType,
	}
	g.SendMsg(cmd.SceneEntityDisappearNotify, player.PlayerID, player.ClientSeq, sceneEntityDisappearNotify)
	// logger.Debug("SceneEntityDisappearNotify, uid: %v, type: %v, len: %v",
	// 	player.PlayerID, sceneEntityDisappearNotify.DisappearType, len(sceneEntityDisappearNotify.EntityList))
}

func (g *GameManager) RemoveSceneEntityNotifyBroadcast(scene *Scene, visionType proto.VisionType, entityIdList []uint32) {
	sceneEntityDisappearNotify := &proto.SceneEntityDisappearNotify{
		EntityList:    entityIdList,
		DisappearType: visionType,
	}
	for _, scenePlayer := range scene.GetAllPlayer() {
		g.SendMsg(cmd.SceneEntityDisappearNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, sceneEntityDisappearNotify)
		logger.Debug("SceneEntityDisappearNotify, uid: %v, type: %v, len: %v",
			scenePlayer.PlayerID, sceneEntityDisappearNotify.DisappearType, len(sceneEntityDisappearNotify.EntityList))
	}
}

func (g *GameManager) AddSceneEntityNotify(player *model.Player, visionType proto.VisionType, entityIdList []uint32, broadcast bool, aec bool) {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	// 如果总数量太多则分包发送
	times := int(math.Ceil(float64(len(entityIdList)) / float64(ENTITY_MAX_BATCH_SEND_NUM)))
	for i := 0; i < times; i++ {
		begin := ENTITY_MAX_BATCH_SEND_NUM * i
		end := ENTITY_MAX_BATCH_SEND_NUM * (i + 1)
		if i == times-1 {
			end = len(entityIdList)
		}
		entityList := make([]*proto.SceneEntityInfo, 0)
		for _, entityId := range entityIdList[begin:end] {
			entityMap := scene.GetAllEntity()
			entity, exist := entityMap[entityId]
			if !exist {
				logger.Error("get entity is nil, entityId: %v", entityId)
				continue
			}
			switch entity.GetEntityType() {
			case uint32(proto.ProtEntityType_PROT_ENTITY_AVATAR):
				if visionType == proto.VisionType_VISION_MEET && entity.GetAvatarEntity().GetUid() == player.PlayerID {
					continue
				}
				scenePlayer := USER_MANAGER.GetOnlineUser(entity.GetAvatarEntity().GetUid())
				if scenePlayer == nil {
					logger.Error("get scene player is nil, world id: %v, scene id: %v", world.GetId(), scene.GetId())
					continue
				}
				if entity.GetAvatarEntity().GetAvatarId() != world.GetPlayerActiveAvatarId(scenePlayer) {
					continue
				}
				sceneEntityInfoAvatar := g.PacketSceneEntityInfoAvatar(scene, scenePlayer, world.GetPlayerActiveAvatarId(scenePlayer))
				entityList = append(entityList, sceneEntityInfoAvatar)
			case uint32(proto.ProtEntityType_PROT_ENTITY_WEAPON):
			case uint32(proto.ProtEntityType_PROT_ENTITY_MONSTER):
				sceneEntityInfoMonster := g.PacketSceneEntityInfoMonster(scene, entity.GetId())
				entityList = append(entityList, sceneEntityInfoMonster)
			case uint32(proto.ProtEntityType_PROT_ENTITY_NPC):
				sceneEntityInfoNpc := g.PacketSceneEntityInfoNpc(scene, entity.GetId())
				entityList = append(entityList, sceneEntityInfoNpc)
			case uint32(proto.ProtEntityType_PROT_ENTITY_GADGET):
				sceneEntityInfoGadget := g.PacketSceneEntityInfoGadget(scene, entity.GetId())
				entityList = append(entityList, sceneEntityInfoGadget)
			}
		}
		if broadcast {
			g.AddSceneEntityNotifyBroadcast(player, scene, visionType, entityList, aec)
		} else {
			g.AddSceneEntityNotifyToPlayer(player, visionType, entityList)
		}
	}
}

func (g *GameManager) EntityFightPropUpdateNotifyBroadcast(scene *Scene, entity *Entity, fightPropId uint32) {
	for _, player := range scene.GetAllPlayer() {
		fightProp := entity.GetFightProp()
		ntf := &proto.EntityFightPropUpdateNotify{
			FightPropMap: make(map[uint32]float32),
			EntityId:     entity.GetId(),
		}
		ntf.FightPropMap[fightPropId] = fightProp[fightPropId]
		g.SendMsg(cmd.EntityFightPropUpdateNotify, player.PlayerID, player.ClientSeq, ntf)
	}
}

func (g *GameManager) PacketFightPropMapToPbFightPropList(fightPropMap map[uint32]float32) []*proto.FightPropPair {
	fightPropList := []*proto.FightPropPair{
		{PropType: uint32(constant.FIGHT_PROP_BASE_HP), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_BASE_HP)]},
		{PropType: uint32(constant.FIGHT_PROP_BASE_ATTACK), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_BASE_ATTACK)]},
		{PropType: uint32(constant.FIGHT_PROP_BASE_DEFENSE), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_BASE_DEFENSE)]},
		{PropType: uint32(constant.FIGHT_PROP_CRITICAL), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_CRITICAL)]},
		{PropType: uint32(constant.FIGHT_PROP_CRITICAL_HURT), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_CRITICAL_HURT)]},
		{PropType: uint32(constant.FIGHT_PROP_CHARGE_EFFICIENCY), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_CHARGE_EFFICIENCY)]},
		{PropType: uint32(constant.FIGHT_PROP_CUR_HP), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_CUR_HP)]},
		{PropType: uint32(constant.FIGHT_PROP_MAX_HP), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_MAX_HP)]},
		{PropType: uint32(constant.FIGHT_PROP_CUR_ATTACK), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_CUR_ATTACK)]},
		{PropType: uint32(constant.FIGHT_PROP_CUR_DEFENSE), PropValue: fightPropMap[uint32(constant.FIGHT_PROP_CUR_DEFENSE)]},
	}
	return fightPropList
}

func (g *GameManager) PacketSceneEntityInfoAvatar(scene *Scene, player *model.Player, avatarId uint32) *proto.SceneEntityInfo {
	entity := scene.GetEntity(scene.GetWorld().GetPlayerWorldAvatarEntityId(player, avatarId))
	if entity == nil {
		return new(proto.SceneEntityInfo)
	}
	pos := &proto.Vector{
		X: float32(entity.GetPos().X),
		Y: float32(entity.GetPos().Y),
		Z: float32(entity.GetPos().Z),
	}
	worldAvatar := scene.GetWorld().GetWorldAvatarByEntityId(entity.GetId())
	avatar, ok := player.AvatarMap[worldAvatar.GetAvatarId()]
	if !ok {
		logger.Error("avatar error, avatarId: %v", worldAvatar.GetAvatarId())
		return new(proto.SceneEntityInfo)
	}
	sceneEntityInfo := &proto.SceneEntityInfo{
		EntityType: proto.ProtEntityType_PROT_ENTITY_AVATAR,
		EntityId:   entity.GetId(),
		MotionInfo: &proto.MotionInfo{
			Pos: pos,
			Rot: &proto.Vector{
				X: float32(entity.GetRot().X),
				Y: float32(entity.GetRot().Y),
				Z: float32(entity.GetRot().Z),
			},
			Speed: &proto.Vector{},
			State: proto.MotionState(entity.GetMoveState()),
		},
		PropList: []*proto.PropPair{
			{
				Type: uint32(constant.PLAYER_PROP_LEVEL),
				PropValue: &proto.PropValue{
					Type:  uint32(constant.PLAYER_PROP_LEVEL),
					Value: &proto.PropValue_Ival{Ival: int64(avatar.Level)},
					Val:   int64(avatar.Level)},
			},
			{
				Type: uint32(constant.PLAYER_PROP_EXP),
				PropValue: &proto.PropValue{
					Type:  uint32(constant.PLAYER_PROP_EXP),
					Value: &proto.PropValue_Ival{Ival: int64(avatar.Exp)},
					Val:   int64(avatar.Exp)},
			},
			{
				Type: uint32(constant.PLAYER_PROP_BREAK_LEVEL),
				PropValue: &proto.PropValue{
					Type:  uint32(constant.PLAYER_PROP_BREAK_LEVEL),
					Value: &proto.PropValue_Ival{Ival: int64(avatar.Promote)},
					Val:   int64(avatar.Promote)},
			},
			{
				Type: uint32(constant.PLAYER_PROP_SATIATION_VAL),
				PropValue: &proto.PropValue{
					Type:  uint32(constant.PLAYER_PROP_SATIATION_VAL),
					Value: &proto.PropValue_Ival{Ival: int64(avatar.Satiation)},
					Val:   int64(avatar.Satiation)},
			},
			{
				Type: uint32(constant.PLAYER_PROP_SATIATION_PENALTY_TIME),
				PropValue: &proto.PropValue{
					Type:  uint32(constant.PLAYER_PROP_SATIATION_PENALTY_TIME),
					Value: &proto.PropValue_Ival{Ival: int64(avatar.SatiationPenalty)},
					Val:   int64(avatar.SatiationPenalty)},
			},
		},
		FightPropList:    g.PacketFightPropMapToPbFightPropList(avatar.FightPropMap),
		LifeState:        uint32(avatar.LifeState),
		AnimatorParaList: make([]*proto.AnimatorParameterValueInfoPair, 0),
		Entity: &proto.SceneEntityInfo_Avatar{
			Avatar: g.PacketSceneAvatarInfo(scene, player, avatarId),
		},
		EntityClientData: new(proto.EntityClientData),
		EntityAuthorityInfo: &proto.EntityAuthorityInfo{
			AbilityInfo: &proto.AbilitySyncStateInfo{
				IsInited:           len(worldAvatar.GetAbilityList()) != 0,
				DynamicValueMap:    nil,
				AppliedAbilities:   worldAvatar.GetAbilityList(),
				AppliedModifiers:   worldAvatar.GetModifierList(),
				MixinRecoverInfos:  nil,
				SgvDynamicValueMap: nil,
			},
			RendererChangedInfo: new(proto.EntityRendererChangedInfo),
			AiInfo: &proto.SceneEntityAiInfo{
				IsAiOpen: true,
				BornPos:  pos,
			},
			BornPos: pos,
		},
		LastMoveSceneTimeMs: entity.GetLastMoveSceneTimeMs(),
		LastMoveReliableSeq: entity.GetLastMoveReliableSeq(),
	}
	return sceneEntityInfo
}

func (g *GameManager) PacketSceneEntityInfoMonster(scene *Scene, entityId uint32) *proto.SceneEntityInfo {
	entity := scene.GetEntity(entityId)
	if entity == nil {
		return new(proto.SceneEntityInfo)
	}
	pos := &proto.Vector{
		X: float32(entity.GetPos().X),
		Y: float32(entity.GetPos().Y),
		Z: float32(entity.GetPos().Z),
	}
	sceneEntityInfo := &proto.SceneEntityInfo{
		EntityType: proto.ProtEntityType_PROT_ENTITY_MONSTER,
		EntityId:   entity.GetId(),
		MotionInfo: &proto.MotionInfo{
			Pos: pos,
			Rot: &proto.Vector{
				X: float32(entity.GetRot().X),
				Y: float32(entity.GetRot().Y),
				Z: float32(entity.GetRot().Z),
			},
			Speed: &proto.Vector{},
			State: proto.MotionState(entity.GetMoveState()),
		},
		PropList: []*proto.PropPair{{Type: uint32(constant.PLAYER_PROP_LEVEL), PropValue: &proto.PropValue{
			Type:  uint32(constant.PLAYER_PROP_LEVEL),
			Value: &proto.PropValue_Ival{Ival: int64(entity.GetLevel())},
			Val:   int64(entity.GetLevel()),
		}}},
		FightPropList:    g.PacketFightPropMapToPbFightPropList(entity.GetFightProp()),
		LifeState:        uint32(entity.GetLifeState()),
		AnimatorParaList: make([]*proto.AnimatorParameterValueInfoPair, 0),
		Entity: &proto.SceneEntityInfo_Monster{
			Monster: g.PacketSceneMonsterInfo(entity),
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

func (g *GameManager) PacketSceneEntityInfoNpc(scene *Scene, entityId uint32) *proto.SceneEntityInfo {
	entity := scene.GetEntity(entityId)
	if entity == nil {
		return new(proto.SceneEntityInfo)
	}
	pos := &proto.Vector{
		X: float32(entity.GetPos().X),
		Y: float32(entity.GetPos().Y),
		Z: float32(entity.GetPos().Z),
	}
	sceneEntityInfo := &proto.SceneEntityInfo{
		EntityType: proto.ProtEntityType_PROT_ENTITY_NPC,
		EntityId:   entity.GetId(),
		MotionInfo: &proto.MotionInfo{
			Pos: pos,
			Rot: &proto.Vector{
				X: float32(entity.GetRot().X),
				Y: float32(entity.GetRot().Y),
				Z: float32(entity.GetRot().Z),
			},
			Speed: &proto.Vector{},
			State: proto.MotionState(entity.GetMoveState()),
		},
		PropList: []*proto.PropPair{{Type: uint32(constant.PLAYER_PROP_LEVEL), PropValue: &proto.PropValue{
			Type:  uint32(constant.PLAYER_PROP_LEVEL),
			Value: &proto.PropValue_Ival{Ival: int64(entity.GetLevel())},
			Val:   int64(entity.GetLevel()),
		}}},
		FightPropList:    g.PacketFightPropMapToPbFightPropList(entity.GetFightProp()),
		LifeState:        uint32(entity.GetLifeState()),
		AnimatorParaList: make([]*proto.AnimatorParameterValueInfoPair, 0),
		Entity: &proto.SceneEntityInfo_Npc{
			Npc: g.PacketSceneNpcInfo(entity.GetNpcEntity()),
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
	pos := &proto.Vector{
		X: float32(entity.GetPos().X),
		Y: float32(entity.GetPos().Y),
		Z: float32(entity.GetPos().Z),
	}
	sceneEntityInfo := &proto.SceneEntityInfo{
		EntityType: proto.ProtEntityType_PROT_ENTITY_GADGET,
		EntityId:   entity.GetId(),
		MotionInfo: &proto.MotionInfo{
			Pos: pos,
			Rot: &proto.Vector{
				X: float32(entity.GetRot().X),
				Y: float32(entity.GetRot().Y),
				Z: float32(entity.GetRot().Z),
			},
			Speed: &proto.Vector{},
			State: proto.MotionState(entity.GetMoveState()),
		},
		PropList: []*proto.PropPair{{Type: uint32(constant.PLAYER_PROP_LEVEL), PropValue: &proto.PropValue{
			Type:  uint32(constant.PLAYER_PROP_LEVEL),
			Value: &proto.PropValue_Ival{Ival: int64(1)},
			Val:   int64(1),
		}}},
		FightPropList:    g.PacketFightPropMapToPbFightPropList(entity.GetFightProp()),
		LifeState:        uint32(entity.GetLifeState()),
		AnimatorParaList: make([]*proto.AnimatorParameterValueInfoPair, 0),
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
	gadgetEntity := entity.GetGadgetEntity()
	switch gadgetEntity.GetGadgetType() {
	case GADGET_TYPE_NORMAL:
		sceneEntityInfo.Entity = &proto.SceneEntityInfo_Gadget{
			Gadget: g.PacketSceneGadgetInfoNormal(entity),
		}
	case GADGET_TYPE_GATHER:
		sceneEntityInfo.Entity = &proto.SceneEntityInfo_Gadget{
			Gadget: g.PacketSceneGadgetInfoGather(entity),
		}
	case GADGET_TYPE_CLIENT:
		sceneEntityInfo.Entity = &proto.SceneEntityInfo_Gadget{
			Gadget: g.PacketSceneGadgetInfoClient(gadgetEntity.GetGadgetClientEntity()),
		}
	case GADGET_TYPE_VEHICLE:
		sceneEntityInfo.Entity = &proto.SceneEntityInfo_Gadget{
			Gadget: g.PacketSceneGadgetInfoVehicle(gadgetEntity.GetGadgetVehicleEntity()),
		}
	}
	return sceneEntityInfo
}

func (g *GameManager) PacketSceneAvatarInfo(scene *Scene, player *model.Player, avatarId uint32) *proto.SceneAvatarInfo {
	avatar, ok := player.AvatarMap[avatarId]
	if !ok {
		logger.Error("avatar error, avatarId: %v", avatarId)
		return new(proto.SceneAvatarInfo)
	}
	equipIdList := make([]uint32, len(avatar.EquipReliquaryMap)+1)
	for _, reliquary := range avatar.EquipReliquaryMap {
		equipIdList = append(equipIdList, reliquary.ItemId)
	}
	equipIdList = append(equipIdList, avatar.EquipWeapon.ItemId)
	reliquaryList := make([]*proto.SceneReliquaryInfo, 0, len(avatar.EquipReliquaryMap))
	for _, reliquary := range avatar.EquipReliquaryMap {
		reliquaryList = append(reliquaryList, &proto.SceneReliquaryInfo{
			ItemId:       reliquary.ItemId,
			Guid:         reliquary.Guid,
			Level:        uint32(reliquary.Level),
			PromoteLevel: uint32(reliquary.Promote),
		})
	}
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	sceneAvatarInfo := &proto.SceneAvatarInfo{
		Uid:          player.PlayerID,
		AvatarId:     avatarId,
		Guid:         avatar.Guid,
		PeerId:       world.GetPlayerPeerId(player),
		EquipIdList:  equipIdList,
		SkillDepotId: avatar.SkillDepotId,
		Weapon: &proto.SceneWeaponInfo{
			EntityId:    scene.GetWorld().GetPlayerWorldAvatarWeaponEntityId(player, avatarId),
			GadgetId:    uint32(gdconf.GetItemDataById(int32(avatar.EquipWeapon.ItemId)).GadgetId),
			ItemId:      avatar.EquipWeapon.ItemId,
			Guid:        avatar.EquipWeapon.Guid,
			Level:       uint32(avatar.EquipWeapon.Level),
			AbilityInfo: new(proto.AbilitySyncStateInfo),
		},
		ReliquaryList:     reliquaryList,
		SkillLevelMap:     avatar.SkillLevelMap,
		WearingFlycloakId: avatar.FlyCloak,
		CostumeId:         avatar.Costume,
		BornTime:          uint32(avatar.BornTime),
		TeamResonanceList: make([]uint32, 0),
	}
	// for id := range player.TeamConfig.TeamResonances {
	//	sceneAvatarInfo.TeamResonanceList = append(sceneAvatarInfo.TeamResonanceList, uint32(id))
	// }
	return sceneAvatarInfo
}

func (g *GameManager) PacketSceneMonsterInfo(entity *Entity) *proto.SceneMonsterInfo {
	sceneMonsterInfo := &proto.SceneMonsterInfo{
		MonsterId:       entity.GetMonsterEntity().GetMonsterId(),
		AuthorityPeerId: 1,
		BornType:        proto.MonsterBornType_MONSTER_BORN_DEFAULT,
		// BlockId:         3001,
		// TitleId:         3001,
		// SpecialNameId:   40,
	}
	return sceneMonsterInfo
}

func (g *GameManager) PacketSceneNpcInfo(entity *NpcEntity) *proto.SceneNpcInfo {
	sceneNpcInfo := &proto.SceneNpcInfo{
		NpcId:         entity.NpcId,
		RoomId:        entity.RoomId,
		ParentQuestId: entity.ParentQuestId,
		BlockId:       entity.BlockId,
	}
	return sceneNpcInfo
}

func (g *GameManager) PacketSceneGadgetInfoNormal(entity *Entity) *proto.SceneGadgetInfo {
	gadgetEntity := entity.GetGadgetEntity()
	sceneGadgetInfo := &proto.SceneGadgetInfo{
		GadgetId:         gadgetEntity.GetGadgetId(),
		GroupId:          0,
		ConfigId:         entity.GetConfigId(),
		GadgetState:      0,
		IsEnableInteract: true,
		AuthorityPeerId:  1,
	}
	return sceneGadgetInfo
}

func (g *GameManager) PacketSceneGadgetInfoGather(entity *Entity) *proto.SceneGadgetInfo {
	gadgetEntity := entity.GetGadgetEntity()
	gatherEntity := gadgetEntity.GetGadgetGatherEntity()
	gatherDataConfig := gdconf.GetGatherDataById(int32(gatherEntity.GetGatherId()))
	if gatherDataConfig == nil {
		logger.Error("gather data error, gatherId: %v", gatherEntity.GetGatherId())
		return new(proto.SceneGadgetInfo)
	}
	sceneGadgetInfo := &proto.SceneGadgetInfo{
		GadgetId:         gadgetEntity.GetGadgetId(),
		GroupId:          0,
		ConfigId:         entity.GetConfigId(),
		GadgetState:      0,
		IsEnableInteract: true,
		AuthorityPeerId:  1,
		Content: &proto.SceneGadgetInfo_GatherGadget{
			GatherGadget: &proto.GatherGadgetInfo{
				ItemId:        uint32(gatherDataConfig.ItemId),
				IsForbidGuest: false,
			},
		},
	}
	return sceneGadgetInfo
}

func (g *GameManager) PacketSceneGadgetInfoClient(gadgetClientEntity *GadgetClientEntity) *proto.SceneGadgetInfo {
	sceneGadgetInfo := &proto.SceneGadgetInfo{
		GadgetId:         gadgetClientEntity.GetConfigId(),
		OwnerEntityId:    gadgetClientEntity.GetOwnerEntityId(),
		AuthorityPeerId:  1,
		IsEnableInteract: true,
		Content: &proto.SceneGadgetInfo_ClientGadget{
			ClientGadget: &proto.ClientGadgetInfo{
				CampId:         gadgetClientEntity.GetCampId(),
				CampType:       gadgetClientEntity.GetCampType(),
				OwnerEntityId:  gadgetClientEntity.GetOwnerEntityId(),
				TargetEntityId: gadgetClientEntity.GetTargetEntityId(),
			},
		},
		PropOwnerEntityId: gadgetClientEntity.GetPropOwnerEntityId(),
	}
	return sceneGadgetInfo
}

func (g *GameManager) PacketSceneGadgetInfoVehicle(gadgetVehicleEntity *GadgetVehicleEntity) *proto.SceneGadgetInfo {
	sceneGadgetInfo := &proto.SceneGadgetInfo{
		GadgetId:         gadgetVehicleEntity.GetVehicleId(),
		AuthorityPeerId:  WORLD_MANAGER.GetWorldByID(gadgetVehicleEntity.GetOwner().WorldId).GetPlayerPeerId(gadgetVehicleEntity.GetOwner()),
		IsEnableInteract: true,
		Content: &proto.SceneGadgetInfo_VehicleInfo{
			VehicleInfo: &proto.VehicleInfo{
				MemberList: make([]*proto.VehicleMember, 0, len(gadgetVehicleEntity.GetMemberMap())),
				OwnerUid:   gadgetVehicleEntity.GetOwner().PlayerID,
				CurStamina: gadgetVehicleEntity.GetCurStamina(),
			},
		},
	}
	return sceneGadgetInfo
}

func (g *GameManager) PacketDelTeamEntityNotify(scene *Scene, player *model.Player) *proto.DelTeamEntityNotify {
	delTeamEntityNotify := &proto.DelTeamEntityNotify{
		SceneId:         player.SceneId,
		DelEntityIdList: []uint32{scene.GetWorld().GetPlayerTeamEntityId(player)},
	}
	return delTeamEntityNotify
}

func (g *GameManager) GetTempFightPropMap() map[uint32]float32 {
	fpm := map[uint32]float32{
		uint32(constant.FIGHT_PROP_CUR_HP):            float32(72.91699),
		uint32(constant.FIGHT_PROP_PHYSICAL_SUB_HURT): float32(0.1),
		uint32(constant.FIGHT_PROP_CUR_DEFENSE):       float32(505.0),
		uint32(constant.FIGHT_PROP_CUR_ATTACK):        float32(45.679916),
		uint32(constant.FIGHT_PROP_ICE_SUB_HURT):      float32(0.1),
		uint32(constant.FIGHT_PROP_BASE_ATTACK):       float32(45.679916),
		uint32(constant.FIGHT_PROP_MAX_HP):            float32(72.91699),
		uint32(constant.FIGHT_PROP_FIRE_SUB_HURT):     float32(0.1),
		uint32(constant.FIGHT_PROP_ELEC_SUB_HURT):     float32(0.1),
		uint32(constant.FIGHT_PROP_WIND_SUB_HURT):     float32(0.1),
		uint32(constant.FIGHT_PROP_ROCK_SUB_HURT):     float32(0.1),
		uint32(constant.FIGHT_PROP_GRASS_SUB_HURT):    float32(0.1),
		uint32(constant.FIGHT_PROP_WATER_SUB_HURT):    float32(0.1),
		uint32(constant.FIGHT_PROP_BASE_HP):           float32(72.91699),
		uint32(constant.FIGHT_PROP_BASE_DEFENSE):      float32(505.0),
	}
	return fpm
}
