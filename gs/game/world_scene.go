package game

import (
	"math"
	"time"

	"hk4e/common/constant"
	"hk4e/common/mq"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

// Scene 场景数据结构
type Scene struct {
	id                uint32
	world             *World
	playerMap         map[uint32]*model.Player
	entityMap         map[uint32]*Entity
	objectIdEntityMap map[int64]*Entity // 用于标识配置档里的唯一实体是否已被创建
	gameTime          uint32            // 游戏内提瓦特大陆的时间
	createTime        int64             // 场景创建时间
	meeoIndex         uint32            // 客户端风元素染色同步协议的计数器
}

func (s *Scene) GetId() uint32 {
	return s.id
}

func (s *Scene) GetWorld() *World {
	return s.world
}

func (s *Scene) GetAllPlayer() map[uint32]*model.Player {
	return s.playerMap
}

func (s *Scene) GetAllEntity() map[uint32]*Entity {
	return s.entityMap
}

func (s *Scene) GetGameTime() uint32 {
	return s.gameTime
}

func (s *Scene) GetMeeoIndex() uint32 {
	return s.meeoIndex
}

func (s *Scene) SetMeeoIndex(meeoIndex uint32) {
	s.meeoIndex = meeoIndex
}

func (s *Scene) ChangeGameTime(time uint32) {
	s.gameTime = time % 1440
}

func (s *Scene) GetSceneCreateTime() int64 {
	return s.createTime
}

func (s *Scene) GetSceneTime() int64 {
	now := time.Now().UnixMilli()
	return now - s.createTime
}

func (s *Scene) AddPlayer(player *model.Player) {
	s.playerMap[player.PlayerID] = player
	s.world.InitPlayerWorldAvatar(player)
}

func (s *Scene) RemovePlayer(player *model.Player) {
	delete(s.playerMap, player.PlayerID)
	worldAvatarList := s.world.GetPlayerWorldAvatarList(player)
	for _, worldAvatar := range worldAvatarList {
		s.DestroyEntity(worldAvatar.avatarEntityId)
		s.DestroyEntity(worldAvatar.weaponEntityId)
	}
}

func (s *Scene) SetEntityLifeState(entity *Entity, lifeState uint16, dieType proto.PlayerDieType) {
	if entity.avatarEntity != nil {
		// 获取玩家对象
		player := USER_MANAGER.GetOnlineUser(entity.avatarEntity.uid)
		if player == nil {
			logger.Error("player is nil, uid: %v", entity.avatarEntity.uid)
			return
		}
		// 获取角色
		avatar, ok := player.AvatarMap[entity.avatarEntity.avatarId]
		if !ok {
			logger.Error("avatar is nil, avatarId: %v", avatar)
			return
		}
		// 设置角色存活状态
		if lifeState == constant.LIFE_STATE_REVIVE {
			avatar.LifeState = constant.LIFE_STATE_ALIVE
			// 设置血量
			entity.fightProp[uint32(constant.FIGHT_PROP_CUR_HP)] = 110
			GAME_MANAGER.EntityFightPropUpdateNotifyBroadcast(s, entity, uint32(constant.FIGHT_PROP_CUR_HP))
		}

		avatarLifeStateChangeNotify := &proto.AvatarLifeStateChangeNotify{
			LifeState:       uint32(lifeState),
			AttackTag:       "",
			DieType:         dieType,
			ServerBuffList:  nil,
			MoveReliableSeq: entity.lastMoveReliableSeq,
			SourceEntityId:  0,
			AvatarGuid:      avatar.Guid,
		}
		GAME_MANAGER.SendToWorldA(s.world, cmd.AvatarLifeStateChangeNotify, 0, avatarLifeStateChangeNotify)
	} else {
		// 设置存活状态
		entity.lifeState = lifeState

		if lifeState == constant.LIFE_STATE_DEAD {
			// 设置血量
			entity.fightProp[uint32(constant.FIGHT_PROP_CUR_HP)] = 0
			GAME_MANAGER.EntityFightPropUpdateNotifyBroadcast(s, entity, uint32(constant.FIGHT_PROP_CUR_HP))
		}

		lifeStateChangeNotify := &proto.LifeStateChangeNotify{
			EntityId:        entity.id,
			AttackTag:       "",
			MoveReliableSeq: entity.lastMoveReliableSeq,
			DieType:         dieType,
			LifeState:       uint32(lifeState),
			SourceEntityId:  0,
		}
		GAME_MANAGER.SendToWorldA(s.world, cmd.LifeStateChangeNotify, 0, lifeStateChangeNotify)

		// 删除实体
		s.DestroyEntity(entity.id)
		GAME_MANAGER.RemoveSceneEntityNotifyBroadcast(s, proto.VisionType_VISION_DIE, []uint32{entity.id})
	}
}

func (s *Scene) CreateEntityAvatar(player *model.Player, avatarId uint32) uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_ID_TYPE_AVATAR)
	avatar, ok := player.AvatarMap[avatarId]
	if !ok {
		logger.Error("avatar error, avatarId: %v", avatar)
		return 0
	}
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		lifeState:           avatar.LifeState,
		pos:                 player.Pos,
		rot:                 player.Rot,
		moveState:           uint16(proto.MotionState_MOTION_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp:           player.AvatarMap[avatarId].FightPropMap, // 使用角色结构的数据
		entityType:          uint32(proto.ProtEntityType_PROT_ENTITY_AVATAR),
		avatarEntity: &AvatarEntity{
			uid:      player.PlayerID,
			avatarId: avatarId,
		},
	}
	s.CreateEntity(entity, 0)
	MESSAGE_QUEUE.SendToFight(s.world.owner.FightAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeFight,
		EventId: mq.FightRoutineAddEntity,
		FightMsg: &mq.FightMsg{
			FightRoutineId: s.world.id,
			EntityId:       entity.id,
			FightPropMap:   entity.fightProp,
			Uid:            entity.avatarEntity.uid,
			AvatarGuid:     player.AvatarMap[avatarId].Guid,
		},
	})
	return entity.id
}

