package game

import (
	"regexp"
	"time"
	"unicode/utf8"

	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) GetPlayerSocialDetailReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get player social detail, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.GetPlayerSocialDetailReq)
	targetUid := req.Uid

	// PacketGetPlayerSocialDetailRsp
	getPlayerSocialDetailRsp := new(proto.GetPlayerSocialDetailRsp)
	// TODO 同步阻塞待优化
	targetPlayer := g.userManager.LoadTempOfflineUserSync(targetUid)
	if targetPlayer != nil {
		socialDetail := new(proto.SocialDetail)
		socialDetail.Uid = targetPlayer.PlayerID
		socialDetail.ProfilePicture = &proto.ProfilePicture{AvatarId: targetPlayer.HeadImage}
		socialDetail.Nickname = targetPlayer.NickName
		socialDetail.Signature = targetPlayer.Signature
		socialDetail.Level = targetPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL]
		socialDetail.Birthday = &proto.Birthday{Month: 2, Day: 13}
		socialDetail.WorldLevel = targetPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL]
		socialDetail.NameCardId = targetPlayer.NameCard
		socialDetail.IsShowAvatar = false
		socialDetail.FinishAchievementNum = 0
		_, exist := player.FriendList[targetPlayer.PlayerID]
		socialDetail.IsFriend = exist
		getPlayerSocialDetailRsp.DetailData = socialDetail
	} else {
		getPlayerSocialDetailRsp.Retcode = int32(proto.Retcode_RETCODE_RET_PLAYER_NOT_EXIST)
	}
	g.SendMsg(cmd.GetPlayerSocialDetailRsp, player.PlayerID, player.ClientSeq, getPlayerSocialDetailRsp)
}

func (g *GameManager) SetPlayerBirthdayReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user set birthday, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SetPlayerBirthdayReq)
	_ = req
}

func (g *GameManager) SetNameCardReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user change name card, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SetNameCardReq)
	nameCardId := req.NameCardId
	exist := false
	for _, nameCard := range player.NameCardList {
		if nameCard == nameCardId {
			exist = true
		}
	}
	if !exist {
		logger.LOG.Error("name card not exist, uid: %v", player.PlayerID)
		return
	}
	player.NameCard = nameCardId

	// PacketSetNameCardRsp
	setNameCardRsp := new(proto.SetNameCardRsp)
	setNameCardRsp.NameCardId = nameCardId
	g.SendMsg(cmd.SetNameCardRsp, player.PlayerID, player.ClientSeq, setNameCardRsp)
}

func (g *GameManager) SetPlayerSignatureReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user change signature, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SetPlayerSignatureReq)
	signature := req.Signature

	// PacketSetPlayerSignatureRsp
	setPlayerSignatureRsp := new(proto.SetPlayerSignatureRsp)
	if !object.IsUtf8String(signature) {
		setPlayerSignatureRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SIGNATURE_ILLEGAL)
	} else if utf8.RuneCountInString(signature) > 50 {
		setPlayerSignatureRsp.Retcode = int32(proto.Retcode_RETCODE_RET_SIGNATURE_ILLEGAL)
	} else {
		player.Signature = signature
		setPlayerSignatureRsp.Signature = player.Signature
	}
	g.SendMsg(cmd.SetPlayerSignatureRsp, player.PlayerID, player.ClientSeq, setPlayerSignatureRsp)
}

