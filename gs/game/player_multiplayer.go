package game

import (
	"time"

	"hk4e/common/constant"
	"hk4e/common/mq"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

// 进入世界

func (g *GameManager) PlayerApplyEnterMpReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.PlayerApplyEnterMpReq)
	targetUid := req.TargetUid

	playerApplyEnterMpRsp := &proto.PlayerApplyEnterMpRsp{
		TargetUid: targetUid,
	}
	g.SendMsg(cmd.PlayerApplyEnterMpRsp, player.PlayerID, player.ClientSeq, playerApplyEnterMpRsp)

	g.UserApplyEnterWorld(player, targetUid)
}

func (g *GameManager) PlayerApplyEnterMpResultReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.PlayerApplyEnterMpResultReq)
	applyUid := req.ApplyUid
	isAgreed := req.IsAgreed

	playerApplyEnterMpResultRsp := &proto.PlayerApplyEnterMpResultRsp{
		ApplyUid: applyUid,
		IsAgreed: isAgreed,
	}
	g.SendMsg(cmd.PlayerApplyEnterMpResultRsp, player.PlayerID, player.ClientSeq, playerApplyEnterMpResultRsp)

	g.UserDealEnterWorld(player, applyUid, isAgreed)
}

func (g *GameManager) JoinPlayerSceneReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.JoinPlayerSceneReq)

	joinPlayerSceneRsp := new(proto.JoinPlayerSceneRsp)
	joinPlayerSceneRsp.Retcode = int32(proto.Retcode_RET_JOIN_OTHER_WAIT)
	g.SendMsg(cmd.JoinPlayerSceneRsp, player.PlayerID, player.ClientSeq, joinPlayerSceneRsp)

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.UserWorldRemovePlayer(world, player)

	g.SendMsg(cmd.LeaveWorldNotify, player.PlayerID, player.ClientSeq, new(proto.LeaveWorldNotify))

	hostPlayer := USER_MANAGER.GetOnlineUser(req.TargetUid)
	if hostPlayer == nil {
		// 要加入的世界属于非本地玩家
		if !USER_MANAGER.GetRemoteUserOnlineState(req.TargetUid) {
			// 全服不存在该在线玩家
			logger.Error("target user not online in any game server, uid: %v", req.TargetUid)
			return
		}
		// 走玩家在线跨服迁移流程
		g.OnUserOffline(player.PlayerID, &ChangeGsInfo{
			IsChangeGs:     true,
			JoinHostUserId: req.TargetUid,
		})
		return
	}

	g.JoinOtherWorld(player, hostPlayer)
}

func (g *GameManager) JoinOtherWorld(player *model.Player, hostPlayer *model.Player) {
	hostWorld := WORLD_MANAGER.GetWorldByID(hostPlayer.WorldId)
	if hostPlayer.SceneLoadState == model.SceneEnterDone {
		player.SceneJump = true
		player.SceneId = hostPlayer.SceneId
		player.SceneLoadState = model.SceneNone
		player.Pos.X = hostPlayer.Pos.X
		player.Pos.Y = hostPlayer.Pos.Y
		player.Pos.Z = hostPlayer.Pos.Z
		player.Rot.X = hostPlayer.Rot.X
		player.Rot.Y = hostPlayer.Rot.Y
		player.Rot.Z = hostPlayer.Rot.Z
		g.UserWorldAddPlayer(hostWorld, player)

		playerEnterSceneNotify := g.PacketPlayerEnterSceneNotifyLogin(player, proto.EnterType_ENTER_OTHER)
		g.SendMsg(cmd.PlayerEnterSceneNotify, player.PlayerID, player.ClientSeq, playerEnterSceneNotify)
	} else {
		hostWorld.AddWaitPlayer(player.PlayerID)
	}
}

// 退出世界

