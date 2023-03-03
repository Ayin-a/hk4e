package game

import (
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

// AddUserFlycloak 给予玩家风之翼
func (g *GameManager) AddUserFlycloak(userId uint32, flyCloakId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	// 验证玩家是否已拥有该风之翼
	for _, flycloak := range player.FlyCloakList {
		if flycloak == flyCloakId {
			logger.Error("player has flycloak, flycloakId: %v", flyCloakId)
			return
		}
	}
	player.FlyCloakList = append(player.FlyCloakList, flyCloakId)

	avatarGainFlycloakNotify := &proto.AvatarGainFlycloakNotify{
		FlycloakId: flyCloakId,
	}
	g.SendMsg(cmd.AvatarGainFlycloakNotify, userId, player.ClientSeq, avatarGainFlycloakNotify)
}

// AvatarWearFlycloakReq 角色装备风之翼请求
func (g *GameManager) AvatarWearFlycloakReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.AvatarWearFlycloakReq)

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)
	if scene == nil {
		logger.Error("scene is nil, sceneId: %v", player.SceneId)
		g.SendError(cmd.AvatarWearFlycloakRsp, player, &proto.AvatarWearFlycloakRsp{})
		return
	}

	// 确保角色存在
	avatar, ok := player.GameObjectGuidMap[req.AvatarGuid].(*model.Avatar)
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.AvatarGuid)
		g.SendError(cmd.AvatarWearFlycloakRsp, player, &proto.AvatarWearFlycloakRsp{}, proto.Retcode_RET_CAN_NOT_FIND_AVATAR)
		return
	}

	// 确保要更换的风之翼已获得
	exist := false
	for _, v := range player.FlyCloakList {
		if v == req.FlycloakId {
			exist = true
		}
	}
	if !exist {
		logger.Error("flycloak not exist, flycloakId: %v", req.FlycloakId)
		g.SendError(cmd.AvatarWearFlycloakRsp, player, &proto.AvatarWearFlycloakRsp{}, proto.Retcode_RET_NOT_HAS_FLYCLOAK)
		return
	}

	// 设置角色风之翼
	avatar.FlyCloak = req.FlycloakId

	avatarFlycloakChangeNotify := &proto.AvatarFlycloakChangeNotify{
		AvatarGuid: req.AvatarGuid,
		FlycloakId: req.FlycloakId,
	}
	for _, scenePlayer := range scene.GetAllPlayer() {
		g.SendMsg(cmd.AvatarFlycloakChangeNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, avatarFlycloakChangeNotify)
	}

	avatarWearFlycloakRsp := &proto.AvatarWearFlycloakRsp{
		AvatarGuid: req.AvatarGuid,
		FlycloakId: req.FlycloakId,
	}
	g.SendMsg(cmd.AvatarWearFlycloakRsp, player.PlayerID, player.ClientSeq, avatarWearFlycloakRsp)
}
