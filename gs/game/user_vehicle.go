package game

import (
	"time"

	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

// VehicleDestroyMotion 载具销毁动作
func (g *GameManager) VehicleDestroyMotion(player *model.Player, entity *Entity, state proto.MotionState) {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	// 状态等于 MOTION_STATE_DESTROY_VEHICLE 代表请求销毁
	if state == proto.MotionState_MOTION_STATE_DESTROY_VEHICLE {
		g.DestroyVehicleEntity(player, scene, entity.gadgetEntity.gadgetVehicleEntity.vehicleId, entity.id)
	}
}

// CreateVehicleReq 创建载具
func (g *GameManager) CreateVehicleReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.CreateVehicleReq)

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	// 创建载具冷却时间
	createVehicleCd := int64(5000) // TODO 冷却时间读取配置表
	if time.Now().UnixMilli()-player.VehicleInfo.LastCreateTime < createVehicleCd {
		g.CommonRetError(cmd.VehicleInteractRsp, player, &proto.VehicleInteractRsp{}, proto.Retcode_RET_CREATE_VEHICLE_IN_CD)
		return
	}

	// TODO req.ScenePointId 验证浪船锚点是否已解锁 Retcode_RET_VEHICLE_POINT_NOT_UNLOCK

	// TODO 验证将要创建的载具位置是否有效 Retcode_RET_CREATE_VEHICLE_POS_INVALID

	// 清除已创建的载具
	lastEntityId, ok := player.VehicleInfo.LastCreateEntityIdMap[req.VehicleId]
	if ok {
		g.DestroyVehicleEntity(player, scene, req.VehicleId, lastEntityId)
	}

	// 创建载具实体
	pos := &model.Vector{X: float64(req.Pos.X), Y: float64(req.Pos.Y), Z: float64(req.Pos.Z)}
	rot := &model.Vector{X: float64(req.Rot.X), Y: float64(req.Rot.Y), Z: float64(req.Rot.Z)}
	entityId := scene.CreateEntityGadgetVehicle(player.PlayerID, pos, rot, req.VehicleId)
	if entityId == 0 {
		logger.Error("vehicle entityId is 0, uid: %v", player.PlayerID)
		g.CommonRetError(cmd.VehicleInteractRsp, player, &proto.VehicleInteractRsp{})
		return
	}
	GAME_MANAGER.AddSceneEntityNotify(player, proto.VisionType_VISION_TYPE_BORN, []uint32{entityId}, true, false)
	// 记录创建的载具信息
	player.VehicleInfo.LastCreateEntityIdMap[req.VehicleId] = entityId
	player.VehicleInfo.LastCreateTime = time.Now().UnixMilli()

	// PacketCreateVehicleRsp
	createVehicleRsp := &proto.CreateVehicleRsp{
		VehicleId: req.VehicleId,
		EntityId:  entityId,
	}
	g.SendMsg(cmd.CreateVehicleRsp, player.PlayerID, player.ClientSeq, createVehicleRsp)
}

// IsPlayerInVehicle 判断玩家是否在载具中
func (g *GameManager) IsPlayerInVehicle(player *model.Player, gadgetVehicleEntity *GadgetVehicleEntity) bool {
	if gadgetVehicleEntity == nil {
		return false
	}
	for _, p := range gadgetVehicleEntity.memberMap {
		if p == player {
			return true
		}
	}
	return false
}

// DestroyVehicleEntity 删除载具实体
func (g *GameManager) DestroyVehicleEntity(player *model.Player, scene *Scene, vehicleId uint32, entityId uint32) {
	entity := scene.GetEntity(entityId)
	if entity == nil {
		return
	}
	// 确保实体类型是否为载具
	if entity.gadgetEntity == nil || entity.gadgetEntity.gadgetVehicleEntity == nil {
		return
	}
	// 目前原神仅有一种载具 多载具目前理论上是兼容了 到时候有问题再改
	// 确保载具Id为将要创建的 (每种载具允许存在1个)
	if entity.gadgetEntity.gadgetVehicleEntity.vehicleId != vehicleId {
		return
	}
	// 该载具是否为此玩家的
	if entity.gadgetEntity.gadgetVehicleEntity.owner != player {
		return
	}
	// 如果玩家正在载具中
	if g.IsPlayerInVehicle(player, entity.gadgetEntity.gadgetVehicleEntity) {
		// 离开载具
		g.ExitVehicle(player, entity, player.AvatarMap[player.TeamConfig.GetActiveAvatarId()].Guid)
	}
	// 删除已创建的载具
	scene.DestroyEntity(entity.id)
	g.RemoveSceneEntityNotifyBroadcast(scene, proto.VisionType_VISION_TYPE_MISS, []uint32{entity.id})
}