func (g *GameManager) PlayerGetForceQuitBanInfoReq(player *model.Player, payloadMsg pb.Message) {
	ok := true
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	for _, worldPlayer := range world.GetAllPlayer() {
		if worldPlayer.SceneLoadState != model.SceneEnterDone {
			ok = false
		}
	}

	if !ok {
		g.SendError(cmd.PlayerGetForceQuitBanInfoRsp, player, &proto.PlayerGetForceQuitBanInfoRsp{}, proto.Retcode_RET_MP_TARGET_PLAYER_IN_TRANSFER)
		return
	}
	g.SendSucc(cmd.PlayerGetForceQuitBanInfoRsp, player, &proto.PlayerGetForceQuitBanInfoRsp{})
}

func (g *GameManager) BackMyWorldReq(player *model.Player, payloadMsg pb.Message) {
	// 其他玩家
	ok := g.UserLeaveWorld(player)

	if !ok {
		g.SendError(cmd.BackMyWorldRsp, player, &proto.BackMyWorldRsp{}, proto.Retcode_RET_MP_TARGET_PLAYER_IN_TRANSFER)
		return
	}
	g.SendSucc(cmd.BackMyWorldRsp, player, &proto.BackMyWorldRsp{})
}

func (g *GameManager) ChangeWorldToSingleModeReq(player *model.Player, payloadMsg pb.Message) {
	// 房主
	ok := g.UserLeaveWorld(player)

	if !ok {
		g.SendError(cmd.ChangeWorldToSingleModeRsp, player, &proto.ChangeWorldToSingleModeRsp{}, proto.Retcode_RET_MP_TARGET_PLAYER_IN_TRANSFER)
		return
	}
	g.SendSucc(cmd.ChangeWorldToSingleModeRsp, player, &proto.ChangeWorldToSingleModeRsp{})
}

func (g *GameManager) SceneKickPlayerReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SceneKickPlayerReq)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if player.PlayerID != world.GetOwner().PlayerID {
		g.SendError(cmd.SceneKickPlayerRsp, player, &proto.SceneKickPlayerRsp{})
		return
	}
	targetUid := req.TargetUid
	targetPlayer := USER_MANAGER.GetOnlineUser(targetUid)
	if targetPlayer == nil {
		logger.Error("player is nil, uid: %v", targetUid)
		return
	}
	ok := g.UserLeaveWorld(targetPlayer)
	if !ok {
		g.SendError(cmd.SceneKickPlayerRsp, player, &proto.SceneKickPlayerRsp{}, proto.Retcode_RET_MP_TARGET_PLAYER_IN_TRANSFER)
		return
	}

	sceneKickPlayerNotify := &proto.SceneKickPlayerNotify{
		TargetUid: targetUid,
		KickerUid: player.PlayerID,
	}
	for _, worldPlayer := range world.GetAllPlayer() {
		g.SendMsg(cmd.SceneKickPlayerNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, sceneKickPlayerNotify)
	}

	sceneKickPlayerRsp := &proto.SceneKickPlayerRsp{
		TargetUid: targetUid,
	}
	g.SendMsg(cmd.SceneKickPlayerRsp, player.PlayerID, player.ClientSeq, sceneKickPlayerRsp)
}

