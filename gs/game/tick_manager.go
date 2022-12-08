package game

import (
	"time"

	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

// 游戏服务器定时帧管理器

type TickManager struct {
	ticker    *time.Ticker
	tickCount uint64
}

func NewTickManager() (r *TickManager) {
	r = new(TickManager)
	r.ticker = time.NewTicker(time.Millisecond * 100)
	logger.LOG.Info("game server tick start at: %v", time.Now().UnixMilli())
	return r
}

func (t *TickManager) OnGameServerTick() {
	t.tickCount++
	now := time.Now().UnixMilli()
	t.onTick100MilliSecond(now)
	if t.tickCount%2 == 0 {
		t.onTick200MilliSecond(now)
	}
	if t.tickCount%(10*1) == 0 {
		t.onTickSecond(now)
	}
	if t.tickCount%(10*5) == 0 {
		t.onTick5Second(now)
	}
	if t.tickCount%(10*10) == 0 {
		t.onTick10Second(now)
	}
	if t.tickCount%(10*60) == 0 {
		t.onTickMinute(now)
	}
	if t.tickCount%(10*60*10) == 0 {
		t.onTick10Minute(now)
	}
	if t.tickCount%(10*3600) == 0 {
		t.onTickHour(now)
	}
	if t.tickCount%(10*3600*24) == 0 {
		t.onTickDay(now)
	}
	if t.tickCount%(10*3600*24*7) == 0 {
		t.onTickWeek(now)
	}
}

func (t *TickManager) onTickWeek(now int64) {
	logger.LOG.Info("on tick week, time: %v", now)
}

func (t *TickManager) onTickDay(now int64) {
	logger.LOG.Info("on tick day, time: %v", now)
}

func (t *TickManager) onTickHour(now int64) {
	logger.LOG.Info("on tick hour, time: %v", now)
}

func (t *TickManager) onTick10Minute(now int64) {
	for _, world := range WORLD_MANAGER.worldMap {
		for _, player := range world.playerMap {
			// 蓝球粉球
			GAME_MANAGER.AddUserItem(player.PlayerID, []*UserItem{{ItemId: 223, ChangeCount: 1}}, true, 0)
			GAME_MANAGER.AddUserItem(player.PlayerID, []*UserItem{{ItemId: 224, ChangeCount: 1}}, true, 0)
		}
	}
}

func (t *TickManager) onTickMinute(now int64) {
	//t.gameManager.ServerAnnounceNotify(100, "test123")
	for _, world := range WORLD_MANAGER.worldMap {
		for _, player := range world.playerMap {
			// 随机物品
			allItemDataConfig := GAME_MANAGER.GetAllItemDataConfig()
			count := random.GetRandomInt32(0, 4)
			i := int32(0)
			for itemId := range allItemDataConfig {
				itemDataConfig, ok := allItemDataConfig[itemId]
				if !ok {
					logger.LOG.Error("config is nil, itemId: %v", itemId)
					return
				}
				// TODO 3.0.0REL版本中 发送某些无效家具 可能会导致客户端背包家具界面卡死
				if itemDataConfig.ItemEnumType == constant.ItemTypeConst.ITEM_FURNITURE {
					continue
				}
				num := random.GetRandomInt32(1, 9)
				GAME_MANAGER.AddUserItem(player.PlayerID, []*UserItem{{ItemId: uint32(itemId), ChangeCount: uint32(num)}}, true, 0)
				i++
				if i > count {
					break
				}
			}
			GAME_MANAGER.AddUserItem(player.PlayerID, []*UserItem{{ItemId: 102, ChangeCount: 30}}, true, 0)
			GAME_MANAGER.AddUserItem(player.PlayerID, []*UserItem{{ItemId: 201, ChangeCount: 10}}, true, 0)
			GAME_MANAGER.AddUserItem(player.PlayerID, []*UserItem{{ItemId: 202, ChangeCount: 100}}, true, 0)
			GAME_MANAGER.AddUserItem(player.PlayerID, []*UserItem{{ItemId: 203, ChangeCount: 10}}, true, 0)
		}
	}
}

func (t *TickManager) onTick10Second(now int64) {
	for _, world := range WORLD_MANAGER.worldMap {
		for _, scene := range world.sceneMap {
			for _, player := range scene.playerMap {
				// PacketSceneTimeNotify
				sceneTimeNotify := new(proto.SceneTimeNotify)
				sceneTimeNotify.SceneId = player.SceneId
				sceneTimeNotify.SceneTime = uint64(scene.GetSceneTime())
				GAME_MANAGER.SendMsg(cmd.SceneTimeNotify, player.PlayerID, player.ClientSeq, sceneTimeNotify)
				// PacketPlayerTimeNotify
				playerTimeNotify := new(proto.PlayerTimeNotify)
				playerTimeNotify.IsPaused = player.Pause
				playerTimeNotify.PlayerTime = uint64(player.TotalOnlineTime)
				playerTimeNotify.ServerTime = uint64(time.Now().UnixMilli())
				GAME_MANAGER.SendMsg(cmd.PlayerTimeNotify, player.PlayerID, player.ClientSeq, playerTimeNotify)
			}
		}
		if !world.IsBigWorld() && (world.multiplayer || !world.owner.Pause) {
			// 刷怪
			scene := world.GetSceneById(3)
			monsterEntityCount := 0
			for _, entity := range scene.entityMap {
				if entity.entityType == uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_MONSTER) {
					monsterEntityCount++
				}
			}
			if monsterEntityCount < 30 {
				monsterEntityId := t.createMonster(scene)
				bigWorldOwner := USER_MANAGER.GetOnlineUser(1)
				GAME_MANAGER.AddSceneEntityNotify(bigWorldOwner, proto.VisionType_VISION_TYPE_BORN, []uint32{monsterEntityId}, true)
			}
		}
		for _, player := range world.playerMap {
			if world.multiplayer || !world.owner.Pause {
				// 改面板
				team := player.TeamConfig.GetActiveTeam()
				for _, avatarId := range team.AvatarIdList {
					if avatarId == 0 {
						break
					}
					avatar := player.AvatarMap[avatarId]
					avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_ATTACK)] = 1000000
					avatar.FightPropMap[uint32(constant.FightPropertyConst.FIGHT_PROP_CRITICAL)] = 1.0
					GAME_MANAGER.UpdateUserAvatarFightProp(player.PlayerID, avatarId)
				}
			}
		}
	}
}

