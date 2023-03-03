package game

import (
	"regexp"
	"time"
	"unicode/utf8"

	"hk4e/common/constant"
	"hk4e/common/mq"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) GetPlayerSocialDetailReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.GetPlayerSocialDetailReq)
	targetUid := req.Uid

	targetPlayer, _, _ := USER_MANAGER.LoadGlobalPlayer(targetUid)
	if targetPlayer == nil {
		g.SendError(cmd.GetPlayerSocialDetailRsp, player, &proto.GetPlayerSocialDetailRsp{}, proto.Retcode_RET_PLAYER_NOT_EXIST)
		return
	}
	_, exist := player.FriendList[targetPlayer.PlayerID]
	socialDetail := &proto.SocialDetail{
		Uid:                  targetPlayer.PlayerID,
		ProfilePicture:       &proto.ProfilePicture{AvatarId: targetPlayer.HeadImage},
		Nickname:             targetPlayer.NickName,
		Signature:            targetPlayer.Signature,
		Level:                targetPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
		Birthday:             &proto.Birthday{Month: uint32(targetPlayer.Birthday[0]), Day: uint32(targetPlayer.Birthday[1])},
		WorldLevel:           targetPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_WORLD_LEVEL],
		NameCardId:           targetPlayer.NameCard,
		IsShowAvatar:         false,
		FinishAchievementNum: 0,
		IsFriend:             exist,
	}
	getPlayerSocialDetailRsp := &proto.GetPlayerSocialDetailRsp{
		DetailData: socialDetail,
	}
	g.SendMsg(cmd.GetPlayerSocialDetailRsp, player.PlayerID, player.ClientSeq, getPlayerSocialDetailRsp)
}

func (g *GameManager) SetPlayerBirthdayReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SetPlayerBirthdayReq)
	if player.Birthday[0] != 0 || player.Birthday[1] != 0 {
		g.SendError(cmd.SetPlayerBirthdayRsp, player, &proto.SetPlayerBirthdayRsp{})
		return
	}
	birthday := req.Birthday
	player.Birthday[0] = uint8(birthday.Month)
	player.Birthday[1] = uint8(birthday.Day)

	setPlayerBirthdayRsp := &proto.SetPlayerBirthdayRsp{
		Birthday: req.Birthday,
	}
	g.SendMsg(cmd.SetPlayerBirthdayRsp, player.PlayerID, player.ClientSeq, setPlayerBirthdayRsp)
}

func (g *GameManager) SetNameCardReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SetNameCardReq)
	nameCardId := req.NameCardId
	exist := false
	for _, nameCard := range player.NameCardList {
		if nameCard == nameCardId {
			exist = true
		}
	}
	if !exist {
		logger.Error("name card not exist, uid: %v", player.PlayerID)
		return
	}
	player.NameCard = nameCardId

	setNameCardRsp := &proto.SetNameCardRsp{
		NameCardId: nameCardId,
	}
	g.SendMsg(cmd.SetNameCardRsp, player.PlayerID, player.ClientSeq, setNameCardRsp)
}

func (g *GameManager) SetPlayerSignatureReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SetPlayerSignatureReq)
	signature := req.Signature

	setPlayerSignatureRsp := new(proto.SetPlayerSignatureRsp)
	if !object.IsUtf8String(signature) {
		setPlayerSignatureRsp.Retcode = int32(proto.Retcode_RET_SIGNATURE_ILLEGAL)
	} else if utf8.RuneCountInString(signature) > 50 {
		setPlayerSignatureRsp.Retcode = int32(proto.Retcode_RET_SIGNATURE_ILLEGAL)
	} else {
		player.Signature = signature
		setPlayerSignatureRsp.Signature = player.Signature
	}
	g.SendMsg(cmd.SetPlayerSignatureRsp, player.PlayerID, player.ClientSeq, setPlayerSignatureRsp)
}

func (g *GameManager) SetPlayerNameReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SetPlayerNameReq)
	nickName := req.NickName

	setPlayerNameRsp := new(proto.SetPlayerNameRsp)
	if len(nickName) == 0 {
		setPlayerNameRsp.Retcode = int32(proto.Retcode_RET_NICKNAME_IS_EMPTY)
	} else if !object.IsUtf8String(nickName) {
		setPlayerNameRsp.Retcode = int32(proto.Retcode_RET_NICKNAME_UTF8_ERROR)
	} else if utf8.RuneCountInString(nickName) > 14 {
		setPlayerNameRsp.Retcode = int32(proto.Retcode_RET_NICKNAME_TOO_LONG)
	} else if len(regexp.MustCompile(`\d`).FindAllString(nickName, -1)) > 6 {
		setPlayerNameRsp.Retcode = int32(proto.Retcode_RET_NICKNAME_TOO_MANY_DIGITS)
	} else {
		player.NickName = nickName
		setPlayerNameRsp.NickName = player.NickName
	}
	g.SendMsg(cmd.SetPlayerNameRsp, player.PlayerID, player.ClientSeq, setPlayerNameRsp)
}

func (g *GameManager) SetPlayerHeadImageReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SetPlayerHeadImageReq)
	avatarId := req.AvatarId
	dbAvatar := player.GetDbAvatar()
	_, exist := dbAvatar.AvatarMap[avatarId]
	if !exist {
		logger.Error("the head img of the avatar not exist, uid: %v", player.PlayerID)
		return
	}
	player.HeadImage = avatarId

	setPlayerHeadImageRsp := &proto.SetPlayerHeadImageRsp{
		ProfilePicture: &proto.ProfilePicture{AvatarId: player.HeadImage},
	}
	g.SendMsg(cmd.SetPlayerHeadImageRsp, player.PlayerID, player.ClientSeq, setPlayerHeadImageRsp)
}

func (g *GameManager) GetAllUnlockNameCardReq(player *model.Player, payloadMsg pb.Message) {
	getAllUnlockNameCardRsp := &proto.GetAllUnlockNameCardRsp{
		NameCardList: player.NameCardList,
	}
	g.SendMsg(cmd.GetAllUnlockNameCardRsp, player.PlayerID, player.ClientSeq, getAllUnlockNameCardRsp)
}

func (g *GameManager) GetPlayerFriendListReq(player *model.Player, payloadMsg pb.Message) {
	getPlayerFriendListRsp := &proto.GetPlayerFriendListRsp{
		FriendList: make([]*proto.FriendBrief, 0),
	}

	// 获取包含系统的临时好友列表
	// 用于实现好友列表内的系统且不更改原先的内容
	tempFriendList := COMMAND_MANAGER.GetFriendList(player.FriendList)
	for uid := range tempFriendList {

		friendPlayer, online, _ := USER_MANAGER.LoadGlobalPlayer(uid)
		if friendPlayer == nil {
			logger.Error("target player is nil, uid: %v", player.PlayerID)
			continue
		}
		var onlineState proto.FriendOnlineState = 0
		if online {
			onlineState = proto.FriendOnlineState_FRIEND_ONLINE
		} else {
			onlineState = proto.FriendOnlineState_FREIEND_DISCONNECT
		}
		friendBrief := &proto.FriendBrief{
			Uid:               friendPlayer.PlayerID,
			Nickname:          friendPlayer.NickName,
			Level:             friendPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
			ProfilePicture:    &proto.ProfilePicture{AvatarId: friendPlayer.HeadImage},
			WorldLevel:        friendPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_WORLD_LEVEL],
			Signature:         friendPlayer.Signature,
			OnlineState:       onlineState,
			IsMpModeAvailable: true,
			LastActiveTime:    player.OfflineTime,
			NameCardId:        friendPlayer.NameCard,
			Param:             (uint32(time.Now().Unix()) - player.OfflineTime) / 3600 / 24,
			IsGameSource:      true,
			PlatformType:      proto.PlatformType_PC,
		}
		getPlayerFriendListRsp.FriendList = append(getPlayerFriendListRsp.FriendList, friendBrief)
	}
	g.SendMsg(cmd.GetPlayerFriendListRsp, player.PlayerID, player.ClientSeq, getPlayerFriendListRsp)
}

func (g *GameManager) GetPlayerAskFriendListReq(player *model.Player, payloadMsg pb.Message) {
	getPlayerAskFriendListRsp := &proto.GetPlayerAskFriendListRsp{
		AskFriendList: make([]*proto.FriendBrief, 0),
	}
	for uid := range player.FriendApplyList {
		friendPlayer, online, _ := USER_MANAGER.LoadGlobalPlayer(uid)
		if friendPlayer == nil {
			logger.Error("target player is nil, uid: %v", player.PlayerID)
			continue
		}
		var onlineState proto.FriendOnlineState
		if online {
			onlineState = proto.FriendOnlineState_FRIEND_ONLINE
		} else {
			onlineState = proto.FriendOnlineState_FREIEND_DISCONNECT
		}
		friendBrief := &proto.FriendBrief{
			Uid:               friendPlayer.PlayerID,
			Nickname:          friendPlayer.NickName,
			Level:             friendPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
			ProfilePicture:    &proto.ProfilePicture{AvatarId: friendPlayer.HeadImage},
			WorldLevel:        friendPlayer.PropertiesMap[constant.PLAYER_PROP_PLAYER_WORLD_LEVEL],
			Signature:         friendPlayer.Signature,
			OnlineState:       onlineState,
			IsMpModeAvailable: true,
			LastActiveTime:    player.OfflineTime,
			NameCardId:        friendPlayer.NameCard,
			Param:             (uint32(time.Now().Unix()) - player.OfflineTime) / 3600 / 24,
			IsGameSource:      true,
			PlatformType:      proto.PlatformType_PC,
		}
		getPlayerAskFriendListRsp.AskFriendList = append(getPlayerAskFriendListRsp.AskFriendList, friendBrief)
	}
	g.SendMsg(cmd.GetPlayerAskFriendListRsp, player.PlayerID, player.ClientSeq, getPlayerAskFriendListRsp)
}