func (g *GameManager) UserApplyEnterWorld(player *model.Player, targetUid uint32) {
	applyFailNotify := func(reason proto.PlayerApplyEnterMpResultNotify_Reason) {
		playerApplyEnterMpResultNotify := &proto.PlayerApplyEnterMpResultNotify{
			TargetUid:      targetUid,
			TargetNickname: "",
			IsAgreed:       false,
			Reason:         reason,
		}
		g.SendMsg(cmd.PlayerApplyEnterMpResultNotify, player.PlayerID, player.ClientSeq, playerApplyEnterMpResultNotify)
	}
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world.GetMultiplayer() {
		applyFailNotify(proto.PlayerApplyEnterMpResultNotify_PLAYER_CANNOT_ENTER_MP)
		return
	}
	targetPlayer := USER_MANAGER.GetOnlineUser(targetUid)
	if targetPlayer == nil {
		if !USER_MANAGER.GetRemoteUserOnlineState(targetUid) {
			// 全服不存在该在线玩家
			logger.Error("target user not online in any game server, uid: %v", targetUid)
			applyFailNotify(proto.PlayerApplyEnterMpResultNotify_PLAYER_CANNOT_ENTER_MP)
			return
		}
		gsAppId := USER_MANAGER.GetRemoteUserGsAppId(targetUid)
		MESSAGE_QUEUE.SendToGs(gsAppId, &mq.NetMsg{
			MsgType: mq.MsgTypeServer,
			EventId: mq.ServerUserMpReq,
			ServerMsg: &mq.ServerMsg{
				UserMpInfo: &mq.UserMpInfo{
					OriginInfo: &mq.OriginInfo{
						CmdName: "PlayerApplyEnterMpReq",
						UserId:  player.PlayerID,
					},
					HostUserId:  targetUid,
					ApplyUserId: player.PlayerID,
					ApplyPlayerOnlineInfo: &mq.UserBaseInfo{
						UserId:         player.PlayerID,
						Nickname:       player.NickName,
						PlayerLevel:    player.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
						MpSettingType:  uint8(player.PropertiesMap[constant.PLAYER_PROP_PLAYER_MP_SETTING_TYPE]),
						NameCardId:     player.NameCard,
						Signature:      player.Signature,
						HeadImageId:    player.HeadImage,
						WorldPlayerNum: uint32(world.GetWorldPlayerNum()),
					},
				},
			},
		})
		return
	}
	if WORLD_MANAGER.GetMultiplayerWorldNum() >= MAX_MULTIPLAYER_WORLD_NUM {
		// 超过本服务器最大多人世界数量限制
		applyFailNotify(proto.PlayerApplyEnterMpResultNotify_MAX_PLAYER)
		return
	}
	targetWorld := WORLD_MANAGER.GetWorldByID(targetPlayer.WorldId)
	if targetWorld.GetMultiplayer() && targetWorld.GetOwner().PlayerID != targetPlayer.PlayerID {
		// 向同一世界内的非房主玩家申请时直接拒绝
		applyFailNotify(proto.PlayerApplyEnterMpResultNotify_PLAYER_NOT_IN_PLAYER_WORLD)
		return
	}
	mpSetting := targetPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_MP_SETTING_TYPE]
	if mpSetting == 0 {
		// 房主玩家没开权限
		applyFailNotify(proto.PlayerApplyEnterMpResultNotify_SCENE_CANNOT_ENTER)
		return
	} else if mpSetting == 1 {
		g.UserDealEnterWorld(targetPlayer, player.PlayerID, true)
		return
	}
	applyTime, exist := targetPlayer.CoopApplyMap[player.PlayerID]
	if exist && time.Now().UnixNano() < applyTime+int64(10*time.Second) {
		applyFailNotify(proto.PlayerApplyEnterMpResultNotify_PLAYER_CANNOT_ENTER_MP)
		return
	}
	targetPlayer.CoopApplyMap[player.PlayerID] = time.Now().UnixNano()

	playerApplyEnterMpNotify := new(proto.PlayerApplyEnterMpNotify)
	playerApplyEnterMpNotify.SrcPlayerInfo = g.PacketOnlinePlayerInfo(player)
	g.SendMsg(cmd.PlayerApplyEnterMpNotify, targetPlayer.PlayerID, targetPlayer.ClientSeq, playerApplyEnterMpNotify)
}

