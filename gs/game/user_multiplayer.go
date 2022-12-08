package game

import (
	"hk4e/pkg/object"
	"time"

	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) PlayerApplyEnterMpReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user apply enter world, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PlayerApplyEnterMpReq)
	targetUid := req.TargetUid

	// PacketPlayerApplyEnterMpRsp
	playerApplyEnterMpRsp := new(proto.PlayerApplyEnterMpRsp)
	playerApplyEnterMpRsp.TargetUid = targetUid
	g.SendMsg(cmd.PlayerApplyEnterMpRsp, player.PlayerID, player.ClientSeq, playerApplyEnterMpRsp)

	ok := g.UserApplyEnterWorld(player, targetUid)
	if !ok {
		// PacketPlayerApplyEnterMpResultNotify
		playerApplyEnterMpResultNotify := new(proto.PlayerApplyEnterMpResultNotify)
		playerApplyEnterMpResultNotify.TargetUid = targetUid
		playerApplyEnterMpResultNotify.TargetNickname = ""
		playerApplyEnterMpResultNotify.IsAgreed = false
		playerApplyEnterMpResultNotify.Reason = proto.PlayerApplyEnterMpResultNotify_REASON_PLAYER_CANNOT_ENTER_MP
		g.SendMsg(cmd.PlayerApplyEnterMpResultNotify, player.PlayerID, player.ClientSeq, playerApplyEnterMpResultNotify)
	}
}

func (g *GameManager) PlayerApplyEnterMpResultReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user deal world enter apply, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PlayerApplyEnterMpResultReq)
	applyUid := req.ApplyUid
	isAgreed := req.IsAgreed

	// PacketPlayerApplyEnterMpResultRsp
	playerApplyEnterMpResultRsp := new(proto.PlayerApplyEnterMpResultRsp)
	playerApplyEnterMpResultRsp.ApplyUid = applyUid
	playerApplyEnterMpResultRsp.IsAgreed = isAgreed
	g.SendMsg(cmd.PlayerApplyEnterMpResultRsp, player.PlayerID, player.ClientSeq, playerApplyEnterMpResultRsp)

	g.UserDealEnterWorld(player, applyUid, isAgreed)
}

func (g *GameManager) PlayerGetForceQuitBanInfoReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get world exit ban info, uid: %v", player.PlayerID)

	result := true
	world := g.worldManager.GetWorldByID(player.WorldId)
	for _, worldPlayer := range world.playerMap {
		if worldPlayer.SceneLoadState != model.SceneEnterDone {
			result = false
		}
	}

	// PacketPlayerGetForceQuitBanInfoRsp
	playerGetForceQuitBanInfoRsp := new(proto.PlayerGetForceQuitBanInfoRsp)
	if result {
		playerGetForceQuitBanInfoRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SUCC)
	} else {
		playerGetForceQuitBanInfoRsp.Retcode = int32(proto.Retcode_RETCODE_RET_MP_TARGET_PLAYER_IN_TRANSFER)
	}
	g.SendMsg(cmd.PlayerGetForceQuitBanInfoRsp, player.PlayerID, player.ClientSeq, playerGetForceQuitBanInfoRsp)
}

func (g *GameManager) BackMyWorldReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user back world, uid: %v", player.PlayerID)

	// 其他玩家
	ok := g.UserLeaveWorld(player)

	// PacketBackMyWorldRsp
	backMyWorldRsp := new(proto.BackMyWorldRsp)
	if ok {
		backMyWorldRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SUCC)
	} else {
		backMyWorldRsp.Retcode = int32(proto.Retcode_RETCODE_RET_MP_TARGET_PLAYER_IN_TRANSFER)
	}
	g.SendMsg(cmd.BackMyWorldRsp, player.PlayerID, player.ClientSeq, backMyWorldRsp)
}