func (g *GameManager) SetPlayerNameReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user change nickname, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SetPlayerNameReq)
	nickName := req.NickName

	// PacketSetPlayerNameRsp
	setPlayerNameRsp := new(proto.SetPlayerNameRsp)
	if len(nickName) == 0 {
		setPlayerNameRsp.Retcode = int32(proto.Retcode_RETCODE_RET_NICKNAME_IS_EMPTY)
	} else if !object.IsUtf8String(nickName) {
		setPlayerNameRsp.Retcode = int32(proto.Retcode_RETCODE_RET_NICKNAME_UTF8_ERROR)
	} else if utf8.RuneCountInString(nickName) > 14 {
		setPlayerNameRsp.Retcode = int32(proto.Retcode_RETCODE_RET_NICKNAME_TOO_LONG)
	} else if len(regexp.MustCompile(`\d`).FindAllString(nickName, -1)) > 6 {
		setPlayerNameRsp.Retcode = int32(proto.Retcode_RETCODE_RET_NICKNAME_TOO_MANY_DIGITS)
	} else {
		player.NickName = nickName
		setPlayerNameRsp.NickName = player.NickName
	}
	g.SendMsg(cmd.SetPlayerNameRsp, player.PlayerID, player.ClientSeq, setPlayerNameRsp)
}

func (g *GameManager) SetPlayerHeadImageReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user change head image, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.SetPlayerHeadImageReq)
	avatarId := req.AvatarId
	_, exist := player.AvatarMap[avatarId]
	if !exist {
		logger.LOG.Error("the head img of the avatar not exist, uid: %v", player.PlayerID)
		return
	}
	player.HeadImage = avatarId

	// PacketSetPlayerHeadImageRsp
	setPlayerHeadImageRsp := new(proto.SetPlayerHeadImageRsp)
	setPlayerHeadImageRsp.ProfilePicture = &proto.ProfilePicture{AvatarId: player.HeadImage}
	g.SendMsg(cmd.SetPlayerHeadImageRsp, player.PlayerID, player.ClientSeq, setPlayerHeadImageRsp)
}

func (g *GameManager) GetAllUnlockNameCardReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get all unlock name card, uid: %v", player.PlayerID)

	// PacketGetAllUnlockNameCardRsp
	getAllUnlockNameCardRsp := new(proto.GetAllUnlockNameCardRsp)
	getAllUnlockNameCardRsp.NameCardList = player.NameCardList
	g.SendMsg(cmd.GetAllUnlockNameCardRsp, player.PlayerID, player.ClientSeq, getAllUnlockNameCardRsp)
}

func (g *GameManager) GetPlayerFriendListReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get friend list, uid: %v", player.PlayerID)

	// PacketGetPlayerFriendListRsp
	getPlayerFriendListRsp := new(proto.GetPlayerFriendListRsp)
	getPlayerFriendListRsp.FriendList = make([]*proto.FriendBrief, 0)

	// 获取包含系统的临时好友列表
	// 用于实现好友列表内的系统且不更改原先的内容
	tempFriendList := g.commandManager.GetFriendList(player.FriendList)

	for uid := range tempFriendList {
		// TODO 同步阻塞待优化
		var onlineState proto.FriendOnlineState
		online := g.userManager.GetUserOnlineState(uid)
		if online {
			onlineState = proto.FriendOnlineState_FRIEND_ONLINE_STATE_ONLINE
		} else {
			onlineState = proto.FriendOnlineState_FRIEND_ONLINE_STATE_FREIEND_DISCONNECT
		}
		friendPlayer := g.userManager.LoadTempOfflineUserSync(uid)
		if friendPlayer == nil {
			logger.LOG.Error("target player is nil, uid: %v", player.PlayerID)
			continue
		}
		friendBrief := &proto.FriendBrief{
			Uid:               friendPlayer.PlayerID,
			Nickname:          friendPlayer.NickName,
			Level:             friendPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL],
			ProfilePicture:    &proto.ProfilePicture{AvatarId: friendPlayer.HeadImage},
			WorldLevel:        friendPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL],
			Signature:         friendPlayer.Signature,
			OnlineState:       onlineState,
			IsMpModeAvailable: true,
			LastActiveTime:    player.OfflineTime,
			NameCardId:        friendPlayer.NameCard,
			Param:             (uint32(time.Now().Unix()) - player.OfflineTime) / 3600 / 24,
			IsGameSource:      true,
			PlatformType:      proto.PlatformType_PLATFORM_TYPE_PC,
		}
		getPlayerFriendListRsp.FriendList = append(getPlayerFriendListRsp.FriendList, friendBrief)
	}
	g.SendMsg(cmd.GetPlayerFriendListRsp, player.PlayerID, player.ClientSeq, getPlayerFriendListRsp)
}