func (g *GameManager) UserDealEnterWorld(hostPlayer *model.Player, otherUid uint32, agree bool) {
	applyTime, exist := hostPlayer.CoopApplyMap[otherUid]
	if !exist || time.Now().UnixNano() > applyTime+int64(10*time.Second) {
		return
	}
	delete(hostPlayer.CoopApplyMap, otherUid)
	if !agree {
		return
	}
	g.HostEnterMpWorld(hostPlayer, otherUid)

	otherPlayer := USER_MANAGER.GetOnlineUser(otherUid)
	if otherPlayer == nil {
		if !USER_MANAGER.GetRemoteUserOnlineState(otherUid) {
			// 全服不存在该在线玩家
			logger.Error("target user not online in any game server, uid: %v", otherUid)
			return
		}
		gsAppId := USER_MANAGER.GetRemoteUserGsAppId(otherUid)
		MESSAGE_QUEUE.SendToGs(gsAppId, &mq.NetMsg{
			MsgType: mq.MsgTypeServer,
			EventId: mq.ServerUserMpReq,
			ServerMsg: &mq.ServerMsg{
				UserMpInfo: &mq.UserMpInfo{
					OriginInfo: &mq.OriginInfo{
						CmdName: "PlayerApplyEnterMpResultReq",
						UserId:  hostPlayer.PlayerID,
					},
					HostUserId:   hostPlayer.PlayerID,
					ApplyUserId:  otherUid,
					Agreed:       agree,
					HostNickname: hostPlayer.NickName,
				},
			},
		})
		return
	}

	otherPlayerWorld := WORLD_MANAGER.GetWorldByID(otherPlayer.WorldId)
	if otherPlayerWorld.GetMultiplayer() {
		playerApplyEnterMpResultNotify := &proto.PlayerApplyEnterMpResultNotify{
			TargetUid:      hostPlayer.PlayerID,
			TargetNickname: hostPlayer.NickName,
			IsAgreed:       false,
			Reason:         proto.PlayerApplyEnterMpResultNotify_PLAYER_CANNOT_ENTER_MP,
		}
		g.SendMsg(cmd.PlayerApplyEnterMpResultNotify, otherPlayer.PlayerID, otherPlayer.ClientSeq, playerApplyEnterMpResultNotify)
		return
	}

	playerApplyEnterMpResultNotify := &proto.PlayerApplyEnterMpResultNotify{
		TargetUid:      hostPlayer.PlayerID,
		TargetNickname: hostPlayer.NickName,
		IsAgreed:       agree,
		Reason:         proto.PlayerApplyEnterMpResultNotify_PLAYER_JUDGE,
	}
	g.SendMsg(cmd.PlayerApplyEnterMpResultNotify, otherPlayer.PlayerID, otherPlayer.ClientSeq, playerApplyEnterMpResultNotify)
}

func (g *GameManager) HostEnterMpWorld(hostPlayer *model.Player, otherUid uint32) {
	world := WORLD_MANAGER.GetWorldByID(hostPlayer.WorldId)
	if world.GetMultiplayer() {
		return
	}
	world.ChangeToMultiplayer()

	worldDataNotify := &proto.WorldDataNotify{
		WorldPropMap: make(map[uint32]*proto.PropValue),
	}
	// 是否多人游戏
	worldDataNotify.WorldPropMap[2] = &proto.PropValue{
		Type:  2,
		Val:   object.ConvBoolToInt64(world.GetMultiplayer()),
		Value: &proto.PropValue_Ival{Ival: object.ConvBoolToInt64(world.GetMultiplayer())},
	}
	g.SendMsg(cmd.WorldDataNotify, hostPlayer.PlayerID, hostPlayer.ClientSeq, worldDataNotify)

	hostPlayer.SceneJump = true
	hostPlayer.SceneLoadState = model.SceneNone

	hostPlayerEnterSceneNotify := g.PacketPlayerEnterSceneNotifyMp(
		hostPlayer,
		hostPlayer,
		proto.EnterType_ENTER_GOTO,
		uint32(proto.EnterReason_ENTER_REASON_HOST_FROM_SINGLE_TO_MP),
		hostPlayer.SceneId,
		hostPlayer.Pos,
		0,
	)
	g.SendMsg(cmd.PlayerEnterSceneNotify, hostPlayer.PlayerID, hostPlayer.ClientSeq, hostPlayerEnterSceneNotify)

	guestBeginEnterSceneNotify := &proto.GuestBeginEnterSceneNotify{
		SceneId: hostPlayer.SceneId,
		Uid:     otherUid,
	}
	g.SendMsg(cmd.GuestBeginEnterSceneNotify, hostPlayer.PlayerID, hostPlayer.ClientSeq, guestBeginEnterSceneNotify)

	// 仅仅把当前的场上角色的实体消失掉
	activeAvatarId := world.GetPlayerActiveAvatarId(hostPlayer)
	g.RemoveSceneEntityNotifyToPlayer(hostPlayer, proto.VisionType_VISION_MISS, []uint32{world.GetPlayerWorldAvatarEntityId(hostPlayer, activeAvatarId)})
}