func (g *GameManager) AskAddFriendReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.AskAddFriendReq)
	targetUid := req.TargetUid

	askAddFriendRsp := &proto.AskAddFriendRsp{
		TargetUid: targetUid,
	}
	g.SendMsg(cmd.AskAddFriendRsp, player.PlayerID, player.ClientSeq, askAddFriendRsp)

	targetPlayer := USER_MANAGER.GetOnlineUser(targetUid)
	if targetPlayer == nil {
		// 非本地玩家
		if USER_MANAGER.GetRemoteUserOnlineState(targetUid) {
			// 远程在线玩家
			gsAppId := USER_MANAGER.GetRemoteUserGsAppId(targetUid)
			MESSAGE_QUEUE.SendToGs(gsAppId, &mq.NetMsg{
				MsgType: mq.MsgTypeServer,
				EventId: mq.ServerAddFriendNotify,
				ServerMsg: &mq.ServerMsg{
					AddFriendInfo: &mq.AddFriendInfo{
						OriginInfo: &mq.OriginInfo{
							CmdName: "AskAddFriendReq",
							UserId:  player.PlayerID,
						},
						TargetUserId: targetUid,
						ApplyPlayerOnlineInfo: &mq.UserBaseInfo{
							UserId:      player.PlayerID,
							Nickname:    player.NickName,
							PlayerLevel: player.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
							NameCardId:  player.NameCard,
							Signature:   player.Signature,
							HeadImageId: player.HeadImage,
							WorldLevel:  player.PropertiesMap[constant.PLAYER_PROP_PLAYER_WORLD_LEVEL],
						},
					},
				},
			})
		} else {
			// 全服离线玩家
			targetPlayer := USER_MANAGER.LoadTempOfflineUser(targetUid, true)
			if targetPlayer == nil {
				logger.Error("apply add friend target player is nil, uid: %v", targetUid)
				return
			}
			_, applyExist := targetPlayer.FriendApplyList[player.PlayerID]
			_, friendExist := targetPlayer.FriendList[player.PlayerID]
			if applyExist || friendExist {
				logger.Error("friend or apply already exist, uid: %v", player.PlayerID)
				return
			}
			targetPlayer.FriendApplyList[player.PlayerID] = true
			USER_MANAGER.SaveTempOfflineUser(targetPlayer)
		}
		return
	}

	_, applyExist := targetPlayer.FriendApplyList[player.PlayerID]
	_, friendExist := targetPlayer.FriendList[player.PlayerID]
	if applyExist || friendExist {
		logger.Error("friend or apply already exist, uid: %v", player.PlayerID)
		return
	}
	targetPlayer.FriendApplyList[player.PlayerID] = true

	// 目标玩家在线则通知
	askAddFriendNotify := &proto.AskAddFriendNotify{
		TargetUid: player.PlayerID,
	}
	askAddFriendNotify.TargetFriendBrief = &proto.FriendBrief{
		Uid:               player.PlayerID,
		Nickname:          player.NickName,
		Level:             player.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
		ProfilePicture:    &proto.ProfilePicture{AvatarId: player.HeadImage},
		WorldLevel:        player.PropertiesMap[constant.PLAYER_PROP_PLAYER_WORLD_LEVEL],
		Signature:         player.Signature,
		OnlineState:       proto.FriendOnlineState_FRIEND_ONLINE,
		IsMpModeAvailable: true,
		LastActiveTime:    player.OfflineTime,
		NameCardId:        player.NameCard,
		Param:             (uint32(time.Now().Unix()) - player.OfflineTime) / 3600 / 24,
		IsGameSource:      true,
		PlatformType:      proto.PlatformType_PC,
	}
	g.SendMsg(cmd.AskAddFriendNotify, targetPlayer.PlayerID, targetPlayer.ClientSeq, askAddFriendNotify)
}