func (g *GameManager) GetPlayerAskFriendListReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get friend apply list, uid: %v", player.PlayerID)

	// PacketGetPlayerAskFriendListRsp
	getPlayerAskFriendListRsp := new(proto.GetPlayerAskFriendListRsp)
	getPlayerAskFriendListRsp.AskFriendList = make([]*proto.FriendBrief, 0)
	for uid := range player.FriendApplyList {
		// TODO 同步阻塞待优化
		var onlineState proto.FriendOnlineState
		online := g.userManager.GetUserOnlineState(uid)
		if online {
			onlineState = proto.FriendOnlineState_FRIEND_ONLINE_STATE_ONLINE
		} else {
			onlineState = proto.FriendOnlineState_FRIEND_ONLINE_STATE_FREIEND_DISCONNECT
		}
		friendPlayer := g.userManager.LoadTempOfflineUserSync(uid)
		if friendPlayer == nil {
			logger.LOG.Error("target player is nil, uid: %v", player.PlayerID)
			continue
		}
		friendBrief := &proto.FriendBrief{
			Uid:               friendPlayer.PlayerID,
			Nickname:          friendPlayer.NickName,
			Level:             friendPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL],
			ProfilePicture:    &proto.ProfilePicture{AvatarId: friendPlayer.HeadImage},
			WorldLevel:        friendPlayer.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL],
			Signature:         friendPlayer.Signature,
			OnlineState:       onlineState,
			IsMpModeAvailable: true,
			LastActiveTime:    player.OfflineTime,
			NameCardId:        friendPlayer.NameCard,
			Param:             (uint32(time.Now().Unix()) - player.OfflineTime) / 3600 / 24,
			IsGameSource:      true,
			PlatformType:      proto.PlatformType_PLATFORM_TYPE_PC,
		}
		getPlayerAskFriendListRsp.AskFriendList = append(getPlayerAskFriendListRsp.AskFriendList, friendBrief)
	}
	g.SendMsg(cmd.GetPlayerAskFriendListRsp, player.PlayerID, player.ClientSeq, getPlayerAskFriendListRsp)
}

func (g *GameManager) AskAddFriendReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user apply add friend, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.AskAddFriendReq)
	targetUid := req.TargetUid

	// TODO 同步阻塞待优化
	targetPlayerOnline := g.userManager.GetUserOnlineState(targetUid)
	targetPlayer := g.userManager.LoadTempOfflineUserSync(targetUid)
	if targetPlayer == nil {
		logger.LOG.Error("apply add friend target player is nil, uid: %v", player.PlayerID)
		return
	}
	_, applyExist := targetPlayer.FriendApplyList[player.PlayerID]
	_, friendExist := targetPlayer.FriendList[player.PlayerID]
	if applyExist || friendExist {
		logger.LOG.Error("friend or apply already exist, uid: %v", player.PlayerID)
		return
	}
	targetPlayer.FriendApplyList[player.PlayerID] = true

	if targetPlayerOnline {
		// PacketAskAddFriendNotify
		askAddFriendNotify := new(proto.AskAddFriendNotify)
		askAddFriendNotify.TargetUid = player.PlayerID
		askAddFriendNotify.TargetFriendBrief = &proto.FriendBrief{
			Uid:               player.PlayerID,
			Nickname:          player.NickName,
			Level:             player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL],
			ProfilePicture:    &proto.ProfilePicture{AvatarId: player.HeadImage},
			WorldLevel:        player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL],
			Signature:         player.Signature,
			OnlineState:       proto.FriendOnlineState_FRIEND_ONLINE_STATE_ONLINE,
			IsMpModeAvailable: true,
			LastActiveTime:    player.OfflineTime,
			NameCardId:        player.NameCard,
			Param:             (uint32(time.Now().Unix()) - player.OfflineTime) / 3600 / 24,
			IsGameSource:      true,
			PlatformType:      proto.PlatformType_PLATFORM_TYPE_PC,
		}
		g.SendMsg(cmd.AskAddFriendNotify, targetPlayer.PlayerID, targetPlayer.ClientSeq, askAddFriendNotify)
	}

	// PacketAskAddFriendRsp
	askAddFriendRsp := new(proto.AskAddFriendRsp)
	askAddFriendRsp.TargetUid = targetUid
	g.SendMsg(cmd.AskAddFriendRsp, player.PlayerID, player.ClientSeq, askAddFriendRsp)
}