func (t *TickManager) onTick5Second(now int64) {
	for _, world := range WORLD_MANAGER.worldMap {
		if world.IsBigWorld() {
			for applyUid := range world.owner.CoopApplyMap {
				GAME_MANAGER.UserDealEnterWorld(world.owner, applyUid, true)
			}
		}
		for _, player := range world.playerMap {
			if world.multiplayer {
				// 多人世界其他玩家的坐标位置广播
				// PacketWorldPlayerLocationNotify
				worldPlayerLocationNotify := new(proto.WorldPlayerLocationNotify)
				for _, worldPlayer := range world.playerMap {
					playerWorldLocationInfo := &proto.PlayerWorldLocationInfo{
						SceneId: worldPlayer.SceneId,
						PlayerLoc: &proto.PlayerLocationInfo{
							Uid: worldPlayer.PlayerID,
							Pos: &proto.Vector{
								X: float32(worldPlayer.Pos.X),
								Y: float32(worldPlayer.Pos.Y),
								Z: float32(worldPlayer.Pos.Z),
							},
							Rot: &proto.Vector{
								X: float32(worldPlayer.Rot.X),
								Y: float32(worldPlayer.Rot.Y),
								Z: float32(worldPlayer.Rot.Z),
							},
						},
					}
					worldPlayerLocationNotify.PlayerWorldLocList = append(worldPlayerLocationNotify.PlayerWorldLocList, playerWorldLocationInfo)
				}
				GAME_MANAGER.SendMsg(cmd.WorldPlayerLocationNotify, player.PlayerID, 0, worldPlayerLocationNotify)

				// PacketScenePlayerLocationNotify
				scene := world.GetSceneById(player.SceneId)
				scenePlayerLocationNotify := new(proto.ScenePlayerLocationNotify)
				scenePlayerLocationNotify.SceneId = player.SceneId
				for _, scenePlayer := range scene.playerMap {
					playerLocationInfo := &proto.PlayerLocationInfo{
						Uid: scenePlayer.PlayerID,
						Pos: &proto.Vector{
							X: float32(scenePlayer.Pos.X),
							Y: float32(scenePlayer.Pos.Y),
							Z: float32(scenePlayer.Pos.Z),
						},
						Rot: &proto.Vector{
							X: float32(scenePlayer.Rot.X),
							Y: float32(scenePlayer.Rot.Y),
							Z: float32(scenePlayer.Rot.Z),
						},
					}
					scenePlayerLocationNotify.PlayerLocList = append(scenePlayerLocationNotify.PlayerLocList, playerLocationInfo)
				}
				GAME_MANAGER.SendMsg(cmd.ScenePlayerLocationNotify, player.PlayerID, 0, scenePlayerLocationNotify)
			}
		}
	}
}