func (g *GameManager) DealAddFriendReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.DealAddFriendReq)
	targetUid := req.TargetUid
	result := req.DealAddFriendResult

	agree := false
	if result == proto.DealAddFriendResultType_DEAL_ADD_FRIEND_ACCEPT {
		agree = true
	}
	if agree {
		player.FriendList[targetUid] = true
	}
	delete(player.FriendApplyList, targetUid)

	dealAddFriendRsp := &proto.DealAddFriendRsp{
		TargetUid:           targetUid,
		DealAddFriendResult: result,
	}
	g.SendMsg(cmd.DealAddFriendRsp, player.PlayerID, player.ClientSeq, dealAddFriendRsp)

	if agree {
		targetPlayer := USER_MANAGER.GetOnlineUser(targetUid)
		if targetPlayer == nil {
			// 非本地玩家
			if USER_MANAGER.GetRemoteUserOnlineState(targetUid) {
				// 远程在线玩家
				gsAppId := USER_MANAGER.GetRemoteUserGsAppId(targetUid)
				MESSAGE_QUEUE.SendToGs(gsAppId, &mq.NetMsg{
					MsgType: mq.MsgTypeServer,
					EventId: mq.ServerAddFriendNotify,
					ServerMsg: &mq.ServerMsg{
						AddFriendInfo: &mq.AddFriendInfo{
							OriginInfo: &mq.OriginInfo{
								CmdName: "DealAddFriendReq",
								UserId:  player.PlayerID,
							},
							TargetUserId: targetUid,
							ApplyPlayerOnlineInfo: &mq.UserBaseInfo{
								UserId: player.PlayerID,
							},
						},
					},
				})
			} else {
				// 全服离线玩家
				targetPlayer := USER_MANAGER.LoadTempOfflineUser(targetUid, true)
				if targetPlayer == nil {
					logger.Error("apply add friend target player is nil, uid: %v", targetUid)
					return
				}
				targetPlayer.FriendList[player.PlayerID] = true
				USER_MANAGER.SaveTempOfflineUser(targetPlayer)
			}
			return
		}
		targetPlayer.FriendList[player.PlayerID] = true
	}
}

func (g *GameManager) GetOnlinePlayerListReq(player *model.Player, payloadMsg pb.Message) {
	count := 0
	getOnlinePlayerListRsp := &proto.GetOnlinePlayerListRsp{
		PlayerInfoList: make([]*proto.OnlinePlayerInfo, 0),
	}
	getOnlinePlayerListRsp.PlayerInfoList = append(getOnlinePlayerListRsp.PlayerInfoList, &proto.OnlinePlayerInfo{
		Uid:                 BigWorldAiUid,
		Nickname:            BigWorldAiName,
		PlayerLevel:         1,
		MpSettingType:       proto.MpSettingType_MP_SETTING_ENTER_AFTER_APPLY,
		NameCardId:          210001,
		Signature:           BigWorldAiSign,
		ProfilePicture:      &proto.ProfilePicture{AvatarId: 10000007},
		CurPlayerNumInWorld: 1,
	})
	count++
	onlinePlayerList := make([]*model.Player, 0)
	// 优先获取本地的在线玩家
	for _, onlinePlayer := range USER_MANAGER.GetAllOnlineUserList() {
		if onlinePlayer.PlayerID == player.PlayerID {
			continue
		}
		if g.IsMainGs() && onlinePlayer.PlayerID == g.GetAi().PlayerID {
			continue
		}
		onlinePlayerList = append(onlinePlayerList, onlinePlayer)
		count++
		if count >= 50 {
			break
		}
	}
	if count < 50 {
		// 本地不够时获取远程的在线玩家
		for _, onlinePlayer := range USER_MANAGER.GetRemoteOnlineUserList(50 - count) {
			if onlinePlayer.PlayerID == player.PlayerID {
				continue
			}
			onlinePlayerList = append(onlinePlayerList, onlinePlayer)
			count++
			if count >= 50 {
				break
			}
		}
	}

	for _, onlinePlayer := range onlinePlayerList {
		onlinePlayerInfo := g.PacketOnlinePlayerInfo(onlinePlayer)
		getOnlinePlayerListRsp.PlayerInfoList = append(getOnlinePlayerListRsp.PlayerInfoList, onlinePlayerInfo)
	}
	g.SendMsg(cmd.GetOnlinePlayerListRsp, player.PlayerID, player.ClientSeq, getOnlinePlayerListRsp)
}

