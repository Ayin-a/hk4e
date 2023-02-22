package game

import (
	"time"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/alg"
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

// 世界管理器

const (
	ENTITY_NUM_UNLIMIT        = false // 是否不限制场景内实体数量
	ENTITY_MAX_SEND_NUM       = 300   // 场景内最大实体数量
	MAX_MULTIPLAYER_WORLD_NUM = 10    // 本服务器最大多人世界数量
)

type WorldManager struct {
	worldMap            map[uint32]*World
	snowflake           *alg.SnowflakeWorker
	aiWorld             *World                     // 本服的Ai玩家世界
	sceneBlockAoiMap    map[uint32]*alg.AoiManager // 全局各场景地图的aoi管理器
	multiplayerWorldNum uint32                     // 本服务器的多人世界数量
}

func NewWorldManager(snowflake *alg.SnowflakeWorker) (r *WorldManager) {
	r = new(WorldManager)
	r.worldMap = make(map[uint32]*World)
	r.snowflake = snowflake
	r.sceneBlockAoiMap = make(map[uint32]*alg.AoiManager)
	for _, sceneConfig := range gdconf.GetSceneDetailMap() {
		minX := int16(0)
		maxX := int16(0)
		minZ := int16(0)
		maxZ := int16(0)
		blockXLen := int16(0)
		blockYLen := int16(0)
		blockZLen := int16(0)
		ok := true
		for _, blockConfig := range sceneConfig.BlockMap {
			if int16(blockConfig.BlockRange.Min.X) < minX {
				minX = int16(blockConfig.BlockRange.Min.X)
			}
			if int16(blockConfig.BlockRange.Max.X) > maxX {
				maxX = int16(blockConfig.BlockRange.Max.X)
			}
			if int16(blockConfig.BlockRange.Min.Z) < minZ {
				minZ = int16(blockConfig.BlockRange.Min.Z)
			}
			if int16(blockConfig.BlockRange.Max.Z) > maxZ {
				maxZ = int16(blockConfig.BlockRange.Max.Z)
			}
			xLen := int16(blockConfig.BlockRange.Max.X - blockConfig.BlockRange.Min.X)
			yLen := int16(blockConfig.BlockRange.Max.Y - blockConfig.BlockRange.Min.Y)
			zLen := int16(blockConfig.BlockRange.Max.Z - blockConfig.BlockRange.Min.Z)
			if blockXLen == 0 {
				blockXLen = xLen
			} else {
				if blockXLen != xLen {
					ok = false
					break
				}
			}
			if blockYLen == 0 {
				blockYLen = yLen
			} else {
				if blockYLen != yLen {
					ok = false
					break
				}
			}
			if blockZLen == 0 {
				blockZLen = zLen
			} else {
				if blockZLen != zLen {
					ok = false
					break
				}
			}
		}
		if !ok {
			continue
		}
		numX := int16(0)
		if blockXLen != 0 {
			if blockXLen > 32 {
				blockXLen = 32
			}
			numX = (maxX - minX) / blockXLen
		} else {
			numX = 1
		}
		if numX == 0 {
			numX = 1
		}
		numZ := int16(0)
		if blockZLen != 0 {
			if blockZLen > 32 {
				blockZLen = 32
			}
			numZ = (maxZ - minZ) / blockZLen
		} else {
			numZ = 1
		}
		if numZ == 0 {
			numZ = 1
		}
		aoiManager := alg.NewAoiManager()
		aoiManager.SetAoiRange(minX, maxX, -1.0, 1.0, minZ, maxZ)
		aoiManager.Init3DRectAoiManager(numX, 1, numZ)
		for _, blockConfig := range sceneConfig.BlockMap {
			for _, groupConfig := range blockConfig.GroupMap {
				for _, monsterConfig := range groupConfig.MonsterList {
					aoiManager.AddObjectToGridByPos(r.snowflake.GenId(), monsterConfig,
						float32(monsterConfig.Pos.X),
						float32(0.0),
						float32(monsterConfig.Pos.Z))
				}
				for _, npcConfig := range groupConfig.NpcList {
					aoiManager.AddObjectToGridByPos(r.snowflake.GenId(), npcConfig,
						float32(npcConfig.Pos.X),
						float32(0.0),
						float32(npcConfig.Pos.Z))
				}
				for _, gadgetConfig := range groupConfig.GadgetList {
					aoiManager.AddObjectToGridByPos(r.snowflake.GenId(), gadgetConfig,
						float32(gadgetConfig.Pos.X),
						float32(0.0),
						float32(gadgetConfig.Pos.Z))
				}
			}
		}
		r.sceneBlockAoiMap[uint32(sceneConfig.Id)] = aoiManager
	}
	r.multiplayerWorldNum = 0
	return r
}

func (w *WorldManager) GetWorldByID(worldId uint32) *World {
	return w.worldMap[worldId]
}

func (w *WorldManager) GetAllWorld() map[uint32]*World {
	return w.worldMap
}

func (w *WorldManager) CreateWorld(owner *model.Player) *World {
	worldId := uint32(w.snowflake.GenId())
	world := &World{
		id:                  worldId,
		owner:               owner,
		playerMap:           make(map[uint32]*model.Player),
		sceneMap:            make(map[uint32]*Scene),
		entityIdCounter:     0,
		worldLevel:          0,
		multiplayer:         false,
		mpLevelEntityId:     0,
		chatMsgList:         make([]*proto.ChatInfo, 0),
		playerFirstEnterMap: make(map[uint32]int64),
		waitEnterPlayerMap:  make(map[uint32]int64),
		multiplayerTeam:     CreateMultiplayerTeam(),
		peerList:            make([]*model.Player, 0),
	}
	world.mpLevelEntityId = world.GetNextWorldEntityId(constant.ENTITY_ID_TYPE_MPLEVEL)
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
	if world.multiplayer {
		w.multiplayerWorldNum--
	}
}

// GetAiWorld 获取本服务器的Ai世界
func (w *WorldManager) GetAiWorld() *World {
	return w.aiWorld
}

// InitAiWorld 初始化Ai世界
func (w *WorldManager) InitAiWorld(owner *model.Player) {
	w.aiWorld = w.GetWorldByID(owner.WorldId)
	w.aiWorld.ChangeToMultiplayer()
	go RunPlayAudio()
}

func (w *WorldManager) IsAiWorld(world *World) bool {
	return world.id == w.aiWorld.id
}

func (w *WorldManager) IsRobotWorld(world *World) bool {
	return world.owner.PlayerID < PlayerBaseUid
}

func (w *WorldManager) IsBigWorld(world *World) bool {
	return (world.id == w.aiWorld.id) && (w.aiWorld.owner.PlayerID == BigWorldAiUid)
}

func (w *WorldManager) GetSceneBlockAoiMap() map[uint32]*alg.AoiManager {
	return w.sceneBlockAoiMap
}

func (w *WorldManager) GetMultiplayerWorldNum() uint32 {
	return w.multiplayerWorldNum
}

// World 世界数据结构
type World struct {
	id                  uint32
	owner               *model.Player
	playerMap           map[uint32]*model.Player
	sceneMap            map[uint32]*Scene
	entityIdCounter     uint32 // 世界的实体id生成计数器
	worldLevel          uint8  // 世界等级
	multiplayer         bool   // 是否多人世界
	mpLevelEntityId     uint32
	chatMsgList         []*proto.ChatInfo // 世界聊天消息列表
	playerFirstEnterMap map[uint32]int64  // 玩家第一次进入世界的时间 key:uid value:进入时间
	waitEnterPlayerMap  map[uint32]int64  // 进入世界的玩家等待列表 key:uid value:开始时间
	multiplayerTeam     *MultiplayerTeam
	peerList            []*model.Player // 玩家编号列表
}

func (w *World) GetId() uint32 {
	return w.id
}

func (w *World) GetOwner() *model.Player {
	return w.owner
}

func (w *World) GetAllPlayer() map[uint32]*model.Player {
	return w.playerMap
}

func (w *World) GetAllScene() map[uint32]*Scene {
	return w.sceneMap
}

func (w *World) GetWorldLevel() uint8 {
	return w.worldLevel
}

func (w *World) GetMultiplayer() bool {
	return w.multiplayer
}

func (w *World) GetMpLevelEntityId() uint32 {
	return w.mpLevelEntityId
}

func (w *World) GetNextWorldEntityId(entityType uint16) uint32 {
	for {
		w.entityIdCounter++
		ret := (uint32(entityType) << 24) + w.entityIdCounter
		reTry := false
		for _, scene := range w.sceneMap {
			_, exist := scene.entityMap[ret]
			if exist {
				reTry = true
				break
			}
		}
		if reTry {
			continue
		} else {
			return ret
		}
	}
}

// GetPlayerPeerId 获取当前玩家世界内编号
func (w *World) GetPlayerPeerId(player *model.Player) uint32 {
	peerId := uint32(0)
	for peerIdIndex, worldPlayer := range w.peerList {
		if worldPlayer.PlayerID == player.PlayerID {
			peerId = uint32(peerIdIndex) + 1
		}
	}
	// logger.Debug("get player peer id is: %v, uid: %v", peerId, player.PlayerID)
	return peerId
}

// GetPlayerByPeerId 通过世界内编号获取玩家
func (w *World) GetPlayerByPeerId(peerId uint32) *model.Player {
	peerIdIndex := int(peerId) - 1
	if peerIdIndex >= len(w.peerList) {
		return nil
	}
	return w.peerList[peerIdIndex]
}

// GetWorldPlayerNum 获取世界中玩家的数量
func (w *World) GetWorldPlayerNum() int {
	return len(w.playerMap)
}

func (w *World) AddPlayer(player *model.Player, sceneId uint32) {
	w.peerList = append(w.peerList, player)
	w.playerMap[player.PlayerID] = player
	// 将玩家自身当前的队伍角色信息复制到世界的玩家本地队伍
	team := player.TeamConfig.GetActiveTeam()
	if player.PlayerID == w.owner.PlayerID {
		w.SetPlayerLocalTeam(player, team.GetAvatarIdList())
	} else {
		activeAvatarId := player.TeamConfig.GetActiveAvatarId()
		w.SetPlayerLocalTeam(player, []uint32{activeAvatarId})
	}
	playerNum := w.GetWorldPlayerNum()
	if playerNum > 4 {
		if !WORLD_MANAGER.IsBigWorld(w) {
			return
		}
		w.AddMultiplayerTeam(player)
	} else {
		w.UpdateMultiplayerTeam()
	}
	for _, worldPlayer := range w.playerMap {
		list := w.GetPlayerWorldAvatarList(worldPlayer)
		maxIndex := len(list) - 1
		index := int(worldPlayer.TeamConfig.CurrAvatarIndex)
		if index > maxIndex {
			w.SetPlayerAvatarIndex(worldPlayer, 0)
		} else {
			w.SetPlayerAvatarIndex(worldPlayer, index)
		}
	}
	scene := w.GetSceneById(sceneId)
	if scene == nil {
		logger.Error("scene is nil, sceneId: %v", sceneId)
		return
	}
	scene.AddPlayer(player)
	w.InitPlayerTeamEntityId(player)
}

func (w *World) RemovePlayer(player *model.Player) {
	peerId := w.GetPlayerPeerId(player)
	w.peerList = append(w.peerList[:peerId-1], w.peerList[peerId:]...)
	scene := w.sceneMap[player.SceneId]
	scene.RemovePlayer(player)
	delete(w.playerMap, player.PlayerID)
	delete(w.playerFirstEnterMap, player.PlayerID)
	delete(w.multiplayerTeam.localTeamMap, player.PlayerID)
	delete(w.multiplayerTeam.localAvatarIndexMap, player.PlayerID)
	delete(w.multiplayerTeam.localTeamEntityMap, player.PlayerID)
	playerNum := w.GetWorldPlayerNum()
	if playerNum > 4 {
		if !WORLD_MANAGER.IsBigWorld(w) {
			return
		}
		w.RemoveMultiplayerTeam(player)
	} else {
		if player.PlayerID != w.owner.PlayerID {
			w.UpdateMultiplayerTeam()
		}
	}
}

// WorldAvatar 世界角色
type WorldAvatar struct {
	uid            uint32
	avatarId       uint32
	avatarEntityId uint32
	weaponEntityId uint32
	abilityList    []*proto.AbilityAppliedAbility
	modifierList   []*proto.AbilityAppliedModifier
}

func (w *WorldAvatar) GetUid() uint32 {
	return w.uid
}

func (w *WorldAvatar) GetAvatarId() uint32 {
	return w.avatarId
}

func (w *WorldAvatar) GetAvatarEntityId() uint32 {
	return w.avatarEntityId
}

func (w *WorldAvatar) GetWeaponEntityId() uint32 {
	return w.weaponEntityId
}

func (w *WorldAvatar) SetWeaponEntityId(weaponEntityId uint32) {
	w.weaponEntityId = weaponEntityId
}

func (w *WorldAvatar) GetAbilityList() []*proto.AbilityAppliedAbility {
	return w.abilityList
}

func (w *WorldAvatar) SetAbilityList(abilityList []*proto.AbilityAppliedAbility) {
	w.abilityList = abilityList
}

func (w *WorldAvatar) GetModifierList() []*proto.AbilityAppliedModifier {
	return w.modifierList
}

func (w *WorldAvatar) SetModifierList(modifierList []*proto.AbilityAppliedModifier) {
	w.modifierList = modifierList
}

// GetWorldAvatarList 获取世界队伍的全部角色列表
func (w *World) GetWorldAvatarList() []*WorldAvatar {
	worldAvatarList := make([]*WorldAvatar, 0)
	for _, worldAvatar := range w.multiplayerTeam.worldTeam {
		if worldAvatar.uid == 0 {
			continue
		}
		worldAvatarList = append(worldAvatarList, worldAvatar)
	}
	return worldAvatarList
}

// GetPlayerWorldAvatar 获取某玩家在世界队伍中的某角色
func (w *World) GetPlayerWorldAvatar(player *model.Player, avatarId uint32) *WorldAvatar {
	for _, worldAvatar := range w.GetWorldAvatarList() {
		if worldAvatar.uid == player.PlayerID && worldAvatar.avatarId == avatarId {
			return worldAvatar
		}
	}
	return nil
}

// GetPlayerWorldAvatarList 获取某玩家在世界队伍中的所有角色列表
func (w *World) GetPlayerWorldAvatarList(player *model.Player) []*WorldAvatar {
	worldAvatarList := make([]*WorldAvatar, 0)
	for _, worldAvatar := range w.GetWorldAvatarList() {
		if worldAvatar.uid == player.PlayerID {
			worldAvatarList = append(worldAvatarList, worldAvatar)
		}
	}
	return worldAvatarList
}

// GetWorldAvatarByEntityId 通过场景实体id获取世界队伍中的角色
func (w *World) GetWorldAvatarByEntityId(avatarEntityId uint32) *WorldAvatar {
	for _, worldAvatar := range w.GetWorldAvatarList() {
		if worldAvatar.avatarEntityId == avatarEntityId {
			return worldAvatar
		}
	}
	return nil
}

// InitPlayerWorldAvatar 初始化某玩家在世界队伍中的所有角色
func (w *World) InitPlayerWorldAvatar(player *model.Player) {
	scene := w.GetSceneById(player.SceneId)
	if scene == nil {
		logger.Error("scene is nil, sceneId: %v", player.SceneId)
		return
	}
	for _, worldAvatar := range w.GetWorldAvatarList() {
		if worldAvatar.uid != player.PlayerID {
			continue
		}
		if !player.SceneJump && (worldAvatar.avatarEntityId != 0 || worldAvatar.weaponEntityId != 0) {
			continue
		}
		worldAvatar.avatarEntityId = scene.CreateEntityAvatar(player, worldAvatar.avatarId)
		worldAvatar.weaponEntityId = scene.CreateEntityWeapon()
	}
}

// GetPlayerTeamEntityId 获取某玩家的本地队伍实体id
func (w *World) GetPlayerTeamEntityId(player *model.Player) uint32 {
	return w.multiplayerTeam.localTeamEntityMap[player.PlayerID]
}

// InitPlayerTeamEntityId 初始化某玩家的本地队伍实体id
func (w *World) InitPlayerTeamEntityId(player *model.Player) {
	w.multiplayerTeam.localTeamEntityMap[player.PlayerID] = w.GetNextWorldEntityId(constant.ENTITY_ID_TYPE_TEAM)
}

// GetPlayerWorldAvatarEntityId 获取某玩家在世界队伍中的某角色的实体id
func (w *World) GetPlayerWorldAvatarEntityId(player *model.Player, avatarId uint32) uint32 {
	worldAvatar := w.GetPlayerWorldAvatar(player, avatarId)
	if worldAvatar == nil {
		return 0
	}
	return worldAvatar.avatarEntityId
}

// GetPlayerWorldAvatarWeaponEntityId 获取某玩家在世界队伍中的某角色的武器的实体id
func (w *World) GetPlayerWorldAvatarWeaponEntityId(player *model.Player, avatarId uint32) uint32 {
	worldAvatar := w.GetPlayerWorldAvatar(player, avatarId)
	if worldAvatar == nil {
		return 0
	}
	return worldAvatar.weaponEntityId
}

// GetPlayerAvatarIndex 获取某玩家当前角色索引
func (w *World) GetPlayerAvatarIndex(player *model.Player) int {
	return w.multiplayerTeam.localAvatarIndexMap[player.PlayerID]
}

// SetPlayerAvatarIndex 设置某玩家当前角色索引
func (w *World) SetPlayerAvatarIndex(player *model.Player, index int) {
	if index > len(w.GetPlayerLocalTeam(player))-1 {
		return
	}
	w.multiplayerTeam.localAvatarIndexMap[player.PlayerID] = index
}

// GetPlayerActiveAvatarId 获取玩家当前活跃角色id
func (w *World) GetPlayerActiveAvatarId(player *model.Player) uint32 {
	avatarIndex := w.GetPlayerAvatarIndex(player)
	localTeam := w.GetPlayerLocalTeam(player)
	worldTeamAvatar := localTeam[avatarIndex]
	return worldTeamAvatar.avatarId
}

// GetPlayerAvatarIndexByAvatarId 获取玩家某角色的索引
func (w *World) GetPlayerAvatarIndexByAvatarId(player *model.Player, avatarId uint32) int {
	localTeam := w.GetPlayerLocalTeam(player)
	for index, worldAvatar := range localTeam {
		if worldAvatar.avatarId == avatarId {
			return index
		}
	}
	return -1
}

type MultiplayerTeam struct {
	// key:uid value:玩家的本地队伍
	localTeamMap map[uint32][]*WorldAvatar
	// key:uid value:玩家当前角色索引
	localAvatarIndexMap map[uint32]int
	localTeamEntityMap  map[uint32]uint32
	// 最终的世界队伍
	worldTeam []*WorldAvatar
}

func CreateMultiplayerTeam() (r *MultiplayerTeam) {
	r = new(MultiplayerTeam)
	r.localTeamMap = make(map[uint32][]*WorldAvatar)
	r.localAvatarIndexMap = make(map[uint32]int)
	r.localTeamEntityMap = make(map[uint32]uint32)
	r.worldTeam = make([]*WorldAvatar, 0)
	return r
}

func (w *World) GetPlayerLocalTeam(player *model.Player) []*WorldAvatar {
	return w.multiplayerTeam.localTeamMap[player.PlayerID]
}

func (w *World) SetPlayerLocalTeam(player *model.Player, avatarIdList []uint32) {
	oldLocalTeam := w.multiplayerTeam.localTeamMap[player.PlayerID]
	sameAvatarIdList := make([]uint32, 0)
	diffAvatarIdList := make([]uint32, 0)
	for _, avatarId := range avatarIdList {
		exist := false
		for _, worldAvatar := range oldLocalTeam {
			if worldAvatar.avatarId == avatarId {
				exist = true
			}
		}
		if exist {
			sameAvatarIdList = append(sameAvatarIdList, avatarId)
		} else {
			diffAvatarIdList = append(diffAvatarIdList, avatarId)
		}
	}
	newLocalTeam := make([]*WorldAvatar, len(avatarIdList))
	for _, avatarId := range sameAvatarIdList {
		for _, worldAvatar := range oldLocalTeam {
			if worldAvatar.avatarId == avatarId {
				index := 0
				for i, v := range avatarIdList {
					if avatarId == v {
						index = i
					}
				}
				newLocalTeam[index] = worldAvatar
			}
		}
	}
	for _, avatarId := range diffAvatarIdList {
		index := 0
		for i, v := range avatarIdList {
			if avatarId == v {
				index = i
			}
		}
		newLocalTeam[index] = &WorldAvatar{
			uid:            player.PlayerID,
			avatarId:       avatarId,
			avatarEntityId: 0,
			weaponEntityId: 0,
			abilityList:    make([]*proto.AbilityAppliedAbility, 0),
			modifierList:   make([]*proto.AbilityAppliedModifier, 0),
		}
	}
	w.multiplayerTeam.localTeamMap[player.PlayerID] = newLocalTeam
}

func (w *World) copyLocalTeamToWorld(start int, end int, peerId uint32) {
	player := w.GetPlayerByPeerId(peerId)
	localTeam := w.GetPlayerLocalTeam(player)
	localTeamIndex := 0
	for index := start; index <= end; index++ {
		if localTeamIndex >= len(localTeam) {
			w.multiplayerTeam.worldTeam[index] = &WorldAvatar{
				uid:            0,
				avatarId:       0,
				avatarEntityId: 0,
				weaponEntityId: 0,
				abilityList:    nil,
				modifierList:   nil,
			}
			continue
		}
		w.multiplayerTeam.worldTeam[index] = localTeam[localTeamIndex]
		localTeamIndex++
	}
}

// TODO 为了实现大世界无限人数写的
// 现在看来把世界里所有人放进队伍里发给客户端超过8个客户端会崩溃
// 看来还是不能简单的走通用逻辑 需要对大世界场景队伍做特殊处理 欺骗客户端其他玩家仅仅以场景角色实体的形式出现

func (w *World) AddMultiplayerTeam(player *model.Player) {
	if !WORLD_MANAGER.IsBigWorld(w) {
		return
	}
	localTeam := w.GetPlayerLocalTeam(player)
	w.multiplayerTeam.worldTeam = append(w.multiplayerTeam.worldTeam, localTeam...)
}

func (w *World) RemoveMultiplayerTeam(player *model.Player) {
	worldTeam := make([]*WorldAvatar, 0)
	for _, worldAvatar := range w.multiplayerTeam.worldTeam {
		if worldAvatar.uid == player.PlayerID {
			continue
		}
		worldTeam = append(worldTeam, worldAvatar)
	}
	w.multiplayerTeam.worldTeam = worldTeam
}

// UpdateMultiplayerTeam 整合所有玩家的本地队伍计算出世界队伍
func (w *World) UpdateMultiplayerTeam() {
	playerNum := w.GetWorldPlayerNum()
	if playerNum > 4 {
		return
	}
	w.multiplayerTeam.worldTeam = make([]*WorldAvatar, 4)
	switch playerNum {
	case 1:
		// 1P*4
		w.copyLocalTeamToWorld(0, 3, 1)
	case 2:
		// 1P*2 + 2P*2
		w.copyLocalTeamToWorld(0, 1, 1)
		w.copyLocalTeamToWorld(2, 3, 2)
	case 3:
		// 1P*2 + 2P*1 + 3P*1
		w.copyLocalTeamToWorld(0, 1, 1)
		w.copyLocalTeamToWorld(2, 2, 2)
		w.copyLocalTeamToWorld(3, 3, 3)
	case 4:
		// 1P*1 + 2P*1 + 3P*1 + 4P*1
		w.copyLocalTeamToWorld(0, 0, 1)
		w.copyLocalTeamToWorld(1, 1, 2)
		w.copyLocalTeamToWorld(2, 2, 3)
		w.copyLocalTeamToWorld(3, 3, 4)
	}
}

// 世界聊天

func (w *World) AddChat(chatInfo *proto.ChatInfo) {
	w.chatMsgList = append(w.chatMsgList, chatInfo)
}

func (w *World) GetChatList() []*proto.ChatInfo {
	return w.chatMsgList
}

// ChangeToMultiplayer 转换为多人世界
func (w *World) ChangeToMultiplayer() {
	WORLD_MANAGER.multiplayerWorldNum++
	w.multiplayer = true
}

// IsPlayerFirstEnter 获取玩家是否首次加入本世界
func (w *World) IsPlayerFirstEnter(player *model.Player) bool {
	_, exist := w.playerFirstEnterMap[player.PlayerID]
	if !exist {
		return true
	} else {
		return false
	}
}

func (w *World) PlayerEnter(uid uint32) {
	w.playerFirstEnterMap[uid] = time.Now().UnixMilli()
}

func (w *World) AddWaitPlayer(uid uint32) {
	w.waitEnterPlayerMap[uid] = time.Now().UnixMilli()
}

func (w *World) GetAllWaitPlayer() []uint32 {
	uidList := make([]uint32, 0)
	for uid := range w.waitEnterPlayerMap {
		uidList = append(uidList, uid)
	}
	return uidList
}

func (w *World) RemoveWaitPlayer(uid uint32) {
	delete(w.waitEnterPlayerMap, uid)
}

func (w *World) CreateScene(sceneId uint32) *Scene {
	scene := &Scene{
		id:                sceneId,
		world:             w,
		playerMap:         make(map[uint32]*model.Player),
		entityMap:         make(map[uint32]*Entity),
		objectIdEntityMap: make(map[int64]*Entity),
		gameTime:          18 * 60,
		createTime:        time.Now().UnixMilli(),
		meeoIndex:         0,
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