func (g *GameManager) ChangeWorldToSingleModeReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user change world to single, uid: %v", player.PlayerID)

	// 房主
	ok := g.UserLeaveWorld(player)

	// PacketChangeWorldToSingleModeRsp
	changeWorldToSingleModeRsp := new(proto.ChangeWorldToSingleModeRsp)
	if ok {
		changeWorldToSingleModeRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SUCC)
	} else {
		changeWorldToSingleModeRsp.Retcode = int32(proto.Retcode_RETCODE_RET_MP_TARGET_PLAYER_IN_TRANSFER)
	}
	g.SendMsg(cmd.ChangeWorldToSingleModeRsp, player.PlayerID, player.ClientSeq, changeWorldToSingleModeRsp)
}

func (g *GameManager) SceneKickPlayerReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user kick player, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SceneKickPlayerReq)
	targetUid := req.TargetUid

	targetPlayer := g.userManager.GetOnlineUser(targetUid)
	ok := g.UserLeaveWorld(targetPlayer)
	if ok {
		// PacketSceneKickPlayerNotify
		sceneKickPlayerNotify := new(proto.SceneKickPlayerNotify)
		sceneKickPlayerNotify.TargetUid = targetUid
		sceneKickPlayerNotify.KickerUid = player.PlayerID
		world := g.worldManager.GetWorldByID(player.WorldId)
		for _, worldPlayer := range world.playerMap {
			g.SendMsg(cmd.SceneKickPlayerNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, sceneKickPlayerNotify)
		}
	}

	// PacketSceneKickPlayerRsp
	sceneKickPlayerRsp := new(proto.SceneKickPlayerRsp)
	if ok {
		sceneKickPlayerRsp.TargetUid = targetUid
	} else {
		sceneKickPlayerRsp.Retcode = int32(proto.Retcode_RETCODE_RET_MP_TARGET_PLAYER_IN_TRANSFER)
	}
	g.SendMsg(cmd.SceneKickPlayerRsp, player.PlayerID, player.ClientSeq, sceneKickPlayerRsp)
}

func (g *GameManager) JoinPlayerSceneReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user join player scene, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.JoinPlayerSceneReq)

	hostPlayer := g.userManager.GetOnlineUser(req.TargetUid)
	hostWorld := g.worldManager.GetWorldByID(hostPlayer.WorldId)

	_, exist := hostWorld.waitEnterPlayerMap[player.PlayerID]
	if !exist {
		return
	}

	joinPlayerSceneRsp := new(proto.JoinPlayerSceneRsp)
	joinPlayerSceneRsp.Retcode = int32(proto.Retcode_RETCODE_RET_JOIN_OTHER_WAIT)
	g.SendMsg(cmd.JoinPlayerSceneRsp, player.PlayerID, player.ClientSeq, joinPlayerSceneRsp)

	world := g.worldManager.GetWorldByID(player.WorldId)
	g.UserWorldRemovePlayer(world, player)

	g.SendMsg(cmd.LeaveWorldNotify, player.PlayerID, 0, new(proto.LeaveWorldNotify))

	//g.LoginNotify(player.PlayerID, player, 0)

	if hostPlayer.SceneLoadState == model.SceneEnterDone {
		delete(hostWorld.waitEnterPlayerMap, player.PlayerID)
		player.Pos = &model.Vector{
			X: hostPlayer.Pos.X,
			Y: hostPlayer.Pos.Y,
			Z: hostPlayer.Pos.Z,
		}
		player.Rot = &model.Vector{
			X: hostPlayer.Rot.X,
			Y: hostPlayer.Rot.Y,
			Z: hostPlayer.Rot.Z,
		}
		player.SceneId = hostPlayer.SceneId

		g.UserWorldAddPlayer(hostWorld, player)

		player.SceneLoadState = model.SceneNone
		g.SendMsg(cmd.PlayerEnterSceneNotify, player.PlayerID, 0, g.PacketPlayerEnterSceneNotifyLogin(player, proto.EnterType_ENTER_TYPE_OTHER))
	}
}