// EnterVehicle 进入载具
func (g *GameManager) EnterVehicle(player *model.Player, entity *Entity, avatarGuid uint64) {
	maxSlot := 1 // TODO 读取配置表
	// 判断载具是否已满
	if len(entity.gadgetEntity.gadgetVehicleEntity.memberMap) >= maxSlot {
		g.CommonRetError(cmd.VehicleInteractRsp, player, &proto.VehicleInteractRsp{}, proto.Retcode_RET_VEHICLE_SLOT_OCCUPIED)
		return
	}

	// 找出载具空闲的位置
	var freePos uint32
	for i := uint32(0); i < uint32(maxSlot); i++ {
		p := entity.gadgetEntity.gadgetVehicleEntity.memberMap[i]
		// 玩家如果已进入载具重复记录不进行报错
		if p == player || p == nil {
			// 载具成员记录玩家
			entity.gadgetEntity.gadgetVehicleEntity.memberMap[i] = player
			freePos = i
		}
	}

	// 记录玩家所在的载具信息
	player.VehicleInfo.InVehicleEntityId = entity.id

	// PacketVehicleInteractRsp
	vehicleInteractRsp := &proto.VehicleInteractRsp{
		InteractType: proto.VehicleInteractType_VEHICLE_INTERACT_TYPE_IN,
		Member: &proto.VehicleMember{
			Uid:        player.PlayerID,
			AvatarGuid: avatarGuid,
			Pos:        freePos, // 应该是多人坐船时的位置?
		},
		EntityId: entity.id,
	}
	g.SendMsg(cmd.VehicleInteractRsp, player.PlayerID, player.ClientSeq, vehicleInteractRsp)
}

// ExitVehicle 离开载具
func (g *GameManager) ExitVehicle(player *model.Player, entity *Entity, avatarGuid uint64) {
	// 玩家是否进入载具
	if !g.IsPlayerInVehicle(player, entity.gadgetEntity.gadgetVehicleEntity) {
		logger.Error("vehicle not has player, uid: %v", player.PlayerID)
		g.CommonRetError(cmd.VehicleInteractRsp, player, &proto.VehicleInteractRsp{}, proto.Retcode_RET_NOT_IN_VEHICLE)
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
	// 清除记录的所在载具信息
	player.VehicleInfo.InVehicleEntityId = 0

	// PacketVehicleInteractRsp
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

	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	scene := world.GetSceneById(player.SceneId)

	// 获取载具实体
	entity := scene.GetEntity(req.EntityId)
	if entity == nil {
		logger.Error("vehicle entity is nil, entityId: %v", req.EntityId)
		g.CommonRetError(cmd.VehicleInteractRsp, player, &proto.VehicleInteractRsp{}, proto.Retcode_RET_ENTITY_NOT_EXIST)
		return
	}
	// 判断实体类型是否为载具
	if entity.gadgetEntity == nil || entity.gadgetEntity.gadgetVehicleEntity == nil {
		logger.Error("vehicle entity error, entityType: %v", entity.entityType)
		g.CommonRetError(cmd.VehicleInteractRsp, player, &proto.VehicleInteractRsp{}, proto.Retcode_RET_GADGET_NOT_VEHICLE)
		return
	}

	avatarGuid := player.AvatarMap[player.TeamConfig.GetActiveAvatarId()].Guid

	switch req.InteractType {
	case proto.VehicleInteractType_VEHICLE_INTERACT_TYPE_IN:
		// 进入载具
		g.EnterVehicle(player, entity, avatarGuid)
	case proto.VehicleInteractType_VEHICLE_INTERACT_TYPE_OUT:
		// 离开载具
		g.ExitVehicle(player, entity, avatarGuid)
	}
}