func (s *Scene) CreateEntityWeapon() uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_ID_TYPE_WEAPON)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		lifeState:           constant.LIFE_STATE_ALIVE,
		pos:                 new(model.Vector),
		rot:                 new(model.Vector),
		moveState:           uint16(proto.MotionState_MOTION_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp:           nil,
		entityType:          uint32(proto.ProtEntityType_PROT_ENTITY_WEAPON),
	}
	s.CreateEntity(entity, 0)
	return entity.id
}

func (s *Scene) CreateEntityMonster(pos, rot *model.Vector, monsterId uint32, level uint8, fightProp map[uint32]float32, configId uint32, objectId int64) uint32 {
	_, exist := s.objectIdEntityMap[objectId]
	if exist {
		return 0
	}
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_ID_TYPE_MONSTER)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		lifeState:           constant.LIFE_STATE_ALIVE,
		pos:                 pos,
		rot:                 rot,
		moveState:           uint16(proto.MotionState_MOTION_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp:           fightProp,
		entityType:          uint32(proto.ProtEntityType_PROT_ENTITY_MONSTER),
		level:               level,
		monsterEntity: &MonsterEntity{
			monsterId: monsterId,
		},
		configId: configId,
		objectId: objectId,
	}
	s.CreateEntity(entity, objectId)
	MESSAGE_QUEUE.SendToFight(s.world.owner.FightAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeFight,
		EventId: mq.FightRoutineAddEntity,
		FightMsg: &mq.FightMsg{
			FightRoutineId: s.world.id,
			EntityId:       entity.id,
			FightPropMap:   entity.fightProp,
		},
	})
	return entity.id
}

func (s *Scene) CreateEntityNpc(pos, rot *model.Vector, npcId, roomId, parentQuestId, blockId, configId uint32, objectId int64) uint32 {
	_, exist := s.objectIdEntityMap[objectId]
	if exist {
		return 0
	}
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_ID_TYPE_NPC)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		lifeState:           constant.LIFE_STATE_ALIVE,
		pos:                 pos,
		rot:                 rot,
		moveState:           uint16(proto.MotionState_MOTION_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp: map[uint32]float32{
			uint32(constant.FIGHT_PROP_CUR_HP):  math.MaxFloat32,
			uint32(constant.FIGHT_PROP_MAX_HP):  math.MaxFloat32,
			uint32(constant.FIGHT_PROP_BASE_HP): float32(1),
		},
		entityType: uint32(proto.ProtEntityType_PROT_ENTITY_NPC),
		npcEntity: &NpcEntity{
			NpcId:         npcId,
			RoomId:        roomId,
			ParentQuestId: parentQuestId,
			BlockId:       blockId,
		},
		configId: configId,
		objectId: objectId,
	}
	s.CreateEntity(entity, objectId)
	return entity.id
}

