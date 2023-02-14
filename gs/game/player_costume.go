package game

import (
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

// AddUserCostume 给予玩家时装
func (g *GameManager) AddUserCostume(userId uint32, costumeId uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	// 验证玩家是否已拥有该时装
	for _, costume := range player.CostumeList {
		if costume == costumeId {
			logger.Error("player has costume, costumeId: %v", costumeId)
			return
		}
	}
	player.CostumeList = append(player.CostumeList, costumeId)

	avatarGainCostumeNotify := &proto.AvatarGainCostumeNotify{
		CostumeId: costumeId,
	}
	g.SendMsg(cmd.AvatarGainCostumeNotify, userId, player.ClientSeq, avatarGainCostumeNotify)
}

// AvatarChangeCostumeReq 角色更换时装请求
func (g *GameManager) AvatarChangeCostumeReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user change avatar costume, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.AvatarChangeCostumeReq)

	// 确保角色存在
	avatar, ok := player.GameObjectGuidMap[req.AvatarGuid].(*model.Avatar)
	if !ok {
		logger.Error("avatar error, avatarGuid: %v", req.AvatarGuid)
		g.SendError(cmd.AvatarChangeCostumeRsp, player, &proto.AvatarChangeCostumeRsp{}, proto.Retcode_RET_COSTUME_AVATAR_ERROR)
		return
	}

	exist := false
	for _, v := range player.CostumeList {
		if v == req.CostumeId {
			exist = true
		}
	}
	if req.CostumeId == 0 {
		exist = true
	}
	if !exist {
		logger.Error("costume not exist, costumeId: %v", req.CostumeId)
		g.SendError(cmd.AvatarChangeCostumeRsp, player, &proto.AvatarChangeCostumeRsp{}, proto.Retcode_RET_NOT_HAS_COSTUME)
		return
	}

	// 设置角色时装
	avatar.Costume = req.CostumeId

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	avatarChangeCostumeNotify := new(proto.AvatarChangeCostumeNotify)
	avatarChangeCostumeNotify.EntityInfo = g.PacketSceneEntityInfoAvatar(scene, player, avatar.AvatarId)
	for _, scenePlayer := range scene.GetAllPlayer() {
		g.SendMsg(cmd.AvatarChangeCostumeNotify, scenePlayer.PlayerID, scenePlayer.ClientSeq, avatarChangeCostumeNotify)
	}

	avatarChangeCostumeRsp := &proto.AvatarChangeCostumeRsp{
		AvatarGuid: req.AvatarGuid,
		CostumeId:  req.CostumeId,
	}
	g.SendMsg(cmd.AvatarChangeCostumeRsp, player.PlayerID, player.ClientSeq, avatarChangeCostumeRsp)
}
