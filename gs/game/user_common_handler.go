package game

import (
	"time"

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

func (g *GameManager) ClientTimeNotify(userId uint32, clientTime uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	logger.Debug("client time notify, uid: %v, time: %v", userId, clientTime)
	player.ClientTime = clientTime
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

func (g *GameManager) SetEntityClientDataNotify(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user set entity client data, uid: %v", player.PlayerID)
	ntf := payloadMsg.(*proto.SetEntityClientDataNotify)
	g.SendMsg(cmd.SetEntityClientDataNotify, player.PlayerID, player.ClientSeq, ntf)
}