func (s *Scene) CreateEntityGadgetNormal(pos, rot *model.Vector, gadgetId uint32, configId uint32, objectId int64) uint32 {
	_, exist := s.objectIdEntityMap[objectId]
	if exist {
		return 0
	}
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_ID_TYPE_GADGET)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		lifeState:           constant.LIFE_STATE_ALIVE,
		pos:                 pos,
		rot:                 rot,
		moveState:           uint16(proto.MotionState_MOTION_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp: map[uint32]float32{
			uint32(constant.FIGHT_PROP_CUR_HP):  math.MaxFloat32,
			uint32(constant.FIGHT_PROP_MAX_HP):  math.MaxFloat32,
			uint32(constant.FIGHT_PROP_BASE_HP): float32(1),
		},
		entityType: uint32(proto.ProtEntityType_PROT_ENTITY_GADGET),
		gadgetEntity: &GadgetEntity{
			gadgetId:   gadgetId,
			gadgetType: GADGET_TYPE_NORMAL,
		},
		configId: configId,
		objectId: objectId,
	}
	s.CreateEntity(entity, objectId)
	return entity.id
}

func (s *Scene) CreateEntityGadgetGather(pos, rot *model.Vector, gadgetId uint32, gatherId uint32, configId uint32, objectId int64) uint32 {
	_, exist := s.objectIdEntityMap[objectId]
	if exist {
		return 0
	}
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_ID_TYPE_GADGET)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		lifeState:           constant.LIFE_STATE_ALIVE,
		pos:                 pos,
		rot:                 rot,
		moveState:           uint16(proto.MotionState_MOTION_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp: map[uint32]float32{
			uint32(constant.FIGHT_PROP_CUR_HP):  math.MaxFloat32,
			uint32(constant.FIGHT_PROP_MAX_HP):  math.MaxFloat32,
			uint32(constant.FIGHT_PROP_BASE_HP): float32(1),
		},
		entityType: uint32(proto.ProtEntityType_PROT_ENTITY_GADGET),
		gadgetEntity: &GadgetEntity{
			gadgetId:   gadgetId,
			gadgetType: GADGET_TYPE_GATHER,
			gadgetGatherEntity: &GadgetGatherEntity{
				gatherId: gatherId,
			},
		},
		configId: configId,
		objectId: objectId,
	}
	s.CreateEntity(entity, objectId)
	return entity.id
}

func (s *Scene) CreateEntityGadgetClient(pos, rot *model.Vector, entityId uint32, configId, campId, campType, ownerEntityId, targetEntityId, propOwnerEntityId uint32) {
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		lifeState:           constant.LIFE_STATE_ALIVE,
		pos:                 pos,
		rot:                 rot,
		moveState:           uint16(proto.MotionState_MOTION_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp: map[uint32]float32{
			uint32(constant.FIGHT_PROP_CUR_HP):  math.MaxFloat32,
			uint32(constant.FIGHT_PROP_MAX_HP):  math.MaxFloat32,
			uint32(constant.FIGHT_PROP_BASE_HP): float32(1),
		},
		entityType: uint32(proto.ProtEntityType_PROT_ENTITY_GADGET),
		gadgetEntity: &GadgetEntity{
			gadgetType: GADGET_TYPE_CLIENT,
			gadgetClientEntity: &GadgetClientEntity{
				configId:          configId,
				campId:            campId,
				campType:          campType,
				ownerEntityId:     ownerEntityId,
				targetEntityId:    targetEntityId,
				propOwnerEntityId: propOwnerEntityId,
			},
		},
	}
	s.CreateEntity(entity, 0)
}