func (g *GameManager) AddFriend(player *model.Player, targetUid uint32) {
	player.FriendList[targetUid] = true
	// TODO 同步阻塞待优化
	targetPlayer := g.userManager.LoadTempOfflineUserSync(targetUid)
	if targetPlayer == nil {
		logger.LOG.Error("agree friend apply target player is nil, uid: %v", player.PlayerID)
		return
	}
	targetPlayer.FriendList[player.PlayerID] = true
}

func (g *GameManager) DealAddFriendReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user deal friend apply, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.DealAddFriendReq)
	targetUid := req.TargetUid
	result := req.DealAddFriendResult

	if result == proto.DealAddFriendResultType_DEAL_ADD_FRIEND_RESULT_TYPE_ACCEPT {
		g.AddFriend(player, targetUid)
	}
	delete(player.FriendApplyList, targetUid)

	// PacketDealAddFriendRsp
	dealAddFriendRsp := new(proto.DealAddFriendRsp)
	dealAddFriendRsp.TargetUid = targetUid
	dealAddFriendRsp.DealAddFriendResult = result
	g.SendMsg(cmd.DealAddFriendRsp, player.PlayerID, player.ClientSeq, dealAddFriendRsp)
}

func (g *GameManager) GetOnlinePlayerListReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get online player list, uid: %v", player.PlayerID)

	count := 0
	onlinePlayerList := make([]*model.Player, 0)
	for _, onlinePlayer := range g.userManager.GetAllOnlineUserList() {
		if onlinePlayer.PlayerID == player.PlayerID {
			continue
		}
		onlinePlayerList = append(onlinePlayerList, onlinePlayer)
		count++
		if count >= 50 {
			break
		}
	}

	// PacketGetOnlinePlayerListRsp
	getOnlinePlayerListRsp := new(proto.GetOnlinePlayerListRsp)
	getOnlinePlayerListRsp.PlayerInfoList = make([]*proto.OnlinePlayerInfo, 0)
	for _, onlinePlayer := range onlinePlayerList {
		onlinePlayerInfo := g.PacketOnlinePlayerInfo(onlinePlayer)
		getOnlinePlayerListRsp.PlayerInfoList = append(getOnlinePlayerListRsp.PlayerInfoList, onlinePlayerInfo)
	}
	g.SendMsg(cmd.GetOnlinePlayerListRsp, player.PlayerID, player.ClientSeq, getOnlinePlayerListRsp)
}

func (g *GameManager) PacketOnlinePlayerInfo(player *model.Player) *proto.OnlinePlayerInfo {
	onlinePlayerInfo := &proto.OnlinePlayerInfo{
		Uid:                 player.PlayerID,
		Nickname:            player.NickName,
		PlayerLevel:         player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL],
		MpSettingType:       proto.MpSettingType(player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_MP_SETTING_TYPE]),
		NameCardId:          player.NameCard,
		Signature:           player.Signature,
		ProfilePicture:      &proto.ProfilePicture{AvatarId: player.HeadImage},
		CurPlayerNumInWorld: 1,
	}
	world := g.worldManager.GetWorldByID(player.WorldId)
	if world != nil && world.playerMap != nil {
		onlinePlayerInfo.CurPlayerNumInWorld = uint32(len(world.playerMap))
	}
	return onlinePlayerInfo
}