func (g *GameManager) UserApplyEnterWorld(player *model.Player, targetUid uint32) bool {
	targetPlayer := g.userManager.GetOnlineUser(targetUid)
	if targetPlayer == nil {
		return false
	}
	world := g.worldManager.GetWorldByID(player.WorldId)
	if world.multiplayer {
		return false
	}
	applyTime, exist := targetPlayer.CoopApplyMap[player.PlayerID]
	if exist && time.Now().UnixNano() < applyTime+int64(10*time.Second) {
		return false
	}
	targetPlayer.CoopApplyMap[player.PlayerID] = time.Now().UnixNano()
	targetWorld := g.worldManager.GetWorldByID(targetPlayer.WorldId)
	if targetWorld.multiplayer && targetWorld.owner.PlayerID != targetPlayer.PlayerID {
		return false
	}

	// PacketPlayerApplyEnterMpNotify
	playerApplyEnterMpNotify := new(proto.PlayerApplyEnterMpNotify)
	playerApplyEnterMpNotify.SrcPlayerInfo = g.PacketOnlinePlayerInfo(player)
	g.SendMsg(cmd.PlayerApplyEnterMpNotify, targetPlayer.PlayerID, targetPlayer.ClientSeq, playerApplyEnterMpNotify)
	return true
}

func (g *GameManager) UserDealEnterWorld(hostPlayer *model.Player, otherUid uint32, agree bool) {
	otherPlayer := g.userManager.GetOnlineUser(otherUid)
	if otherPlayer == nil {
		return
	}
	applyTime, exist := hostPlayer.CoopApplyMap[otherUid]
	if !exist || time.Now().UnixNano() > applyTime+int64(10*time.Second) {
		return
	}
	delete(hostPlayer.CoopApplyMap, otherUid)
	otherPlayerWorld := g.worldManager.GetWorldByID(otherPlayer.WorldId)
	if otherPlayerWorld.multiplayer {
		// PacketPlayerApplyEnterMpResultNotify
		playerApplyEnterMpResultNotify := new(proto.PlayerApplyEnterMpResultNotify)
		playerApplyEnterMpResultNotify.TargetUid = hostPlayer.PlayerID
		playerApplyEnterMpResultNotify.TargetNickname = hostPlayer.NickName
		playerApplyEnterMpResultNotify.IsAgreed = false
		playerApplyEnterMpResultNotify.Reason = proto.PlayerApplyEnterMpResultNotify_REASON_PLAYER_CANNOT_ENTER_MP
		g.SendMsg(cmd.PlayerApplyEnterMpResultNotify, otherPlayer.PlayerID, otherPlayer.ClientSeq, playerApplyEnterMpResultNotify)
		return
	}

	// PacketPlayerApplyEnterMpResultNotify
	playerApplyEnterMpResultNotify := new(proto.PlayerApplyEnterMpResultNotify)
	playerApplyEnterMpResultNotify.TargetUid = hostPlayer.PlayerID
	playerApplyEnterMpResultNotify.TargetNickname = hostPlayer.NickName
	playerApplyEnterMpResultNotify.IsAgreed = agree
	playerApplyEnterMpResultNotify.Reason = proto.PlayerApplyEnterMpResultNotify_REASON_PLAYER_JUDGE
	g.SendMsg(cmd.PlayerApplyEnterMpResultNotify, otherPlayer.PlayerID, otherPlayer.ClientSeq, playerApplyEnterMpResultNotify)

	if !agree {
		return
	}
	world := g.worldManager.GetWorldByID(hostPlayer.WorldId)
	world.waitEnterPlayerMap[otherPlayer.PlayerID] = time.Now().UnixMilli()
	if world.multiplayer {
		return
	}

	world.ChangeToMP()

	// PacketWorldDataNotify
	worldDataNotify := new(proto.WorldDataNotify)
	worldDataNotify.WorldPropMap = make(map[uint32]*proto.PropValue)
	// 是否多人游戏
	worldDataNotify.WorldPropMap[2] = &proto.PropValue{
		Type:  2,
		Val:   object.ConvBoolToInt64(world.multiplayer),
		Value: &proto.PropValue_Ival{Ival: object.ConvBoolToInt64(world.multiplayer)},
	}
	g.SendMsg(cmd.WorldDataNotify, hostPlayer.PlayerID, hostPlayer.ClientSeq, worldDataNotify)

	hostPlayer.SceneLoadState = model.SceneNone

	// PacketPlayerEnterSceneNotify
	hostPlayerEnterSceneNotify := g.PacketPlayerEnterSceneNotifyMp(
		hostPlayer,
		hostPlayer,
		proto.EnterType_ENTER_TYPE_GOTO,
		uint32(constant.EnterReasonConst.HostFromSingleToMp),
		hostPlayer.SceneId,
		hostPlayer.Pos,
	)
	g.SendMsg(cmd.PlayerEnterSceneNotify, hostPlayer.PlayerID, hostPlayer.ClientSeq, hostPlayerEnterSceneNotify)

	// PacketGuestBeginEnterSceneNotify
	guestBeginEnterSceneNotify := new(proto.GuestBeginEnterSceneNotify)
	guestBeginEnterSceneNotify.SceneId = hostPlayer.SceneId
	guestBeginEnterSceneNotify.Uid = otherPlayer.PlayerID
	g.SendMsg(cmd.GuestBeginEnterSceneNotify, hostPlayer.PlayerID, hostPlayer.ClientSeq, guestBeginEnterSceneNotify)

	// 仅仅把当前的场上角色的实体消失掉
	scene := world.GetSceneById(hostPlayer.SceneId)
	playerTeamEntity := scene.GetPlayerTeamEntity(hostPlayer.PlayerID)
	activeAvatarId := hostPlayer.TeamConfig.GetActiveAvatarId()
	g.RemoveSceneEntityNotifyToPlayer(hostPlayer, proto.VisionType_VISION_TYPE_MISS, []uint32{playerTeamEntity.avatarEntityMap[activeAvatarId]})
}