func (s *Scene) CreateEntityGadgetVehicle(uid uint32, pos, rot *model.Vector, vehicleId uint32) uint32 {
	player := USER_MANAGER.GetOnlineUser(uid)
	if player == nil {
		logger.Error("player is nil, uid: %v", uid)
		return 0
	}
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_ID_TYPE_GADGET)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		lifeState:           constant.LIFE_STATE_ALIVE,
		pos:                 pos,
		rot:                 rot,
		moveState:           uint16(proto.MotionState_MOTION_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp: map[uint32]float32{
			// TODO 以后使用配置表
			uint32(constant.FIGHT_PROP_CUR_HP):  114514,
			uint32(constant.FIGHT_PROP_MAX_HP):  114514,
			uint32(constant.FIGHT_PROP_BASE_HP): float32(1),
		},
		entityType: uint32(proto.ProtEntityType_PROT_ENTITY_GADGET),
		gadgetEntity: &GadgetEntity{
			gadgetType: GADGET_TYPE_VEHICLE,
			gadgetVehicleEntity: &GadgetVehicleEntity{
				vehicleId:  vehicleId,
				owner:      player,
				maxStamina: 240, // TODO 应该也能在配置表找到
				curStamina: 240, // TODO 与maxStamina一致
				memberMap:  make(map[uint32]*model.Player),
			},
		},
	}
	s.CreateEntity(entity, 0)
	return entity.id
}

func (s *Scene) CreateEntity(entity *Entity, objectId int64) {
	if len(s.entityMap) >= ENTITY_MAX_SEND_NUM && !ENTITY_NUM_UNLIMIT {
		logger.Error("above max scene entity num limit: %v, id: %v, pos: %v", ENTITY_MAX_SEND_NUM, entity.id, entity.pos)
		return
	}
	if objectId != 0 {
		s.objectIdEntityMap[objectId] = entity
	}
	s.entityMap[entity.id] = entity
}

func (s *Scene) DestroyEntity(entityId uint32) {
	entity := s.GetEntity(entityId)
	if entity == nil {
		return
	}
	delete(s.entityMap, entity.id)
	delete(s.objectIdEntityMap, entity.objectId)
	MESSAGE_QUEUE.SendToFight(s.world.owner.FightAppId, &mq.NetMsg{
		MsgType: mq.MsgTypeFight,
		EventId: mq.FightRoutineDelEntity,
		FightMsg: &mq.FightMsg{
			FightRoutineId: s.world.id,
			EntityId:       entity.id,
		},
	})
}

func (s *Scene) GetEntity(entityId uint32) *Entity {
	return s.entityMap[entityId]
}

func (s *Scene) GetEntityByObjectId(objectId int64) *Entity {
	return s.objectIdEntityMap[objectId]
}

// Entity 场景实体数据结构
type Entity struct {
	id                  uint32
	scene               *Scene
	lifeState           uint16
	pos                 *model.Vector
	rot                 *model.Vector
	moveState           uint16
	lastMoveSceneTimeMs uint32
	lastMoveReliableSeq uint32
	fightProp           map[uint32]float32
	entityType          uint32
	level               uint8
	avatarEntity        *AvatarEntity
	monsterEntity       *MonsterEntity
	npcEntity           *NpcEntity
	gadgetEntity        *GadgetEntity
	configId            uint32
	objectId            int64
}

func (e *Entity) GetId() uint32 {
	return e.id
}

func (e *Entity) GetLifeState() uint16 {
	return e.lifeState
}

func (e *Entity) GetPos() *model.Vector {
	return e.pos
}

func (e *Entity) GetRot() *model.Vector {
	return e.rot
}

func (e *Entity) GetMoveState() uint16 {
	return e.moveState
}

func (e *Entity) SetMoveState(moveState uint16) {
	e.moveState = moveState
}

func (e *Entity) GetLastMoveSceneTimeMs() uint32 {
	return e.lastMoveSceneTimeMs
}

func (e *Entity) SetLastMoveSceneTimeMs(lastMoveSceneTimeMs uint32) {
	e.lastMoveSceneTimeMs = lastMoveSceneTimeMs
}

func (e *Entity) GetLastMoveReliableSeq() uint32 {
	return e.lastMoveReliableSeq
}

func (e *Entity) SetLastMoveReliableSeq(lastMoveReliableSeq uint32) {
	e.lastMoveReliableSeq = lastMoveReliableSeq
}

