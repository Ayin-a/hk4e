package game

import (
	"math"
	"time"

	"hk4e/gs/constant"
	"hk4e/gs/game/aoi"
	"hk4e/gs/model"
	"hk4e/pkg/alg"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

// 世界管理器

type WorldManager struct {
	worldMap    map[uint32]*World
	snowflake   *alg.SnowflakeWorker
	worldStatic *WorldStatic
	bigWorld    *World
}

func NewWorldManager(snowflake *alg.SnowflakeWorker) (r *WorldManager) {
	r = new(WorldManager)
	r.worldMap = make(map[uint32]*World)
	r.snowflake = snowflake
	r.worldStatic = NewWorldStatic()
	r.worldStatic.InitTerrain()
	//r.worldStatic.Pathfinding()
	//r.worldStatic.ConvPathVectorListToAiMoveVectorList()
	return r
}

func (w *WorldManager) GetWorldByID(worldId uint32) *World {
	return w.worldMap[worldId]
}

func (w *WorldManager) GetWorldMap() map[uint32]*World {
	return w.worldMap
}

func (w *WorldManager) CreateWorld(owner *model.Player, multiplayer bool) *World {
	worldId := uint32(w.snowflake.GenId())
	world := &World{
		id:              worldId,
		owner:           owner,
		playerMap:       make(map[uint32]*model.Player),
		sceneMap:        make(map[uint32]*Scene),
		entityIdCounter: 0,
		worldLevel:      0,
		multiplayer:     multiplayer,
		mpLevelEntityId: 0,
		chatMsgList:     make([]*proto.ChatInfo, 0),
		// aoi划分
		// TODO 为减少内存占用暂时去掉Y轴AOI格子划分 原来的Y轴格子数量为80
		aoiManager: aoi.NewAoiManager(
			-8000, 4000, 120,
			-2000, 2000, 1,
			-5500, 6500, 120,
		),
	}
	if world.IsBigWorld() {
		world.aoiManager = aoi.NewAoiManager(
			-8000, 4000, 800,
			-2000, 2000, 1,
			-5500, 6500, 800,
		)
	}
	world.mpLevelEntityId = world.GetNextWorldEntityId(constant.EntityIdTypeConst.MPLEVEL)
	w.worldMap[worldId] = world
	return world
}

func (w *WorldManager) DestroyWorld(worldId uint32) {
	world := w.GetWorldByID(worldId)
	for _, player := range world.playerMap {
		world.RemovePlayer(player)
		player.WorldId = 0
	}
	delete(w.worldMap, worldId)
}

func (w *WorldManager) GetBigWorld() *World {
	return w.bigWorld
}

func (w *WorldManager) InitBigWorld(owner *model.Player) {
	w.bigWorld = w.GetWorldByID(owner.WorldId)
	w.bigWorld.multiplayer = true
}

type World struct {
	id              uint32
	owner           *model.Player
	playerMap       map[uint32]*model.Player
	sceneMap        map[uint32]*Scene
	entityIdCounter uint32
	worldLevel      uint8
	multiplayer     bool
	mpLevelEntityId uint32
	chatMsgList     []*proto.ChatInfo
	aoiManager      *aoi.AoiManager // 当前世界地图的aoi管理器
}

func (w *World) GetNextWorldEntityId(entityType uint16) uint32 {
	w.entityIdCounter++
	ret := (uint32(entityType) << 24) + w.entityIdCounter
	return ret
}

func (w *World) AddPlayer(player *model.Player, sceneId uint32) {
	player.PeerId = uint32(len(w.playerMap) + 1)
	w.playerMap[player.PlayerID] = player
	scene := w.GetSceneById(sceneId)
	scene.AddPlayer(player)
}

func (w *World) RemovePlayer(player *model.Player) {
	scene := w.sceneMap[player.SceneId]
	scene.RemovePlayer(player)
	delete(w.playerMap, player.PlayerID)
}

func (w *World) CreateScene(sceneId uint32) *Scene {
	scene := &Scene{
		id:                  sceneId,
		world:               w,
		playerMap:           make(map[uint32]*model.Player),
		entityMap:           make(map[uint32]*Entity),
		playerTeamEntityMap: make(map[uint32]*PlayerTeamEntity),
		gameTime:            18 * 60,
		attackQueue:         alg.NewRAQueue[*Attack](1000),
		createTime:          time.Now().UnixMilli(),
	}
	w.sceneMap[sceneId] = scene
	return scene
}

func (w *World) GetSceneById(sceneId uint32) *Scene {
	scene, exist := w.sceneMap[sceneId]
	if !exist {
		scene = w.CreateScene(sceneId)
	}
	return scene
}

func (w *World) AddChat(chatInfo *proto.ChatInfo) {
	w.chatMsgList = append(w.chatMsgList, chatInfo)
}

func (w *World) GetChatList() []*proto.ChatInfo {
	return w.chatMsgList
}

func (w *World) IsBigWorld() bool {
	return w.owner.PlayerID == 1
}

type Scene struct {
	id                  uint32
	world               *World
	playerMap           map[uint32]*model.Player
	entityMap           map[uint32]*Entity
	playerTeamEntityMap map[uint32]*PlayerTeamEntity
	gameTime            uint32
	attackQueue         *alg.RAQueue[*Attack]
	createTime          int64
}

type AvatarEntity struct {
	uid      uint32
	avatarId uint32
}

type MonsterEntity struct {
}

type GadgetEntity struct {
	gatherId uint32
}

type Entity struct {
	id                  uint32
	scene               *Scene
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
	gadgetEntity        *GadgetEntity
}

type PlayerTeamEntity struct {
	teamEntityId    uint32
	avatarEntityMap map[uint32]uint32
	weaponEntityMap map[uint64]uint32
}

type Attack struct {
	combatInvokeEntry *proto.CombatInvokeEntry
	uid               uint32
}

func (s *Scene) ChangeGameTime(time uint32) {
	s.gameTime = time % 1440
}

func (s *Scene) GetSceneTime() int64 {
	now := time.Now().UnixMilli()
	return now - s.createTime
}

func (s *Scene) GetPlayerTeamEntity(userId uint32) *PlayerTeamEntity {
	return s.playerTeamEntityMap[userId]
}

func (s *Scene) CreatePlayerTeamEntity(player *model.Player) {
	playerTeamEntity := &PlayerTeamEntity{
		teamEntityId:    s.world.GetNextWorldEntityId(constant.EntityIdTypeConst.TEAM),
		avatarEntityMap: make(map[uint32]uint32),
		weaponEntityMap: make(map[uint64]uint32),
	}
	s.playerTeamEntityMap[player.PlayerID] = playerTeamEntity
}

func (s *Scene) UpdatePlayerTeamEntity(player *model.Player) {
	team := player.TeamConfig.GetActiveTeam()
	playerTeamEntity := s.playerTeamEntityMap[player.PlayerID]
	for _, avatarId := range team.AvatarIdList {
		if avatarId == 0 {
			break
		}
		avatar := player.AvatarMap[avatarId]
		avatarEntityId, exist := playerTeamEntity.avatarEntityMap[avatarId]
		if exist {
			s.DestroyEntity(avatarEntityId)
		}
		playerTeamEntity.avatarEntityMap[avatarId] = s.CreateEntityAvatar(player, avatarId)
		weaponEntityId, exist := playerTeamEntity.weaponEntityMap[avatar.EquipWeapon.WeaponId]
		if exist {
			s.DestroyEntity(weaponEntityId)
		}
		playerTeamEntity.weaponEntityMap[avatar.EquipWeapon.WeaponId] = s.CreateEntityWeapon()
	}
}

func (s *Scene) AddPlayer(player *model.Player) {
	s.playerMap[player.PlayerID] = player
	s.CreatePlayerTeamEntity(player)
	s.UpdatePlayerTeamEntity(player)
}

func (s *Scene) RemovePlayer(player *model.Player) {
	playerTeamEntity := s.GetPlayerTeamEntity(player.PlayerID)
	for _, avatarEntityId := range playerTeamEntity.avatarEntityMap {
		s.DestroyEntity(avatarEntityId)
	}
	for _, weaponEntityId := range playerTeamEntity.weaponEntityMap {
		s.DestroyEntity(weaponEntityId)
	}
	delete(s.playerTeamEntityMap, player.PlayerID)
	delete(s.playerMap, player.PlayerID)
}

func (s *Scene) CreateEntityAvatar(player *model.Player, avatarId uint32) uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.EntityIdTypeConst.AVATAR)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		pos:                 player.Pos,
		rot:                 player.Rot,
		moveState:           uint16(proto.MotionState_MOTION_STATE_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp:           player.AvatarMap[avatarId].FightPropMap,
		entityType:          uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_AVATAR),
		level:               player.AvatarMap[avatarId].Level,
		avatarEntity: &AvatarEntity{
			uid:      player.PlayerID,
			avatarId: avatarId,
		},
	}
	s.entityMap[entity.id] = entity
	if avatarId == player.TeamConfig.GetActiveAvatarId() {
		s.world.aoiManager.AddEntityIdToGridByPos(entity.id, float32(entity.pos.X), float32(entity.pos.Y), float32(entity.pos.Z))
	}
	return entity.id
}