func (g *GameManager) UserLeaveWorld(player *model.Player) bool {
	oldWorld := g.worldManager.GetWorldByID(player.WorldId)
	if !oldWorld.multiplayer {
		return false
	}
	for _, worldPlayer := range oldWorld.playerMap {
		if worldPlayer.SceneLoadState != model.SceneEnterDone {
			return false
		}
	}
	g.UserWorldRemovePlayer(oldWorld, player)
	// PacketClientReconnectNotify
	g.SendMsg(cmd.ClientReconnectNotify, player.PlayerID, 0, new(proto.ClientReconnectNotify))
	return true
}

func (g *GameManager) UserWorldAddPlayer(world *World, player *model.Player) {
	_, exist := world.playerMap[player.PlayerID]
	if exist {
		return
	}
	world.AddPlayer(player, player.SceneId)
	player.WorldId = world.id
	if len(world.playerMap) > 1 {
		g.UpdateWorldPlayerInfo(world, player)
	}
}

func (g *GameManager) UserWorldRemovePlayer(world *World, player *model.Player) {
	if world.multiplayer && player.PlayerID == world.owner.PlayerID {
		// 多人世界房主离开剔除所有其他玩家
		for _, worldPlayer := range world.playerMap {
			if worldPlayer.PlayerID == world.owner.PlayerID {
				continue
			}
			if ok := g.UserLeaveWorld(worldPlayer); !ok {
				return
			}
		}
	}

	scene := world.GetSceneById(player.SceneId)

	// 仅仅把当前的场上角色的实体消失掉
	playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)
	activeAvatarId := player.TeamConfig.GetActiveAvatarId()
	g.RemoveSceneEntityNotifyToPlayer(player, proto.VisionType_VISION_TYPE_MISS, []uint32{playerTeamEntity.avatarEntityMap[activeAvatarId]})

	// PacketDelTeamEntityNotify
	delTeamEntityNotify := g.PacketDelTeamEntityNotify(scene, player)
	g.SendMsg(cmd.DelTeamEntityNotify, player.PlayerID, player.ClientSeq, delTeamEntityNotify)

	if world.multiplayer {
		// PlayerQuitFromMpNotify
		playerQuitFromMpNotify := new(proto.PlayerQuitFromMpNotify)
		playerQuitFromMpNotify.Reason = proto.PlayerQuitFromMpNotify_QUIT_REASON_BACK_TO_MY_WORLD
		g.SendMsg(cmd.PlayerQuitFromMpNotify, player.PlayerID, player.ClientSeq, playerQuitFromMpNotify)

		activeAvatarId := player.TeamConfig.GetActiveAvatarId()
		playerTeamEntity := scene.GetPlayerTeamEntity(player.PlayerID)
		g.RemoveSceneEntityNotifyBroadcast(scene, proto.VisionType_VISION_TYPE_REMOVE, []uint32{playerTeamEntity.avatarEntityMap[activeAvatarId]})
	}

	world.RemovePlayer(player)
	player.WorldId = 0

	if world.multiplayer && len(world.playerMap) > 0 {
		g.UpdateWorldPlayerInfo(world, player)
	}

	if world.owner.PlayerID == player.PlayerID {
		// 房主离开销毁世界
		g.worldManager.DestroyWorld(world.id)
	}
}