func (e *Entity) GetFightProp() map[uint32]float32 {
	return e.fightProp
}

func (e *Entity) GetEntityType() uint32 {
	return e.entityType
}

func (e *Entity) GetLevel() uint8 {
	return e.level
}

func (e *Entity) GetAvatarEntity() *AvatarEntity {
	return e.avatarEntity
}

func (e *Entity) GetMonsterEntity() *MonsterEntity {
	return e.monsterEntity
}

func (e *Entity) GetNpcEntity() *NpcEntity {
	return e.npcEntity
}

func (e *Entity) GetGadgetEntity() *GadgetEntity {
	return e.gadgetEntity
}

func (e *Entity) GetConfigId() uint32 {
	return e.configId
}

type AvatarEntity struct {
	uid      uint32
	avatarId uint32
}

func (a *AvatarEntity) GetUid() uint32 {
	return a.uid
}

func (a *AvatarEntity) GetAvatarId() uint32 {
	return a.avatarId
}

type MonsterEntity struct {
	monsterId uint32
}

func (m *MonsterEntity) GetMonsterId() uint32 {
	return m.monsterId
}

type NpcEntity struct {
	NpcId         uint32
	RoomId        uint32
	ParentQuestId uint32
	BlockId       uint32
}

type GadgetEntity struct {
	gadgetType          int
	gadgetId            uint32
	gadgetClientEntity  *GadgetClientEntity
	gadgetGatherEntity  *GadgetGatherEntity
	gadgetVehicleEntity *GadgetVehicleEntity
}

func (g *GadgetEntity) GetGadgetType() int {
	return g.gadgetType
}

func (g *GadgetEntity) GetGadgetId() uint32 {
	return g.gadgetId
}

func (g *GadgetEntity) GetGadgetClientEntity() *GadgetClientEntity {
	return g.gadgetClientEntity
}

func (g *GadgetEntity) GetGadgetGatherEntity() *GadgetGatherEntity {
	return g.gadgetGatherEntity
}

func (g *GadgetEntity) GetGadgetVehicleEntity() *GadgetVehicleEntity {
	return g.gadgetVehicleEntity
}

const (
	GADGET_TYPE_NORMAL = iota
	GADGET_TYPE_GATHER
	GADGET_TYPE_CLIENT
	GADGET_TYPE_VEHICLE // 载具
)

type GadgetClientEntity struct {
	configId          uint32
	campId            uint32
	campType          uint32
	ownerEntityId     uint32
	targetEntityId    uint32
	propOwnerEntityId uint32
}

func (g *GadgetClientEntity) GetConfigId() uint32 {
	return g.configId
}

func (g *GadgetClientEntity) GetCampId() uint32 {
	return g.campId
}

func (g *GadgetClientEntity) GetCampType() uint32 {
	return g.campType
}

func (g *GadgetClientEntity) GetOwnerEntityId() uint32 {
	return g.ownerEntityId
}

func (g *GadgetClientEntity) GetTargetEntityId() uint32 {
	return g.targetEntityId
}

func (g *GadgetClientEntity) GetPropOwnerEntityId() uint32 {
	return g.propOwnerEntityId
}

type GadgetGatherEntity struct {
	gatherId uint32
}

func (g *GadgetGatherEntity) GetGatherId() uint32 {
	return g.gatherId
}

type GadgetVehicleEntity struct {
	vehicleId  uint32
	owner      *model.Player
	maxStamina float32
	curStamina float32
	memberMap  map[uint32]*model.Player // uint32 = pos
}

func (g *GadgetVehicleEntity) GetVehicleId() uint32 {
	return g.vehicleId
}

func (g *GadgetVehicleEntity) GetOwner() *model.Player {
	return g.owner
}

func (g *GadgetVehicleEntity) GetMaxStamina() float32 {
	return g.maxStamina
}

func (g *GadgetVehicleEntity) GetCurStamina() float32 {
	return g.curStamina
}

func (g *GadgetVehicleEntity) SetCurStamina(curStamina float32) {
	g.curStamina = curStamina
}

func (g *GadgetVehicleEntity) GetMemberMap() map[uint32]*model.Player {
	return g.memberMap
}
