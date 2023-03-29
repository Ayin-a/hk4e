package game

import (
	"math"
	"time"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

// Scene 场景数据结构
type Scene struct {
	id         uint32
	world      *World
	playerMap  map[uint32]*model.Player
	entityMap  map[uint32]*Entity // 场景中全部的实体
	groupMap   map[uint32]*Group  // 场景中按group->suite分类的实体
	gameTime   uint32             // 游戏内提瓦特大陆的时间
	createTime int64              // 场景创建时间
	meeoIndex  uint32             // 客户端风元素染色同步协议的计数器
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

func (s *Scene) GetGroupById(groupId uint32) *Group {
	return s.groupMap[groupId]
}

func (s *Scene) GetAllGroup() map[uint32]*Group {
	return s.groupMap
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

func (s *Scene) CreateEntityAvatar(player *model.Player, avatarId uint32) uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_TYPE_AVATAR)
	dbAvatar := player.GetDbAvatar()
	avatar, ok := dbAvatar.AvatarMap[avatarId]
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
		fightProp:           avatar.FightPropMap, // 使用角色结构的数据
		entityType:          constant.ENTITY_TYPE_AVATAR,
		avatarEntity: &AvatarEntity{
			uid:      player.PlayerID,
			avatarId: avatarId,
		},
	}
	s.CreateEntity(entity)
	return entity.id
}

func (s *Scene) CreateEntityWeapon() uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_TYPE_WEAPON)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		lifeState:           constant.LIFE_STATE_ALIVE,
		pos:                 new(model.Vector),
		rot:                 new(model.Vector),
		moveState:           uint16(proto.MotionState_MOTION_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp: map[uint32]float32{
			constant.FIGHT_PROP_CUR_HP:  math.MaxFloat32,
			constant.FIGHT_PROP_MAX_HP:  math.MaxFloat32,
			constant.FIGHT_PROP_BASE_HP: float32(1),
		},
		entityType: constant.ENTITY_TYPE_WEAPON,
	}
	s.CreateEntity(entity)
	return entity.id
}

func (s *Scene) CreateEntityMonster(pos, rot *model.Vector, monsterId uint32, level uint8, fightProp map[uint32]float32, configId, groupId uint32) uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_TYPE_MONSTER)
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
		entityType:          constant.ENTITY_TYPE_MONSTER,
		level:               level,
		monsterEntity: &MonsterEntity{
			monsterId: monsterId,
		},
		configId: configId,
		groupId:  groupId,
	}
	s.CreateEntity(entity)
	return entity.id
}

func (s *Scene) CreateEntityNpc(pos, rot *model.Vector, npcId, roomId, parentQuestId, blockId, configId, groupId uint32) uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_TYPE_NPC)
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
			constant.FIGHT_PROP_CUR_HP:  math.MaxFloat32,
			constant.FIGHT_PROP_MAX_HP:  math.MaxFloat32,
			constant.FIGHT_PROP_BASE_HP: float32(1),
		},
		entityType: constant.ENTITY_TYPE_NPC,
		npcEntity: &NpcEntity{
			NpcId:         npcId,
			RoomId:        roomId,
			ParentQuestId: parentQuestId,
			BlockId:       blockId,
		},
		configId: configId,
		groupId:  groupId,
	}
	s.CreateEntity(entity)
	return entity.id
}

func (s *Scene) CreateEntityGadgetNormal(pos, rot *model.Vector, gadgetId, gadgetState uint32, gadgetNormalEntity *GadgetNormalEntity, configId, groupId uint32) uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_TYPE_GADGET)
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
			constant.FIGHT_PROP_CUR_HP:  math.MaxFloat32,
			constant.FIGHT_PROP_MAX_HP:  math.MaxFloat32,
			constant.FIGHT_PROP_BASE_HP: float32(1),
		},
		entityType: constant.ENTITY_TYPE_GADGET,
		gadgetEntity: &GadgetEntity{
			gadgetId:           gadgetId,
			gadgetState:        gadgetState,
			gadgetType:         GADGET_TYPE_NORMAL,
			gadgetNormalEntity: gadgetNormalEntity,
		},
		configId: configId,
		groupId:  groupId,
	}
	s.CreateEntity(entity)
	return entity.id
}