func (g *GameManager) UserLeaveWorld(player *model.Player) bool {
	oldWorld := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if !oldWorld.GetMultiplayer() {
		return false
	}
	for _, worldPlayer := range oldWorld.GetAllPlayer() {
		if worldPlayer.SceneLoadState != model.SceneEnterDone {
			return false
		}
	}
	g.ReLoginPlayer(player.PlayerID)
	return true
}

func (g *GameManager) UserWorldAddPlayer(world *World, player *model.Player) {
	if !WORLD_MANAGER.IsBigWorld(world) && world.GetWorldPlayerNum() >= 4 {
		return
	}
	_, exist := world.GetAllPlayer()[player.PlayerID]
	if exist {
		return
	}
	world.AddPlayer(player, player.SceneId)
	player.WorldId = world.GetId()
	if world.GetWorldPlayerNum() > 1 {
		g.UpdateWorldPlayerInfo(world, player)
	}
}

func (g *GameManager) UserWorldRemovePlayer(world *World, player *model.Player) {
	if world.GetMultiplayer() && player.PlayerID == world.GetOwner().PlayerID {
		// 多人世界房主离开剔除所有其他玩家
		for _, worldPlayer := range world.GetAllPlayer() {
			if worldPlayer.PlayerID == world.GetOwner().PlayerID {
				continue
			}
			if ok := g.UserLeaveWorld(worldPlayer); !ok {
				return
			}
		}
	}
	scene := world.GetSceneById(player.SceneId)
	if scene == nil {
		logger.Error("scene is nil, sceneId: %v", player.SceneId)
		return
	}

	// 仅仅把当前的场上角色的实体消失掉
	activeAvatarId := world.GetPlayerActiveAvatarId(player)
	g.RemoveSceneEntityNotifyToPlayer(player, proto.VisionType_VISION_MISS, []uint32{world.GetPlayerWorldAvatarEntityId(player, activeAvatarId)})

	delTeamEntityNotify := g.PacketDelTeamEntityNotify(scene, player)
	g.SendMsg(cmd.DelTeamEntityNotify, player.PlayerID, player.ClientSeq, delTeamEntityNotify)

	if world.GetMultiplayer() {
		playerQuitFromMpNotify := &proto.PlayerQuitFromMpNotify{
			Reason: proto.PlayerQuitFromMpNotify_BACK_TO_MY_WORLD,
		}
		g.SendMsg(cmd.PlayerQuitFromMpNotify, player.PlayerID, player.ClientSeq, playerQuitFromMpNotify)

		activeAvatarId := world.GetPlayerActiveAvatarId(player)
		g.RemoveSceneEntityNotifyBroadcast(scene, proto.VisionType_VISION_REMOVE, []uint32{world.GetPlayerWorldAvatarEntityId(player, activeAvatarId)})
	}

	world.RemovePlayer(player)
	player.WorldId = 0
	if world.GetOwner().PlayerID == player.PlayerID {
		// 房主离开销毁世界
		WORLD_MANAGER.DestroyWorld(world.GetId())
		MESSAGE_QUEUE.SendToFight(world.GetOwner().FightAppId, &mq.NetMsg{
			MsgType: mq.MsgTypeFight,
			EventId: mq.DelFightRoutine,
			FightMsg: &mq.FightMsg{
				FightRoutineId: world.GetId(),
			},
		})
		return
	}
	if world.GetMultiplayer() && world.GetWorldPlayerNum() > 0 {
		g.UpdateWorldPlayerInfo(world, player)
	}
}

