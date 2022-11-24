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
	logger.LOG.Debug("user pause, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.PlayerSetPauseReq)
	isPaused := req.IsPaused

	player.Pause = isPaused

	// PacketPlayerSetPauseRsp
	playerSetPauseRsp := new(proto.PlayerSetPauseRsp)
	g.SendMsg(cmd.PlayerSetPauseRsp, player.PlayerID, player.ClientSeq, playerSetPauseRsp)
}

func (g *GameManager) TowerAllDataReq(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user get tower all data, uid: %v", player.PlayerID)

	// PacketTowerAllDataRsp
	towerAllDataRsp := new(proto.TowerAllDataRsp)
	towerAllDataRsp.TowerScheduleId = 29
	towerAllDataRsp.TowerFloorRecordList = []*proto.TowerFloorRecord{{FloorId: 1001}}
	towerAllDataRsp.CurLevelRecord = &proto.TowerCurLevelRecord{IsEmpty: true}
	towerAllDataRsp.NextScheduleChangeTime = 4294967295
	towerAllDataRsp.FloorOpenTimeMap = make(map[uint32]uint32)
	towerAllDataRsp.FloorOpenTimeMap[1024] = 1630486800
	towerAllDataRsp.FloorOpenTimeMap[1025] = 1630486800
	towerAllDataRsp.FloorOpenTimeMap[1026] = 1630486800
	towerAllDataRsp.FloorOpenTimeMap[1027] = 1630486800
	towerAllDataRsp.ScheduleStartTime = 1630486800
	g.SendMsg(cmd.TowerAllDataRsp, player.PlayerID, player.ClientSeq, towerAllDataRsp)
}

func (g *GameManager) EntityAiSyncNotify(player *model.Player, payloadMsg pb.Message) {
	logger.LOG.Debug("user entity ai sync, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.EntityAiSyncNotify)

	if len(req.LocalAvatarAlertedMonsterList) == 0 {
		return
	}

	// PacketEntityAiSyncNotify
	entityAiSyncNotify := new(proto.EntityAiSyncNotify)
	entityAiSyncNotify.InfoList = make([]*proto.AiSyncInfo, 0)
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
	player := g.userManager.GetOnlineUser(userId)
	if player == nil {
		logger.LOG.Error("player is nil, uid: %v", userId)
		return
	}
	logger.LOG.Debug("client time notify, uid: %v, time: %v", userId, clientTime)
	player.ClientTime = clientTime
}

func (g *GameManager) ClientRttNotify(userId uint32, clientRtt uint32) {
	player := g.userManager.GetOnlineUser(userId)
	if player == nil {
		logger.LOG.Error("player is nil, uid: %v", userId)
		return
	}
	logger.LOG.Debug("client rtt notify, uid: %v, rtt: %v", userId, clientRtt)
	player.ClientRTT = clientRtt
}

func (g *GameManager) ServerAnnounceNotify(announceId uint32, announceMsg string) {
	for _, onlinePlayer := range g.userManager.GetAllOnlineUserList() {
		serverAnnounceNotify := new(proto.ServerAnnounceNotify)
		now := uint32(time.Now().Unix())
		serverAnnounceNotify.AnnounceDataList = []*proto.AnnounceData{{
			ConfigId:              announceId,
			BeginTime:             now + 1,
			EndTime:               now + 2,
			CenterSystemText:      announceMsg,
			CenterSystemFrequency: 1,
		}}
		g.SendMsg(cmd.ServerAnnounceNotify, onlinePlayer.PlayerID, 0, serverAnnounceNotify)
	}
}

func (g *GameManager) ServerAnnounceRevokeNotify(announceId uint32) {
	for _, onlinePlayer := range g.userManager.GetAllOnlineUserList() {
		serverAnnounceRevokeNotify := new(proto.ServerAnnounceRevokeNotify)
		serverAnnounceRevokeNotify.ConfigIdList = []uint32{announceId}
		g.SendMsg(cmd.ServerAnnounceRevokeNotify, onlinePlayer.PlayerID, 0, serverAnnounceRevokeNotify)
	}
}