func (g *GameManager) GetOnlinePlayerInfoReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.GetOnlinePlayerInfoReq)
	targetUid, ok := req.PlayerId.(*proto.GetOnlinePlayerInfoReq_TargetUid)
	if !ok {
		return
	}

	targetPlayer, online, _ := USER_MANAGER.LoadGlobalPlayer(targetUid.TargetUid)
	if targetPlayer == nil || !online {
		g.SendError(cmd.GetOnlinePlayerInfoRsp, player, &proto.GetOnlinePlayerInfoRsp{}, proto.Retcode_RET_PLAYER_NOT_ONLINE)
		return
	}

	g.SendMsg(cmd.GetOnlinePlayerInfoRsp, player.PlayerID, player.ClientSeq, &proto.GetOnlinePlayerInfoRsp{
		TargetUid:        targetUid.TargetUid,
		TargetPlayerInfo: g.PacketOnlinePlayerInfo(targetPlayer),
	})
}

func (g *GameManager) PacketOnlinePlayerInfo(player *model.Player) *proto.OnlinePlayerInfo {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	worldPlayerNum := uint32(1)
	// TODO 远程玩家的世界内人数
	if world != nil {
		worldPlayerNum = uint32(world.GetWorldPlayerNum())
	}
	onlinePlayerInfo := &proto.OnlinePlayerInfo{
		Uid:                 player.PlayerID,
		Nickname:            player.NickName,
		PlayerLevel:         player.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL],
		MpSettingType:       proto.MpSettingType(player.PropertiesMap[constant.PLAYER_PROP_PLAYER_MP_SETTING_TYPE]),
		NameCardId:          player.NameCard,
		Signature:           player.Signature,
		ProfilePicture:      &proto.ProfilePicture{AvatarId: player.HeadImage},
		CurPlayerNumInWorld: worldPlayerNum,
	}
	return onlinePlayerInfo
}

// 跨服添加好友通知

func (g *GameManager) ServerAddFriendNotify(addFriendInfo *mq.AddFriendInfo) {
	switch addFriendInfo.OriginInfo.CmdName {
	case "AskAddFriendReq":
		targetPlayer := USER_MANAGER.GetOnlineUser(addFriendInfo.TargetUserId)
		if targetPlayer == nil {
			logger.Error("player is nil, uid: %v", addFriendInfo.TargetUserId)
			return
		}
		_, applyExist := targetPlayer.FriendApplyList[addFriendInfo.ApplyPlayerOnlineInfo.UserId]
		_, friendExist := targetPlayer.FriendList[addFriendInfo.ApplyPlayerOnlineInfo.UserId]
		if applyExist || friendExist {
			logger.Error("friend or apply already exist, uid: %v", addFriendInfo.ApplyPlayerOnlineInfo.UserId)
			return
		}
		targetPlayer.FriendApplyList[addFriendInfo.ApplyPlayerOnlineInfo.UserId] = true

		// 目标玩家在线则通知
		askAddFriendNotify := &proto.AskAddFriendNotify{
			TargetUid: addFriendInfo.ApplyPlayerOnlineInfo.UserId,
		}
		askAddFriendNotify.TargetFriendBrief = &proto.FriendBrief{
			Uid:               addFriendInfo.ApplyPlayerOnlineInfo.UserId,
			Nickname:          addFriendInfo.ApplyPlayerOnlineInfo.Nickname,
			Level:             addFriendInfo.ApplyPlayerOnlineInfo.PlayerLevel,
			ProfilePicture:    &proto.ProfilePicture{AvatarId: addFriendInfo.ApplyPlayerOnlineInfo.HeadImageId},
			WorldLevel:        addFriendInfo.ApplyPlayerOnlineInfo.WorldLevel,
			Signature:         addFriendInfo.ApplyPlayerOnlineInfo.Signature,
			OnlineState:       proto.FriendOnlineState_FRIEND_ONLINE,
			IsMpModeAvailable: true,
			LastActiveTime:    0,
			NameCardId:        addFriendInfo.ApplyPlayerOnlineInfo.NameCardId,
			Param:             0,
			IsGameSource:      true,
			PlatformType:      proto.PlatformType_PC,
		}
		g.SendMsg(cmd.AskAddFriendNotify, targetPlayer.PlayerID, targetPlayer.ClientSeq, askAddFriendNotify)
	case "DealAddFriendReq":
		targetPlayer := USER_MANAGER.GetOnlineUser(addFriendInfo.TargetUserId)
		if targetPlayer == nil {
			logger.Error("player is nil, uid: %v", addFriendInfo.TargetUserId)
			return
		}
		targetPlayer.FriendList[addFriendInfo.ApplyPlayerOnlineInfo.UserId] = true
	}
}
