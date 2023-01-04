package game

import (
	"time"

	"hk4e/common/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

// 游戏服务器定时帧管理器

type UserTimer struct {
	timer  *time.Timer
	action int
}

type UserTick struct {
	globalTick      *time.Ticker
	globalTickCount uint64
	timerIdCounter  uint64
	timerMap        map[uint64]*UserTimer
}

type TickManager struct {
	globalTick      *time.Ticker
	globalTickCount uint64
	userTickMap     map[uint32]*UserTick
}

func NewTickManager() (r *TickManager) {
	r = new(TickManager)
	r.globalTick = time.NewTicker(time.Millisecond * 100)
	r.globalTickCount = 0
	r.userTickMap = make(map[uint32]*UserTick)
	logger.Info("game server tick start at: %v", time.Now().UnixMilli())
	return r
}

// 每个玩家自己的tick

// CreateUserGlobalTick 创建玩家tick对象
func (t *TickManager) CreateUserGlobalTick(userId uint32) {
	t.userTickMap[userId] = &UserTick{
		globalTick:      time.NewTicker(time.Second * 1),
		globalTickCount: 0,
		timerIdCounter:  0,
		timerMap:        make(map[uint64]*UserTimer),
	}
}

// DestroyUserGlobalTick 销毁玩家tick对象
func (t *TickManager) DestroyUserGlobalTick(userId uint32) {
	delete(t.userTickMap, userId)
}

// CreateUserTimer 创建玩家定时任务
func (t *TickManager) CreateUserTimer(userId uint32, action int, delay uint32) {
	userTick, exist := t.userTickMap[userId]
	if !exist {
		logger.Error("user not exist, uid: %v", userId)
		return
	}
	userTick.timerIdCounter++
	userTick.timerMap[userTick.timerIdCounter] = &UserTimer{
		timer:  time.NewTimer(time.Second * time.Duration(delay)),
		action: action,
	}
	logger.Debug("create user timer, uid: %v, action: %v, time: %v",
		userId, action, time.Now().Add(time.Second*time.Duration(delay)).Format("2006-01-02 15:04:05"))
}

func (t *TickManager) onUserTickSecond(userId uint32, now int64) {
	// logger.Info("on user tick second, uid: %v, time: %v", userId, now)
}

func (t *TickManager) onUserTickMinute(userId uint32, now int64) {
	logger.Info("on user tick minute, uid: %v, time: %v", userId, now)
	// 每分钟保存玩家数据
	saveUserIdList := []uint32{userId}
	LOCAL_EVENT_MANAGER.localEventChan <- &LocalEvent{
		EventId: RunUserCopyAndSave,
		Msg:     saveUserIdList,
	}
}

// 玩家定时任务常量

const (
	UserTimerActionTest = iota
)

func (t *TickManager) userTimerHandle(userId uint32, action int) {
	switch action {
	case UserTimerActionTest:
		logger.Debug("UserTimerActionTest, uid: %v", userId)
	}
}

// 服务器全局tick

func (t *TickManager) OnGameServerTick() {
	t.globalTickCount++
	now := time.Now().UnixMilli()
	t.onTick100MilliSecond(now)
	if t.globalTickCount%2 == 0 {
		t.onTick200MilliSecond(now)
	}
	if t.globalTickCount%(10*1) == 0 {
		t.onTickSecond(now)
	}
	if t.globalTickCount%(10*5) == 0 {
		t.onTick5Second(now)
	}
	if t.globalTickCount%(10*10) == 0 {
		t.onTick10Second(now)
	}
	if t.globalTickCount%(10*60) == 0 {
		t.onTickMinute(now)
	}
	if t.globalTickCount%(10*60*10) == 0 {
		t.onTick10Minute(now)
	}
	if t.globalTickCount%(10*3600) == 0 {
		t.onTickHour(now)
	}
	if t.globalTickCount%(10*3600*24) == 0 {
		t.onTickDay(now)
	}
	if t.globalTickCount%(10*3600*24*7) == 0 {
		t.onTickWeek(now)
	}
	for userId, userTick := range t.userTickMap {
		if len(userTick.globalTick.C) == 0 {
			// 跳过还没到时间的定时器
			continue
		}
		userTick.globalTickCount++
		if userTick.globalTickCount%(10*1) == 0 {
			t.onUserTickSecond(userId, now)
		}
		if userTick.globalTickCount%(10*60) == 0 {
			t.onUserTickMinute(userId, now)
		}
		for timerId, timer := range userTick.timerMap {
			if len(timer.timer.C) == 0 {
				// 跳过还没到时间的定时器
				continue
			}
			timer.timer.Stop()
			delete(userTick.timerMap, timerId)
			t.userTimerHandle(userId, timer.action)
		}
	}
}

func (t *TickManager) onTickWeek(now int64) {
	logger.Info("on tick week, time: %v", now)
}

func (t *TickManager) onTickDay(now int64) {
	logger.Info("on tick day, time: %v", now)
}

func (t *TickManager) onTickHour(now int64) {
	logger.Info("on tick hour, time: %v", now)
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
	// GAME_MANAGER.ServerAnnounceNotify(100, "test123")
	for _, world := range WORLD_MANAGER.worldMap {
		for _, player := range world.playerMap {
			// 随机物品
			allItemDataConfig := GAME_MANAGER.GetAllItemDataConfig()
			count := random.GetRandomInt32(0, 4)
			i := int32(0)
			for itemId := range allItemDataConfig {
				itemDataConfig, ok := allItemDataConfig[itemId]
				if !ok {
					logger.Error("config is nil, itemId: %v", itemId)
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

				sceneTimeNotify := &proto.SceneTimeNotify{
					SceneId:   player.SceneId,
					SceneTime: uint64(scene.GetSceneTime()),
				}
				GAME_MANAGER.SendMsg(cmd.SceneTimeNotify, player.PlayerID, 0, sceneTimeNotify)

				playerTimeNotify := &proto.PlayerTimeNotify{
					IsPaused:   player.Pause,
					PlayerTime: uint64(player.TotalOnlineTime),
					ServerTime: uint64(time.Now().UnixMilli()),
				}
				GAME_MANAGER.SendMsg(cmd.PlayerTimeNotify, player.PlayerID, 0, playerTimeNotify)
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
			// 多人世界其他玩家的坐标位置广播
			worldPlayerLocationNotify := &proto.WorldPlayerLocationNotify{
				PlayerWorldLocList: make([]*proto.PlayerWorldLocationInfo, 0),
			}
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

			for _, scene := range world.sceneMap {
				scenePlayerLocationNotify := &proto.ScenePlayerLocationNotify{
					SceneId:        scene.id,
					PlayerLocList:  make([]*proto.PlayerLocationInfo, 0),
					VehicleLocList: make([]*proto.VehicleLocationInfo, 0),
				}
				for _, scenePlayer := range scene.playerMap {
					// 玩家位置
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
					// 载具位置
					for _, entityId := range scenePlayer.VehicleInfo.LastCreateEntityIdMap {
						entity := scene.GetEntity(entityId)
						// 确保实体类型是否为载具
						if entity != nil && entity.gadgetEntity != nil && entity.gadgetEntity.gadgetVehicleEntity != nil {
							vehicleLocationInfo := &proto.VehicleLocationInfo{
								Rot: &proto.Vector{
									X: float32(entity.rot.X),
									Y: float32(entity.rot.Y),
									Z: float32(entity.rot.Z),
								},
								EntityId: entity.id,
								CurHp:    entity.fightProp[uint32(constant.FightPropertyConst.FIGHT_PROP_CUR_HP)],
								OwnerUid: entity.gadgetEntity.gadgetVehicleEntity.owner.PlayerID,
								Pos: &proto.Vector{
									X: float32(entity.pos.X),
									Y: float32(entity.pos.Y),
									Z: float32(entity.pos.Z),
								},
								UidList:  make([]uint32, 0, len(entity.gadgetEntity.gadgetVehicleEntity.memberMap)),
								GadgetId: entity.gadgetEntity.gadgetVehicleEntity.vehicleId,
								MaxHp:    entity.fightProp[uint32(constant.FightPropertyConst.FIGHT_PROP_MAX_HP)],
							}
							for _, p := range entity.gadgetEntity.gadgetVehicleEntity.memberMap {
								vehicleLocationInfo.UidList = append(vehicleLocationInfo.UidList, p.PlayerID)
							}
							scenePlayerLocationNotify.VehicleLocList = append(scenePlayerLocationNotify.VehicleLocList, vehicleLocationInfo)
						}
					}
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
			worldPlayerRTTNotify := &proto.WorldPlayerRTTNotify{
				PlayerRttList: make([]*proto.PlayerRTTInfo, 0),
			}
			for _, worldPlayer := range world.playerMap {
				playerRTTInfo := &proto.PlayerRTTInfo{Uid: worldPlayer.PlayerID, Rtt: worldPlayer.ClientRTT}
				worldPlayerRTTNotify.PlayerRttList = append(worldPlayerRTTNotify.PlayerRttList, playerRTTInfo)
			}
			GAME_MANAGER.SendMsg(cmd.WorldPlayerRTTNotify, player.PlayerID, 0, worldPlayerRTTNotify)
			// 玩家安全位置更新
			switch player.StaminaInfo.State {
			case proto.MotionState_MOTION_STATE_DANGER_RUN, proto.MotionState_MOTION_STATE_RUN,
				proto.MotionState_MOTION_STATE_DANGER_STANDBY_MOVE, proto.MotionState_MOTION_STATE_DANGER_STANDBY, proto.MotionState_MOTION_STATE_LADDER_TO_STANDBY, proto.MotionState_MOTION_STATE_STANDBY_MOVE, proto.MotionState_MOTION_STATE_STANDBY,
				proto.MotionState_MOTION_STATE_DANGER_WALK, proto.MotionState_MOTION_STATE_WALK,
				proto.MotionState_MOTION_STATE_DASH:
				// 仅在陆地时更新玩家安全位置
				player.SafePos.X = player.Pos.X
				player.SafePos.Y = player.Pos.Y
				player.SafePos.Z = player.Pos.Z
			}
		}
		// 刷怪
		if !world.IsBigWorld() && world.owner.SceneLoadState == model.SceneEnterDone {
			scene := world.GetSceneById(3)
			monsterEntityCount := 0
			for _, entity := range scene.entityMap {
				if entity.entityType == uint32(proto.ProtEntityType_PROT_ENTITY_TYPE_MONSTER) {
					monsterEntityCount++
				}
			}
			if monsterEntityCount < 3 {
				monsterEntityId := t.createMonster(scene)
				GAME_MANAGER.AddSceneEntityNotify(world.owner, proto.VisionType_VISION_TYPE_BORN, []uint32{monsterEntityId}, true, false)
			}
		}
	}
}

func (t *TickManager) onTick200MilliSecond(now int64) {
	// 耐力消耗
	for _, world := range WORLD_MANAGER.worldMap {
		for _, player := range world.playerMap {
			GAME_MANAGER.SustainStaminaHandler(player)
			GAME_MANAGER.VehicleRestoreStaminaHandler(player)
			GAME_MANAGER.DrownBackHandler(player)
		}
	}
}

func (t *TickManager) onTick100MilliSecond(now int64) {
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