func (s *Scene) CreateEntityGadgetClient(pos, rot *model.Vector, entityId, configId, campId, campType, ownerEntityId, targetEntityId, propOwnerEntityId uint32) {
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
			constant.FIGHT_PROP_CUR_HP:  math.MaxFloat32,
			constant.FIGHT_PROP_MAX_HP:  math.MaxFloat32,
			constant.FIGHT_PROP_BASE_HP: float32(1),
		},
		entityType: constant.ENTITY_TYPE_GADGET,
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
	s.CreateEntity(entity)
}

func (s *Scene) CreateEntityGadgetVehicle(player *model.Player, pos, rot *model.Vector, vehicleId uint32) uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.ENTITY_TYPE_GADGET)
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
			constant.FIGHT_PROP_CUR_HP:  114514,
			constant.FIGHT_PROP_MAX_HP:  114514,
			constant.FIGHT_PROP_BASE_HP: float32(1),
		},
		entityType: constant.ENTITY_TYPE_GADGET,
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
	s.CreateEntity(entity)
	return entity.id
}

func (s *Scene) CreateEntity(entity *Entity) {
	if len(s.entityMap) >= ENTITY_MAX_SEND_NUM && !ENTITY_NUM_UNLIMIT {
		logger.Error("above max scene entity num limit: %v, id: %v, pos: %v", ENTITY_MAX_SEND_NUM, entity.id, entity.pos)
		return
	}
	s.entityMap[entity.id] = entity
}

func (s *Scene) DestroyEntity(entityId uint32) {
	entity := s.GetEntity(entityId)
	if entity == nil {
		return
	}
	delete(s.entityMap, entity.id)
}

func (s *Scene) GetEntity(entityId uint32) *Entity {
	return s.entityMap[entityId]
}

func (s *Scene) AddGroupSuite(groupId uint32, suiteId uint8) {
	groupConfig := gdconf.GetSceneGroup(int32(groupId))
	if groupConfig == nil {
		logger.Error("get scene group config is nil, groupId: %v", groupId)
		return
	}
	suiteIndex := suiteId - 1
	if int(suiteIndex) >= len(groupConfig.SuiteList) {
		logger.Error("invalid suiteId: %v", suiteId)
		return
	}
	suiteConfig := groupConfig.SuiteList[suiteIndex]
	suite := &Suite{
		entityMap: make(map[uint32]*Entity),
	}
	for _, monsterConfigId := range suiteConfig.MonsterConfigIdList {
		monster, exist := groupConfig.MonsterMap[monsterConfigId]
		if !exist {
			logger.Error("monster config not exist, monsterConfigId: %v", monsterConfigId)
			continue
		}
		entityId := s.createConfigEntity(uint32(groupConfig.Id), monster)
		entity := s.GetEntity(entityId)
		suite.entityMap[entityId] = entity
	}
	for _, gadgetConfigId := range suiteConfig.GadgetConfigIdList {
		gadget, exist := groupConfig.GadgetMap[gadgetConfigId]
		if !exist {
			logger.Error("gadget config not exist, gadgetConfigId: %v", gadgetConfigId)
			continue
		}
		entityId := s.createConfigEntity(uint32(groupConfig.Id), gadget)
		entity := s.GetEntity(entityId)
		suite.entityMap[entityId] = entity
	}
	for _, npc := range groupConfig.NpcMap {
		entityId := s.createConfigEntity(uint32(groupConfig.Id), npc)
		entity := s.GetEntity(entityId)
		suite.entityMap[entityId] = entity
	}
	group, exist := s.groupMap[groupId]
	if !exist {
		group = &Group{
			suiteMap: make(map[uint8]*Suite),
		}
		s.groupMap[groupId] = group
	}
	group.suiteMap[suiteId] = suite
}

func (s *Scene) RemoveGroupSuite(groupId uint32, suiteId uint8) {
	group := s.groupMap[groupId]
	if group == nil {
		logger.Error("group not exist, groupId: %v", groupId)
		return
	}
	suite := group.suiteMap[suiteId]
	if suite == nil {
		logger.Error("suite not exist, suiteId: %v", suiteId)
		return
	}
	for _, entity := range suite.entityMap {
		s.DestroyEntity(entity.id)
	}
	delete(group.suiteMap, suiteId)
}