func (s *Scene) CreateEntityWeapon() uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.EntityIdTypeConst.WEAPON)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		pos:                 new(model.Vector),
		rot:                 new(model.Vector),
		moveState:           uint16(proto.MotionState_MOTION_STATE_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp:           nil,
		entityType:          uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_WEAPON),
		level:               0,
	}
	s.entityMap[entity.id] = entity
	return entity.id
}

func (s *Scene) CreateEntityMonster(pos *model.Vector, level uint8, fightProp map[uint32]float32) uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.EntityIdTypeConst.MONSTER)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		pos:                 pos,
		rot:                 new(model.Vector),
		moveState:           uint16(proto.MotionState_MOTION_STATE_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp:           fightProp,
		entityType:          uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_MONSTER),
		level:               level,
	}
	s.entityMap[entity.id] = entity
	s.world.aoiManager.AddEntityIdToGridByPos(entity.id, float32(entity.pos.X), float32(entity.pos.Y), float32(entity.pos.Z))
	return entity.id
}

func (s *Scene) CreateEntityGadget(pos *model.Vector, gatherId uint32) uint32 {
	entityId := s.world.GetNextWorldEntityId(constant.EntityIdTypeConst.GADGET)
	entity := &Entity{
		id:                  entityId,
		scene:               s,
		pos:                 pos,
		rot:                 new(model.Vector),
		moveState:           uint16(proto.MotionState_MOTION_STATE_NONE),
		lastMoveSceneTimeMs: 0,
		lastMoveReliableSeq: 0,
		fightProp: map[uint32]float32{
			uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP):  math.MaxFloat32,
			uint32(constant.FightPropertyConst.FIGHT_PROP_MAX_HP):  math.MaxFloat32,
			uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_HP): float32(1),
		},
		entityType: uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_GADGET),
		level:      0,
		gadgetEntity: &GadgetEntity{
			gatherId: gatherId,
		},
	}
	s.entityMap[entity.id] = entity
	s.world.aoiManager.AddEntityIdToGridByPos(entity.id, float32(entity.pos.X), float32(entity.pos.Y), float32(entity.pos.Z))
	return entity.id
}

