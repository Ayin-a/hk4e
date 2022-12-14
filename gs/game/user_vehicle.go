package game

import (
	pb "google.golang.org/protobuf/proto"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

// CreateVehicleReq 创建载具
func (g *GameManager) CreateVehicleReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.CreateVehicleReq)

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	// TODO req.ScenePointId 验证浪船锚点是否已解锁

	// 清除已创建的载具
	for _, id := range scene.GetEntityIdList() {
		entity := scene.GetEntity(id)
		// 判断实体类型是否为载具
		if entity.entityType != uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_GADGET) || entity.gadgetEntity.gadgetType != GADGET_TYPE_VEHICLE {
			continue
		}
		// 确保载具Id为将要创建的 (每种载具允许存在1个)
		if entity.gadgetEntity.gadgetVehicleEntity.vehicleId != req.VehicleId {
			continue
		}
		// 该载具是否为此玩家的
		if entity.gadgetEntity.gadgetVehicleEntity.owner != player {
			continue
		}
		// 现行角色Guid
		avatar, ok := player.AvatarMap[player.TeamConfig.GetActiveAvatarId()]
		if !ok {
			logger.LOG.Error("avatar is nil, avatarId: %v", player.TeamConfig.GetActiveAvatarId())
			g.CommonRetError(cmd.CreateVehicleRsp, player, &proto.CreateVehicleRsp{})
			return
		}
		// 确保玩家正在载具中
		if g.IsPlayerInVehicle(player, entity.gadgetEntity.gadgetVehicleEntity) {
			// 离开载具
			g.ExitVehicle(player, entity, avatar.Guid)
		}
		// TODO 删除实体 需要杀死实体 暂时实体模块还没写这个
		// scene.DestroyEntity(entity.id)
	}

	// 创建载具实体
	pos := &model.Vector{X: float64(req.Pos.X), Y: float64(req.Pos.Y), Z: float64(req.Pos.Z)}
	rot := &model.Vector{X: float64(req.Rot.X), Y: float64(req.Rot.Y), Z: float64(req.Rot.Z)}
	entityId := scene.CreateEntityGadgetVehicle(player.PlayerID, pos, rot, req.VehicleId)
	if entityId == 0 {
		logger.LOG.Error("vehicle entityId is 0, uid: %v", player.PlayerID)
		g.CommonRetError(cmd.CreateVehicleRsp, player, &proto.CreateVehicleRsp{})
		return
	}
	GAME_MANAGER.AddSceneEntityNotify(player, proto.VisionType_VISION_TYPE_BORN, []uint32{entityId}, true, false)

	createVehicleRsp := &proto.CreateVehicleRsp{
		VehicleId: req.VehicleId,
		EntityId:  entityId,
	}
	g.SendMsg(cmd.CreateVehicleRsp, player.PlayerID, player.ClientSeq, createVehicleRsp)
}

// IsPlayerInVehicle 判断玩家是否在载具中
func (g *GameManager) IsPlayerInVehicle(player *model.Player, gadgetVehicleEntity *GadgetVehicleEntity) bool {
	for _, p := range gadgetVehicleEntity.memberMap {
		if p == player {
			return true
		}
	}
	return false
}

// EnterVehicle 进入载具
func (g *GameManager) EnterVehicle(player *model.Player, entity *Entity, avatarGuid uint64) {
	// 玩家是否已进入载具
	if g.IsPlayerInVehicle(player, entity.gadgetEntity.gadgetVehicleEntity) {
		logger.LOG.Error("vehicle has equal player, uid: %v", player.PlayerID)
		g.CommonRetError(cmd.VehicleInteractRsp, player, &proto.VehicleInteractRsp{})
		return
	}
	// 找出载具空闲的位置
	pos := uint32(0)
	for entity.gadgetEntity.gadgetVehicleEntity.memberMap[pos] != nil {
		pos++
	}
	// 载具成员记录玩家
	entity.gadgetEntity.gadgetVehicleEntity.memberMap[pos] = player

	vehicleInteractRsp := &proto.VehicleInteractRsp{
		InteractType: proto.VehicleInteractType_VEHICLE_INTERACT_TYPE_IN,
		Member: &proto.VehicleMember{
			Uid:        player.PlayerID,
			AvatarGuid: avatarGuid,
			Pos:        pos, // 应该是多人坐船时的位置?
		},
		EntityId: entity.id,
	}
	g.SendMsg(cmd.VehicleInteractRsp, player.PlayerID, player.ClientSeq, vehicleInteractRsp)
}

// ExitVehicle 离开载具
func (g *GameManager) ExitVehicle(player *model.Player, entity *Entity, avatarGuid uint64) {
	// 玩家是否进入载具
	if !g.IsPlayerInVehicle(player, entity.gadgetEntity.gadgetVehicleEntity) {
		logger.LOG.Error("vehicle not has player, uid: %v", player.PlayerID)
		g.SendMsg(cmd.VehicleInteractRsp, player.PlayerID, player.ClientSeq, &proto.VehicleInteractRsp{Retcode: int32(proto.Retcode_RET_NOT_IN_VEHICLE)})
		return
	}
	// 载具成员删除玩家
	var memberPos uint32
	for pos, p := range entity.gadgetEntity.gadgetVehicleEntity.memberMap {
		if p == player {
			memberPos = pos
			delete(entity.gadgetEntity.gadgetVehicleEntity.memberMap, pos)
		}
	}

	vehicleInteractRsp := &proto.VehicleInteractRsp{
		InteractType: proto.VehicleInteractType_VEHICLE_INTERACT_TYPE_OUT,
		Member: &proto.VehicleMember{
			Uid:        player.PlayerID,
			AvatarGuid: avatarGuid,
			Pos:        memberPos, // 应该是多人坐船时的位置?
		},
		EntityId: entity.id,
	}
	g.SendMsg(cmd.VehicleInteractRsp, player.PlayerID, player.ClientSeq, vehicleInteractRsp)
}

// VehicleInteractReq 载具交互
func (g *GameManager) VehicleInteractReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.VehicleInteractReq)

	// 获取载具实体
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	entity := world.GetSceneById(player.SceneId).GetEntity(req.EntityId)
	if entity == nil {
		logger.LOG.Error("vehicle entity is nil, entityId: %v", req.EntityId)
		g.CommonRetError(cmd.VehicleInteractRsp, player, &proto.VehicleInteractRsp{})
		return
	}
	// 判断实体类型是否为载具
	if entity.entityType != uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_GADGET) || entity.gadgetEntity.gadgetType != GADGET_TYPE_VEHICLE {
		logger.LOG.Error("vehicle entity error, entityType: %v", entity.entityType)
		g.SendMsg(cmd.VehicleInteractRsp, player.PlayerID, player.ClientSeq, &proto.VehicleInteractRsp{Retcode: int32(proto.Retcode_RET_GADGET_NOT_VEHICLE)})
		return
	}
	// 现行角色Guid
	avatar, ok := player.AvatarMap[player.TeamConfig.GetActiveAvatarId()]
	if !ok {
		logger.LOG.Error("avatar is nil, avatarId: %v", player.TeamConfig.GetActiveAvatarId())
		g.CommonRetError(cmd.VehicleInteractRsp, player, &proto.VehicleInteractRsp{})
		return
	}

	switch req.InteractType {
	case proto.VehicleInteractType_VEHICLE_INTERACT_TYPE_IN:
		// 进入载具
		g.EnterVehicle(player, entity, avatar.Guid)
	case proto.VehicleInteractType_VEHICLE_INTERACT_TYPE_OUT:
		// 离开载具
		g.ExitVehicle(player, entity, avatar.Guid)
	}
}