// 创建配置表里的实体
func (s *Scene) createConfigEntity(groupId uint32, entityConfig any) uint32 {
	switch entityConfig.(type) {
	case *gdconf.Monster:
		monster := entityConfig.(*gdconf.Monster)
		return s.CreateEntityMonster(
			&model.Vector{X: float64(monster.Pos.X), Y: float64(monster.Pos.Y), Z: float64(monster.Pos.Z)},
			&model.Vector{X: float64(monster.Rot.X), Y: float64(monster.Rot.Y), Z: float64(monster.Rot.Z)},
			uint32(monster.MonsterId), uint8(monster.Level), getTempFightPropMap(), uint32(monster.ConfigId), groupId,
		)
	case *gdconf.Npc:
		npc := entityConfig.(*gdconf.Npc)
		return s.CreateEntityNpc(
			&model.Vector{X: float64(npc.Pos.X), Y: float64(npc.Pos.Y), Z: float64(npc.Pos.Z)},
			&model.Vector{X: float64(npc.Rot.X), Y: float64(npc.Rot.Y), Z: float64(npc.Rot.Z)},
			uint32(npc.NpcId), 0, 0, 0, uint32(npc.ConfigId), groupId,
		)
	case *gdconf.Gadget:
		gadget := entityConfig.(*gdconf.Gadget)
		// 70500000并不是实际的物件id 根据节点类型对应采集物配置表
		if gadget.PointType != 0 && gadget.GadgetId == 70500000 {
			gatherDataConfig := gdconf.GetGatherDataByPointType(gadget.PointType)
			if gatherDataConfig == nil {
				return 0
			}
			return s.CreateEntityGadgetNormal(
				&model.Vector{X: float64(gadget.Pos.X), Y: float64(gadget.Pos.Y), Z: float64(gadget.Pos.Z)},
				&model.Vector{X: float64(gadget.Rot.X), Y: float64(gadget.Rot.Y), Z: float64(gadget.Rot.Z)},
				uint32(gatherDataConfig.GadgetId),
				uint32(constant.GADGET_STATE_DEFAULT),
				&GadgetNormalEntity{
					isDrop: false,
					itemId: uint32(gatherDataConfig.ItemId),
					count:  1,
				},
				uint32(gadget.ConfigId),
				groupId,
			)
		} else {
			return s.CreateEntityGadgetNormal(
				&model.Vector{X: float64(gadget.Pos.X), Y: float64(gadget.Pos.Y), Z: float64(gadget.Pos.Z)},
				&model.Vector{X: float64(gadget.Rot.X), Y: float64(gadget.Rot.Y), Z: float64(gadget.Rot.Z)},
				uint32(gadget.GadgetId),
				uint32(gadget.State),
				new(GadgetNormalEntity),
				uint32(gadget.ConfigId),
				groupId,
			)
		}
	default:
		return 0
	}
}

// TODO 临时写死
func getTempFightPropMap() map[uint32]float32 {
	fpm := map[uint32]float32{
		constant.FIGHT_PROP_BASE_ATTACK:       float32(50.0),
		constant.FIGHT_PROP_CUR_ATTACK:        float32(50.0),
		constant.FIGHT_PROP_BASE_DEFENSE:      float32(500.0),
		constant.FIGHT_PROP_CUR_DEFENSE:       float32(500.0),
		constant.FIGHT_PROP_BASE_HP:           float32(10000.0),
		constant.FIGHT_PROP_CUR_HP:            float32(10000.0),
		constant.FIGHT_PROP_MAX_HP:            float32(10000.0),
		constant.FIGHT_PROP_PHYSICAL_SUB_HURT: float32(0.1),
		constant.FIGHT_PROP_ICE_SUB_HURT:      float32(0.1),
		constant.FIGHT_PROP_FIRE_SUB_HURT:     float32(0.1),
		constant.FIGHT_PROP_ELEC_SUB_HURT:     float32(0.1),
		constant.FIGHT_PROP_WIND_SUB_HURT:     float32(0.1),
		constant.FIGHT_PROP_ROCK_SUB_HURT:     float32(0.1),
		constant.FIGHT_PROP_GRASS_SUB_HURT:    float32(0.1),
		constant.FIGHT_PROP_WATER_SUB_HURT:    float32(0.1),
	}
	return fpm
}