func (s *Scene) DestroyEntity(entityId uint32) {
	entity := s.GetEntity(entityId)
	if entity == nil {
		return
	}
	s.world.aoiManager.RemoveEntityIdFromGridByPos(entity.id, float32(entity.pos.X), float32(entity.pos.Y), float32(entity.pos.Z))
	delete(s.entityMap, entityId)
}

func (s *Scene) GetEntity(entityId uint32) *Entity {
	return s.entityMap[entityId]
}

// 伤害处理和转发

func (s *Scene) AddAttack(attack *Attack) {
	s.attackQueue.EnQueue(attack)
}

func (s *Scene) AttackHandler(gameManager *GameManager) {
	combatInvokeEntryListAll := make([]*proto.CombatInvokeEntry, 0)
	combatInvokeEntryListOther := make(map[uint32][]*proto.CombatInvokeEntry)
	combatInvokeEntryListHost := make([]*proto.CombatInvokeEntry, 0)

	for s.attackQueue.Len() != 0 {
		attack := s.attackQueue.DeQueue()
		if attack.combatInvokeEntry == nil {
			logger.LOG.Error("error attack data, attack value: %v", attack)
			continue
		}

		hitInfo := new(proto.EvtBeingHitInfo)
		err := pb.Unmarshal(attack.combatInvokeEntry.CombatData, hitInfo)
		if err != nil {
			logger.LOG.Error("parse combat invocations entity hit info error: %v", err)
			continue
		}

		attackResult := hitInfo.AttackResult
		logger.LOG.Debug("run attack handler, attackResult: %v", attackResult)
		target := s.entityMap[attackResult.DefenseId]
		if target == nil {
			logger.LOG.Error("could not found target, defense id: %v", attackResult.DefenseId)
			continue
		}
		attackResult.Damage *= 100
		damage := attackResult.Damage
		attackerId := attackResult.AttackerId
		_ = attackerId
		currHp := float32(0)
		if target.fightProp != nil {
			currHp = target.fightProp[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP)]
			currHp -= damage
			if currHp < 0 {
				currHp = 0
			}
			target.fightProp[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP)] = currHp
		}

		// PacketEntityFightPropUpdateNotify
		entityFightPropUpdateNotify := new(proto.EntityFightPropUpdateNotify)
		entityFightPropUpdateNotify.EntityId = target.id
		entityFightPropUpdateNotify.FightPropMap = make(map[uint32]float32)
		entityFightPropUpdateNotify.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP)] = currHp
		for _, player := range s.playerMap {
			gameManager.SendMsg(cmd.EntityFightPropUpdateNotify, player.PlayerID, player.ClientSeq, entityFightPropUpdateNotify)
		}

		combatData, err := pb.Marshal(hitInfo)
		if err != nil {
			logger.LOG.Error("create combat invocations entity hit info error: %v", err)
		}
		attack.combatInvokeEntry.CombatData = combatData
		switch attack.combatInvokeEntry.ForwardType {
		case proto.ForwardType_FORWARD_TYPE_TO_ALL:
			combatInvokeEntryListAll = append(combatInvokeEntryListAll, attack.combatInvokeEntry)
		case proto.ForwardType_FORWARD_TYPE_TO_ALL_EXCEPT_CUR:
			fallthrough
		case proto.ForwardType_FORWARD_TYPE_TO_ALL_EXIST_EXCEPT_CUR:
			if combatInvokeEntryListOther[attack.uid] == nil {
				combatInvokeEntryListOther[attack.uid] = make([]*proto.CombatInvokeEntry, 0)
			}
			combatInvokeEntryListOther[attack.uid] = append(combatInvokeEntryListOther[attack.uid], attack.combatInvokeEntry)
		case proto.ForwardType_FORWARD_TYPE_TO_HOST:
			combatInvokeEntryListHost = append(combatInvokeEntryListHost, attack.combatInvokeEntry)
		default:
		}
	}

	// PacketCombatInvocationsNotify
	if len(combatInvokeEntryListAll) > 0 {
		combatInvocationsNotifyAll := new(proto.CombatInvocationsNotify)
		combatInvocationsNotifyAll.InvokeList = combatInvokeEntryListAll
		for _, player := range s.playerMap {
			gameManager.SendMsg(cmd.CombatInvocationsNotify, player.PlayerID, player.ClientSeq, combatInvocationsNotifyAll)
		}
	}
	if len(combatInvokeEntryListOther) > 0 {
		for uid, list := range combatInvokeEntryListOther {
			combatInvocationsNotifyOther := new(proto.CombatInvocationsNotify)
			combatInvocationsNotifyOther.InvokeList = list
			for _, player := range s.playerMap {
				if player.PlayerID == uid {
					continue
				}
				gameManager.SendMsg(cmd.CombatInvocationsNotify, player.PlayerID, player.ClientSeq, combatInvocationsNotifyOther)
			}
		}
	}
	if len(combatInvokeEntryListHost) > 0 {
		combatInvocationsNotifyHost := new(proto.CombatInvocationsNotify)
		combatInvocationsNotifyHost.InvokeList = combatInvokeEntryListHost
		gameManager.SendMsg(cmd.CombatInvocationsNotify, s.world.owner.PlayerID, s.world.owner.ClientSeq, combatInvocationsNotifyHost)
	}
}