func (g *GameManager) UpdateWorldPlayerInfo(hostWorld *World, excludePlayer *model.Player) {
	for _, worldPlayer := range hostWorld.GetAllPlayer() {
		if worldPlayer.PlayerID == excludePlayer.PlayerID {
			continue
		}

		playerPreEnterMpNotify := &proto.PlayerPreEnterMpNotify{
			State:    proto.PlayerPreEnterMpNotify_START,
			Uid:      excludePlayer.PlayerID,
			Nickname: excludePlayer.NickName,
		}
		g.SendMsg(cmd.PlayerPreEnterMpNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, playerPreEnterMpNotify)

		worldPlayerInfoNotify := &proto.WorldPlayerInfoNotify{
			PlayerInfoList: make([]*proto.OnlinePlayerInfo, 0),
			PlayerUidList:  make([]uint32, 0),
		}
		for _, subWorldPlayer := range hostWorld.GetAllPlayer() {
			onlinePlayerInfo := &proto.OnlinePlayerInfo{
				Uid:                 subWorldPlayer.PlayerID,
				Nickname:            subWorldPlayer.NickName,
				PlayerLevel:         subWorldPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
				MpSettingType:       proto.MpSettingType(subWorldPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_MP_SETTING_TYPE]),
				NameCardId:          subWorldPlayer.NameCard,
				Signature:           subWorldPlayer.Signature,
				ProfilePicture:      &proto.ProfilePicture{AvatarId: subWorldPlayer.HeadImage},
				CurPlayerNumInWorld: uint32(hostWorld.GetWorldPlayerNum()),
			}

			worldPlayerInfoNotify.PlayerInfoList = append(worldPlayerInfoNotify.PlayerInfoList, onlinePlayerInfo)
			worldPlayerInfoNotify.PlayerUidList = append(worldPlayerInfoNotify.PlayerUidList, subWorldPlayer.PlayerID)
		}
		g.SendMsg(cmd.WorldPlayerInfoNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, worldPlayerInfoNotify)

		serverTimeNotify := &proto.ServerTimeNotify{
			ServerTime: uint64(time.Now().UnixMilli()),
		}
		g.SendMsg(cmd.ServerTimeNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, serverTimeNotify)

		scenePlayerInfoNotify := &proto.ScenePlayerInfoNotify{
			PlayerInfoList: make([]*proto.ScenePlayerInfo, 0),
		}
		for _, worldPlayer := range hostWorld.GetAllPlayer() {
			onlinePlayerInfo := &proto.OnlinePlayerInfo{
				Uid:                 worldPlayer.PlayerID,
				Nickname:            worldPlayer.NickName,
				PlayerLevel:         worldPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
				MpSettingType:       proto.MpSettingType(worldPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_MP_SETTING_TYPE]),
				NameCardId:          worldPlayer.NameCard,
				Signature:           worldPlayer.Signature,
				ProfilePicture:      &proto.ProfilePicture{AvatarId: worldPlayer.HeadImage},
				CurPlayerNumInWorld: uint32(hostWorld.GetWorldPlayerNum()),
			}
			scenePlayerInfoNotify.PlayerInfoList = append(scenePlayerInfoNotify.PlayerInfoList, &proto.ScenePlayerInfo{
				Uid:              worldPlayer.PlayerID,
				PeerId:           hostWorld.GetPlayerPeerId(worldPlayer),
				Name:             worldPlayer.NickName,
				SceneId:          worldPlayer.SceneId,
				OnlinePlayerInfo: onlinePlayerInfo,
			})
		}
		g.SendMsg(cmd.ScenePlayerInfoNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, scenePlayerInfoNotify)

		sceneTeamUpdateNotify := g.PacketSceneTeamUpdateNotify(hostWorld)
		g.SendMsg(cmd.SceneTeamUpdateNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, sceneTeamUpdateNotify)

		syncTeamEntityNotify := &proto.SyncTeamEntityNotify{
			SceneId:            worldPlayer.SceneId,
			TeamEntityInfoList: make([]*proto.TeamEntityInfo, 0),
		}
		if hostWorld.GetMultiplayer() {
			for _, worldPlayer := range hostWorld.GetAllPlayer() {
				if worldPlayer.PlayerID == worldPlayer.PlayerID {
					continue
				}
				teamEntityInfo := &proto.TeamEntityInfo{
					TeamEntityId:    hostWorld.GetPlayerTeamEntityId(worldPlayer),
					AuthorityPeerId: hostWorld.GetPlayerPeerId(worldPlayer),
					TeamAbilityInfo: new(proto.AbilitySyncStateInfo),
				}
				syncTeamEntityNotify.TeamEntityInfoList = append(syncTeamEntityNotify.TeamEntityInfoList, teamEntityInfo)
			}
		}
		g.SendMsg(cmd.SyncTeamEntityNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, syncTeamEntityNotify)

		syncScenePlayTeamEntityNotify := &proto.SyncScenePlayTeamEntityNotify{
			SceneId: worldPlayer.SceneId,
		}
		g.SendMsg(cmd.SyncScenePlayTeamEntityNotify, worldPlayer.PlayerID, worldPlayer.ClientSeq, syncScenePlayTeamEntityNotify)
	}
}