type Group struct {
	suiteMap map[uint8]*Suite
}

type Suite struct {
	entityMap map[uint32]*Entity
}

func (g *Group) GetSuiteById(suiteId uint8) *Suite {
	return g.suiteMap[suiteId]
}

func (g *Group) GetAllSuite() map[uint8]*Suite {
	return g.suiteMap
}

func (g *Group) GetAllEntity() map[uint32]*Entity {
	entityMap := make(map[uint32]*Entity)
	for _, suite := range g.suiteMap {
		for _, entity := range suite.entityMap {
			entityMap[entity.id] = entity
		}
	}
	return entityMap
}

func (g *Group) GetEntityByConfigId(configId uint32) *Entity {
	for _, suite := range g.suiteMap {
		for _, entity := range suite.entityMap {
			if entity.configId == configId {
				return entity
			}
		}
	}
	return nil
}

func (g *Group) DestroyEntity(entityId uint32) {
	for _, suite := range g.suiteMap {
		for _, entity := range suite.entityMap {
			if entity.id == entityId {
				delete(suite.entityMap, entity.id)
				return
			}
		}
	}
}

func (s *Suite) GetEntityById(entityId uint32) *Entity {
	return s.entityMap[entityId]
}

func (s *Suite) GetAllEntity() map[uint32]*Entity {
	return s.entityMap
}

// Entity 场景实体数据结构
type Entity struct {
	id                  uint32        // 实体id
	scene               *Scene        // 实体归属上级场景的访问指针
	lifeState           uint16        // 存活状态
	pos                 *model.Vector // 位置
	rot                 *model.Vector // 朝向
	moveState           uint16        // 运动状态
	lastMoveSceneTimeMs uint32
	lastMoveReliableSeq uint32
	fightProp           map[uint32]float32 // 战斗属性
	level               uint8              // 等级
	entityType          uint8              // 实体类型
	avatarEntity        *AvatarEntity
	monsterEntity       *MonsterEntity
	npcEntity           *NpcEntity
	gadgetEntity        *GadgetEntity
	configId            uint32 // LUA配置相关
	groupId             uint32
}

func (e *Entity) GetId() uint32 {
	return e.id
}

func (e *Entity) GetScene() *Scene {
	return e.scene
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

func (e *Entity) GetLevel() uint8 {
	return e.level
}

func (e *Entity) GetEntityType() uint8 {
	return e.entityType
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

func (e *Entity) GetGroupId() uint32 {
	return e.groupId
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

const (
	GADGET_TYPE_NORMAL = iota
	GADGET_TYPE_CLIENT
	GADGET_TYPE_VEHICLE // 载具
)

type GadgetEntity struct {
	gadgetType          int
	gadgetId            uint32
	gadgetState         uint32
	gadgetNormalEntity  *GadgetNormalEntity
	gadgetClientEntity  *GadgetClientEntity
	gadgetVehicleEntity *GadgetVehicleEntity
}

func (g *GadgetEntity) GetGadgetType() int {
	return g.gadgetType
}

func (g *GadgetEntity) GetGadgetId() uint32 {
	return g.gadgetId
}

func (g *GadgetEntity) GetGadgetState() uint32 {
	return g.gadgetState
}

func (g *GadgetEntity) SetGadgetState(state uint32) {
	g.gadgetState = state
}

func (g *GadgetEntity) GetGadgetNormalEntity() *GadgetNormalEntity {
	return g.gadgetNormalEntity
}

func (g *GadgetEntity) GetGadgetClientEntity() *GadgetClientEntity {
	return g.gadgetClientEntity
}

func (g *GadgetEntity) GetGadgetVehicleEntity() *GadgetVehicleEntity {
	return g.gadgetVehicleEntity
}

type GadgetNormalEntity struct {
	isDrop bool
	itemId uint32
	count  uint32
}

func (g *GadgetNormalEntity) GetIsDrop() bool {
	return g.isDrop
}

func (g *GadgetNormalEntity) GetItemId() uint32 {
	return g.itemId
}

func (g *GadgetNormalEntity) GetCount() uint32 {
	return g.count
}

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