func (g *GameManager) UpdateWorldPlayerInfo(hostWorld *World, excludePlayer *model.Player) {
	for _, worldPlayer := range hostWorld.playerMap {
		if worldPlayer.PlayerID == excludePlayer.PlayerID {
			continue
		}
		scene := hostWorld.GetSceneById(worldPlayer.SceneId)

		// PacketPlayerPreEnterMpNotify
		playerPreEnterMpNotify := new(proto.PlayerPreEnterMpNotify)
		playerPreEnterMpNotify.State = proto.PlayerPreEnterMpNotify_STATE_START
		playerPreEnterMpNotify.Uid = excludePlayer.PlayerID
		playerPreEnterMpNotify.Nickname = excludePlayer.NickName
		g.SendMsg(cmd.PlayerPreEnterMpNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, playerPreEnterMpNotify)

		// PacketWorldPlayerInfoNotify
		worldPlayerInfoNotify := new(proto.WorldPlayerInfoNotify)
		for _, subWorldPlayer := range hostWorld.playerMap {
			onlinePlayerInfo := new(proto.OnlinePlayerInfo)
			onlinePlayerInfo.Uid = subWorldPlayer.PlayerID
			onlinePlayerInfo.Nickname = subWorldPlayer.NickName
			onlinePlayerInfo.PlayerLevel = subWorldPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL]
			onlinePlayerInfo.MpSettingType = proto.MpSettingType(subWorldPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_MP_SETTING_TYPE])
			onlinePlayerInfo.NameCardId = subWorldPlayer.NameCard
			onlinePlayerInfo.Signature = subWorldPlayer.Signature
			onlinePlayerInfo.ProfilePicture = &proto.ProfilePicture{AvatarId: subWorldPlayer.HeadImage}
			onlinePlayerInfo.CurPlayerNumInWorld = uint32(len(hostWorld.playerMap))
			worldPlayerInfoNotify.PlayerInfoList = append(worldPlayerInfoNotify.PlayerInfoList, onlinePlayerInfo)
			worldPlayerInfoNotify.PlayerUidList = append(worldPlayerInfoNotify.PlayerUidList, subWorldPlayer.PlayerID)
		}
		g.SendMsg(cmd.WorldPlayerInfoNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, worldPlayerInfoNotify)

		// PacketSceneTimeNotify
		sceneTimeNotify := new(proto.SceneTimeNotify)
		sceneTimeNotify.SceneId = worldPlayer.SceneId
		sceneTimeNotify.SceneTime = uint64(scene.GetSceneTime())
		g.SendMsg(cmd.SceneTimeNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, sceneTimeNotify)

		// PacketScenePlayerInfoNotify
		scenePlayerInfoNotify := new(proto.ScenePlayerInfoNotify)
		for _, subWorldPlayer := range hostWorld.playerMap {
			onlinePlayerInfo := new(proto.OnlinePlayerInfo)
			onlinePlayerInfo.Uid = subWorldPlayer.PlayerID
			onlinePlayerInfo.Nickname = subWorldPlayer.NickName
			onlinePlayerInfo.PlayerLevel = subWorldPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL]
			onlinePlayerInfo.MpSettingType = proto.MpSettingType(subWorldPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_MP_SETTING_TYPE])
			onlinePlayerInfo.NameCardId = subWorldPlayer.NameCard
			onlinePlayerInfo.Signature = subWorldPlayer.Signature
			onlinePlayerInfo.ProfilePicture = &proto.ProfilePicture{AvatarId: subWorldPlayer.HeadImage}
			onlinePlayerInfo.CurPlayerNumInWorld = uint32(len(hostWorld.playerMap))
			scenePlayerInfoNotify.PlayerInfoList = append(scenePlayerInfoNotify.PlayerInfoList, &proto.ScenePlayerInfo{
				Uid:              subWorldPlayer.PlayerID,
				PeerId:           subWorldPlayer.PeerId,
				Name:             subWorldPlayer.NickName,
				SceneId:          subWorldPlayer.SceneId,
				OnlinePlayerInfo: onlinePlayerInfo,
			})
		}
		g.SendMsg(cmd.ScenePlayerInfoNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, scenePlayerInfoNotify)

		// PacketSceneTeamUpdateNotify
		sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(hostWorld)
		g.SendMsg(cmd.SceneTeamUpdateNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, sceneTeamUpdateNotify)

		// PacketSyncTeamEntityNotify
		syncTeamEntityNotify := new(proto.SyncTeamEntityNotify)
		syncTeamEntityNotify.SceneId = worldPlayer.SceneId
		syncTeamEntityNotify.TeamEntityInfoList = make([]*proto.TeamEntityInfo, 0)
		if hostWorld.multiplayer {
			for _, subWorldPlayer := range hostWorld.playerMap {
				if subWorldPlayer.PlayerID == worldPlayer.PlayerID {
					continue
				}
				subWorldPlayerScene := hostWorld.GetSceneById(subWorldPlayer.SceneId)
				subWorldPlayerTeamEntity := subWorldPlayerScene.GetPlayerTeamEntity(subWorldPlayer.PlayerID)
				teamEntityInfo := &proto.TeamEntityInfo{
					TeamEntityId:    subWorldPlayerTeamEntity.teamEntityId,
					AuthorityPeerId: subWorldPlayer.PeerId,
					TeamAbilityInfo: new(proto.AbilitySyncStateInfo),
				}
				syncTeamEntityNotify.TeamEntityInfoList = append(syncTeamEntityNotify.TeamEntityInfoList, teamEntityInfo)
			}
		}
		g.SendMsg(cmd.SyncTeamEntityNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, syncTeamEntityNotify)

		// PacketSyncScenePlayTeamEntityNotify
		syncScenePlayTeamEntityNotify := new(proto.SyncScenePlayTeamEntityNotify)
		syncScenePlayTeamEntityNotify.SceneId = worldPlayer.SceneId
		g.SendMsg(cmd.SyncScenePlayTeamEntityNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, syncScenePlayTeamEntityNotify)
	}
}