// 跨服玩家多人世界相关请求

func (g *GameManager) ServerUserMpReq(userMpInfo *mq.UserMpInfo, gsAppId string) {
	switch userMpInfo.OriginInfo.CmdName {
	case "PlayerApplyEnterMpReq":
		applyFailNotify := func(reason proto.PlayerApplyEnterMpResultNotify_Reason) {
			MESSAGE_QUEUE.SendToGs(gsAppId, &mq.NetMsg{
				MsgType: mq.MsgTypeServer,
				EventId: mq.ServerUserMpRsp,
				ServerMsg: &mq.ServerMsg{
					UserMpInfo: &mq.UserMpInfo{
						OriginInfo: userMpInfo.OriginInfo,
						HostUserId: userMpInfo.HostUserId,
						ApplyOk:    false,
						Reason:     int32(reason),
					},
				},
			})
		}
		hostPlayer := USER_MANAGER.GetOnlineUser(userMpInfo.HostUserId)
		if hostPlayer == nil {
			logger.Error("player is nil, uid: %v", userMpInfo.HostUserId)
			applyFailNotify(proto.PlayerApplyEnterMpResultNotify_PLAYER_CANNOT_ENTER_MP)
			return
		}
		if WORLD_MANAGER.GetMultiplayerWorldNum() >= MAX_MULTIPLAYER_WORLD_NUM {
			// 超过本服务器最大多人世界数量限制
			applyFailNotify(proto.PlayerApplyEnterMpResultNotify_MAX_PLAYER)
			return
		}
		hostWorld := WORLD_MANAGER.GetWorldByID(hostPlayer.WorldId)
		if hostWorld.GetMultiplayer() && hostWorld.GetOwner().PlayerID != hostPlayer.PlayerID {
			// 向同一世界内的非房主玩家申请时直接拒绝
			applyFailNotify(proto.PlayerApplyEnterMpResultNotify_PLAYER_NOT_IN_PLAYER_WORLD)
			return
		}
		mpSetting := hostPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_MP_SETTING_TYPE]
		if mpSetting == 0 {
			// 房主玩家没开权限
			applyFailNotify(proto.PlayerApplyEnterMpResultNotify_SCENE_CANNOT_ENTER)
			return
		} else if mpSetting == 1 {
			g.UserDealEnterWorld(hostPlayer, userMpInfo.ApplyUserId, true)
			return
		}
		applyTime, exist := hostPlayer.CoopApplyMap[userMpInfo.ApplyUserId]
		if exist && time.Now().UnixNano() < applyTime+int64(10*time.Second) {
			applyFailNotify(proto.PlayerApplyEnterMpResultNotify_PLAYER_CANNOT_ENTER_MP)
			return
		}
		hostPlayer.CoopApplyMap[userMpInfo.ApplyUserId] = time.Now().UnixNano()

		playerApplyEnterMpNotify := new(proto.PlayerApplyEnterMpNotify)
		playerApplyEnterMpNotify.SrcPlayerInfo = &proto.OnlinePlayerInfo{
			Uid:                 userMpInfo.ApplyPlayerOnlineInfo.UserId,
			Nickname:            userMpInfo.ApplyPlayerOnlineInfo.Nickname,
			PlayerLevel:         userMpInfo.ApplyPlayerOnlineInfo.PlayerLevel,
			MpSettingType:       proto.MpSettingType(userMpInfo.ApplyPlayerOnlineInfo.MpSettingType),
			NameCardId:          userMpInfo.ApplyPlayerOnlineInfo.NameCardId,
			Signature:           userMpInfo.ApplyPlayerOnlineInfo.Signature,
			ProfilePicture:      &proto.ProfilePicture{AvatarId: userMpInfo.ApplyPlayerOnlineInfo.HeadImageId},
			CurPlayerNumInWorld: userMpInfo.ApplyPlayerOnlineInfo.WorldPlayerNum,
		}
		g.SendMsg(cmd.PlayerApplyEnterMpNotify, hostPlayer.PlayerID, hostPlayer.ClientSeq, playerApplyEnterMpNotify)

		MESSAGE_QUEUE.SendToGs(gsAppId, &mq.NetMsg{
			MsgType: mq.MsgTypeServer,
			EventId: mq.ServerUserMpRsp,
			ServerMsg: &mq.ServerMsg{
				UserMpInfo: &mq.UserMpInfo{
					OriginInfo: userMpInfo.OriginInfo,
					HostUserId: userMpInfo.HostUserId,
					ApplyOk:    true,
				},
			},
		})
	case "PlayerApplyEnterMpResultReq":
		applyPlayer := USER_MANAGER.GetOnlineUser(userMpInfo.ApplyUserId)
		if applyPlayer == nil {
			logger.Error("player is nil, uid: %v", userMpInfo.ApplyUserId)
			return
		}
		applyPlayerWorld := WORLD_MANAGER.GetWorldByID(applyPlayer.WorldId)
		if applyPlayerWorld.GetMultiplayer() {
			playerApplyEnterMpResultNotify := &proto.PlayerApplyEnterMpResultNotify{
				TargetUid:      userMpInfo.HostUserId,
				TargetNickname: userMpInfo.HostNickname,
				IsAgreed:       false,
				Reason:         proto.PlayerApplyEnterMpResultNotify_PLAYER_CANNOT_ENTER_MP,
			}
			g.SendMsg(cmd.PlayerApplyEnterMpResultNotify, applyPlayer.PlayerID, applyPlayer.ClientSeq, playerApplyEnterMpResultNotify)
			return
		}

		playerApplyEnterMpResultNotify := &proto.PlayerApplyEnterMpResultNotify{
			TargetUid:      userMpInfo.HostUserId,
			TargetNickname: userMpInfo.HostNickname,
			IsAgreed:       userMpInfo.Agreed,
			Reason:         proto.PlayerApplyEnterMpResultNotify_PLAYER_JUDGE,
		}
		g.SendMsg(cmd.PlayerApplyEnterMpResultNotify, applyPlayer.PlayerID, applyPlayer.ClientSeq, playerApplyEnterMpResultNotify)
	}
}

func (g *GameManager) ServerUserMpRsp(userMpInfo *mq.UserMpInfo) {
	switch userMpInfo.OriginInfo.CmdName {
	case "PlayerApplyEnterMpReq":
		player := USER_MANAGER.GetOnlineUser(userMpInfo.OriginInfo.UserId)
		if player == nil {
			logger.Error("player is nil, uid: %v", userMpInfo.OriginInfo.UserId)
			return
		}
		if !userMpInfo.ApplyOk {
			playerApplyEnterMpResultNotify := &proto.PlayerApplyEnterMpResultNotify{
				TargetUid:      userMpInfo.HostUserId,
				TargetNickname: "",
				IsAgreed:       false,
				Reason:         proto.PlayerApplyEnterMpResultNotify_Reason(userMpInfo.Reason),
			}
			g.SendMsg(cmd.PlayerApplyEnterMpResultNotify, player.PlayerID, player.ClientSeq, playerApplyEnterMpResultNotify)
		}
	}
}