func (t *TickManager) onTickSecond(now int64) {
	for _, world := range WORLD_MANAGER.worldMap {
		for _, player := range world.playerMap {
			// 世界里所有玩家的网络延迟广播
			// PacketWorldPlayerRTTNotify
			worldPlayerRTTNotify := new(proto.WorldPlayerRTTNotify)
			worldPlayerRTTNotify.PlayerRttList = make([]*proto.PlayerRTTInfo, 0)
			for _, worldPlayer := range world.playerMap {
				playerRTTInfo := &proto.PlayerRTTInfo{Uid: worldPlayer.PlayerID, Rtt: worldPlayer.ClientRTT}
				worldPlayerRTTNotify.PlayerRttList = append(worldPlayerRTTNotify.PlayerRttList, playerRTTInfo)
			}
			GAME_MANAGER.SendMsg(cmd.WorldPlayerRTTNotify, player.PlayerID, 0, worldPlayerRTTNotify)
		}
	}
}

func (t *TickManager) onTick200MilliSecond(now int64) {
	// 耐力消耗
	for _, world := range WORLD_MANAGER.worldMap {
		for _, player := range world.playerMap {
			GAME_MANAGER.StaminaHandler(player)
		}
	}
}

func (t *TickManager) onTick100MilliSecond(now int64) {
	//// 伤害处理和转发
	//for _, world := range t.gameManager.worldManager.worldMap {
	//	for _, scene := range world.sceneMap {
	//		scene.AttackHandler(t.gameManager)
	//	}
	//}

	// 服务器控制的模拟AI移动

	//bigWorldOwner := t.gameManager.userManager.GetOnlineUser(1)
	//bigWorld := t.gameManager.worldManager.GetBigWorld()
	//bigWorldScene := bigWorld.GetSceneById(3)
	//
	//if len(bigWorldScene.playerMap) < 2 {
	//	return
	//}
	//if t.gameManager.worldManager.worldStatic.aiMoveCurrIndex >= len(t.gameManager.worldManager.worldStatic.aiMoveVectorList)-1 {
	//	return
	//}
	//t.gameManager.worldManager.worldStatic.aiMoveCurrIndex++
	//
	//entityMoveInfo := new(proto.EntityMoveInfo)
	//activeAvatarId := bigWorldOwner.TeamConfig.GetActiveAvatarId()
	//playerTeamEntity := bigWorldScene.GetPlayerTeamEntity(bigWorldOwner.PlayerID)
	//entityMoveInfo.EntityId = playerTeamEntity.avatarEntityMap[activeAvatarId]
	//entityMoveInfo.SceneTime = uint32(bigWorldScene.GetSceneTime())
	//entityMoveInfo.ReliableSeq = uint32(bigWorldScene.GetSceneTime() / 100 * 100)
	//entityMoveInfo.IsReliable = true
	//oldPos := model.Vector{
	//	X: bigWorldOwner.Pos.X,
	//	Y: bigWorldOwner.Pos.Y,
	//	Z: bigWorldOwner.Pos.Z,
	//}
	//newPos := t.gameManager.worldManager.worldStatic.aiMoveVectorList[t.gameManager.worldManager.worldStatic.aiMoveCurrIndex]
	//rotY := math.Atan2(newPos.X-oldPos.X, newPos.Z-oldPos.Z) / math.Pi * 180.0
	//if rotY < 0.0 {
	//	rotY += 360.0
	//}
	//entityMoveInfo.MotionInfo = &proto.MotionInfo{
	//	Pos: &proto.Vector{
	//		X: float32(newPos.X),
	//		Y: float32(newPos.Y),
	//		Z: float32(newPos.Z),
	//	},
	//	Rot: &proto.Vector{
	//		X: 0.0,
	//		Y: float32(rotY),
	//		Z: 0.0,
	//	},
	//	Speed: &proto.Vector{
	//		X: float32((newPos.X - oldPos.X) * 10.0),
	//		Y: float32((newPos.Y - oldPos.Y) * 10.0),
	//		Z: float32((newPos.Z - oldPos.Z) * 10.0),
	//	},
	//	State:  proto.MotionState_MOTION_STATE_RUN,
	//	RefPos: new(proto.Vector),
	//}
	//data, err := pb.Marshal(entityMoveInfo)
	//if err != nil {
	//	logger.LOG.Error("build combat invocations entity move info error: %v", err)
	//	return
	//}
	//combatInvocationsNotify := new(proto.CombatInvocationsNotify)
	//combatInvocationsNotify.InvokeList = []*proto.CombatInvokeEntry{{
	//	CombatData:   data,
	//	ForwardType:  proto.ForwardType_FORWARD_TYPE_TO_ALL_EXCEPT_CUR,
	//	ArgumentType: proto.CombatTypeArgument_COMBAT_TYPE_ARGUMENT_ENTITY_MOVE,
	//}}
	//t.gameManager.CombatInvocationsNotify(bigWorldOwner.PlayerID, bigWorldOwner, 0, combatInvocationsNotify)
}

