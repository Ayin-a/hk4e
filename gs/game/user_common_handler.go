package game

import (
	"time"

	"hk4e/common/constant"
	"hk4e/common/mq"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) PlayerSetPauseReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user pause, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PlayerSetPauseReq)
	isPaused := req.IsPaused
	player.Pause = isPaused

	g.SendMsg(cmd.PlayerSetPauseRsp, player.PlayerID, player.ClientSeq, new(proto.PlayerSetPauseRsp))
}

func (g *GameManager) TowerAllDataReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user get tower all data, uid: %v", player.PlayerID)

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

func (g *GameManager) EntityAiSyncNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user entity ai sync, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EntityAiSyncNotify)

	entityAiSyncNotify := &proto.EntityAiSyncNotify{
		InfoList: make([]*proto.AiSyncInfo, 0),
	}
	for _, monsterId := range req.LocalAvatarAlertedMonsterList {
		entityAiSyncNotify.InfoList = append(entityAiSyncNotify.InfoList, &proto.AiSyncInfo{
			EntityId:        monsterId,
			HasPathToTarget: true,
			IsSelfKilling:   false,
		})
	}
	g.SendMsg(cmd.EntityAiSyncNotify, player.PlayerID, player.ClientSeq, entityAiSyncNotify)
}

func (g *GameManager) ClientRttNotify(userId uint32, clientRtt uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	logger.Debug("client rtt notify, uid: %v, rtt: %v", userId, clientRtt)
	player.ClientRTT = clientRtt
}

func (g *GameManager) ClientTimeNotify(userId uint32, clientTime uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	logger.Debug("client time notify, uid: %v, time: %v", userId, clientTime)
	player.ClientTime = clientTime
}

func (g *GameManager) ServerAnnounceNotify(announceId uint32, announceMsg string) {
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

func (g *GameManager) ServerAnnounceRevokeNotify(announceId uint32) {
	for _, onlinePlayer := range USER_MANAGER.GetAllOnlineUserList() {
		serverAnnounceRevokeNotify := &proto.ServerAnnounceRevokeNotify{
			ConfigIdList: []uint32{announceId},
		}
		g.SendMsg(cmd.ServerAnnounceRevokeNotify, onlinePlayer.PlayerID, 0, serverAnnounceRevokeNotify)
	}
}

func (g *GameManager) ToTheMoonEnterSceneReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user ttm enter scene, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.ToTheMoonEnterSceneReq)
	_ = req
	g.SendMsg(cmd.ToTheMoonEnterSceneRsp, player.PlayerID, player.ClientSeq, new(proto.ToTheMoonEnterSceneRsp))
}

func (g *GameManager) PathfindingEnterSceneReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user pf enter scene, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PathfindingEnterSceneReq)
	_ = req
	g.SendMsg(cmd.PathfindingEnterSceneRsp, player.PlayerID, player.ClientSeq, new(proto.PathfindingEnterSceneRsp))
}

func (g *GameManager) SetEntityClientDataNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user set entity client data, uid: %v", player.PlayerID)
	ntf := payloadMsg.(*proto.SetEntityClientDataNotify)
	g.SendMsg(cmd.SetEntityClientDataNotify, player.PlayerID, player.ClientSeq, ntf)
}

func (g *GameManager) ServerAppidBindNotify(userId uint32, fightAppId string, joinHostUserId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	if joinHostUserId != 0 {
		hostPlayer := USER_MANAGER.GetOnlineUser(joinHostUserId)
		g.HostEnterMpWorld(hostPlayer, player.PlayerID)
		g.JoinOtherWorld(player, hostPlayer)
		return
	}
	logger.Debug("server appid bind notify, uid: %v, fightAppId: %v", userId, fightAppId)
	player.FightAppId = fightAppId
	// 创建世界
	world := WORLD_MANAGER.CreateWorld(player)
	GAME_MANAGER.messageQueue.SendToFight(fightAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeFight,
		EventId: mq.AddFightRoutine,
		FightMsg: &mq.FightMsg{
			FightRoutineId:  world.id,
			GateServerAppId: player.GateAppId,
		},
	})
	world.AddPlayer(player, player.SceneId)
	player.WorldId = world.id
	// 进入场景
	player.SceneLoadState = model.SceneNone
	g.SendMsg(cmd.PlayerEnterSceneNotify, userId, player.ClientSeq, g.PacketPlayerEnterSceneNotifyLogin(player, proto.EnterType_ENTER_TYPE_SELF))
}

func (g *GameManager) ServerGetUserBaseInfoReq(userBaseInfo *mq.UserBaseInfo, gsAppId string) {
	player := USER_MANAGER.GetOnlineUser(userBaseInfo.UserId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userBaseInfo.UserId)
		return
	}
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	g.messageQueue.SendToGs(gsAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeServer,
		EventId: mq.ServerGetUserBaseInfoRsp,
		ServerMsg: &mq.ServerMsg{
			UserBaseInfo: &mq.UserBaseInfo{
				OriginInfo:     userBaseInfo.OriginInfo,
				UserId:         player.PlayerID,
				Nickname:       player.NickName,
				PlayerLevel:    player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL],
				MpSettingType:  uint8(player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_MP_SETTING_TYPE]),
				NameCardId:     player.NameCard,
				Signature:      player.Signature,
				HeadImageId:    player.HeadImage,
				WorldPlayerNum: uint32(world.GetWorldPlayerNum()),
			},
		},
	})
}

func (g *GameManager) ServerGetUserBaseInfoRsp(userBaseInfo *mq.UserBaseInfo) {
	switch userBaseInfo.OriginInfo.CmdName {
	case "GetOnlinePlayerInfoReq":
		player := USER_MANAGER.GetOnlineUser(userBaseInfo.OriginInfo.UserId)
		if player == nil {
			logger.Error("player is nil, uid: %v", userBaseInfo.OriginInfo.UserId)
			return
		}
		g.SendMsg(cmd.GetOnlinePlayerInfoRsp, player.PlayerID, player.ClientSeq, &proto.GetOnlinePlayerInfoRsp{
			TargetUid: userBaseInfo.UserId,
			TargetPlayerInfo: &proto.OnlinePlayerInfo{
				Uid:                 userBaseInfo.UserId,
				Nickname:            userBaseInfo.Nickname,
				PlayerLevel:         userBaseInfo.PlayerLevel,
				MpSettingType:       proto.MpSettingType(userBaseInfo.MpSettingType),
				NameCardId:          userBaseInfo.NameCardId,
				Signature:           userBaseInfo.Signature,
				ProfilePicture:      &proto.ProfilePicture{AvatarId: userBaseInfo.HeadImageId},
				CurPlayerNumInWorld: userBaseInfo.WorldPlayerNum,
			},
		})
	}
}