func (t *TickManager) createMonster(scene *Scene) uint32 {
	pos := &model.Vector{
		X: 2747,
		Y: 194,
		Z: -1719,
	}
	fpm := map[uint32]float32{
		uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP):            float32(72.91699),
		uint32(constant.FightPropertyConst.FIGHT_PROP_PHYSICAL_SUB_HURT): float32(0.1),
		uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_DEFENSE):       float32(505.0),
		uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_ATTACK):        float32(45.679916),
		uint32(constant.FightPropertyConst.FIGHT_PROP_ICE_SUB_HURT):      float32(0.1),
		uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_ATTACK):       float32(45.679916),
		uint32(constant.FightPropertyConst.FIGHT_PROP_MAX_HP):            float32(72.91699),
		uint32(constant.FightPropertyConst.FIGHT_PROP_FIRE_SUB_HURT):     float32(0.1),
		uint32(constant.FightPropertyConst.FIGHT_PROP_ELEC_SUB_HURT):     float32(0.1),
		uint32(constant.FightPropertyConst.FIGHT_PROP_WIND_SUB_HURT):     float32(0.1),
		uint32(constant.FightPropertyConst.FIGHT_PROP_ROCK_SUB_HURT):     float32(0.1),
		uint32(constant.FightPropertyConst.FIGHT_PROP_GRASS_SUB_HURT):    float32(0.1),
		uint32(constant.FightPropertyConst.FIGHT_PROP_WATER_SUB_HURT):    float32(0.1),
		uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_HP):           float32(72.91699),
		uint32(constant.FightPropertyConst.FIGHT_PROP_BASE_DEFENSE):      float32(505.0),
	}
	entityId := scene.CreateEntityMonster(pos, 1, fpm)
	return entityId
}
