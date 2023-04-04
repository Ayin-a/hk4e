package game

import (
	"time"

	"hk4e/gdconf"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

// 游戏服务器定时帧管理器

const (
	ServerTickTime = 20  // 服务器全局tick最小间隔毫秒
	UserTickTime   = 100 // 玩家自身tick最小间隔毫秒
)

type UserTimer struct {
	timer  *time.Timer
	action int
	data   []any
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
	r.globalTick = time.NewTicker(time.Millisecond * ServerTickTime)
	r.globalTickCount = 0
	r.userTickMap = make(map[uint32]*UserTick)
	logger.Info("game server tick start at: %v", time.Now().UnixMilli())
	return r
}

func (t *TickManager) GetGlobalTick() *time.Ticker {
	return t.globalTick
}

// 每个玩家自己的tick

// CreateUserGlobalTick 创建玩家tick对象
func (t *TickManager) CreateUserGlobalTick(userId uint32) {
	t.userTickMap[userId] = &UserTick{
		globalTick:      time.NewTicker(time.Millisecond * UserTickTime),
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
func (t *TickManager) CreateUserTimer(userId uint32, action int, delay uint32, data ...any) {
	userTick, exist := t.userTickMap[userId]
	if !exist {
		logger.Error("user not exist, uid: %v", userId)
		return
	}
	userTick.timerIdCounter++
	userTick.timerMap[userTick.timerIdCounter] = &UserTimer{
		timer:  time.NewTimer(time.Second * time.Duration(delay)),
		action: action,
		data:   data,
	}
	logger.Debug("create user timer, uid: %v, action: %v, time: %v",
		userId, action, time.Now().Add(time.Second*time.Duration(delay)).Format("2006-01-02 15:04:05"))
}

func (t *TickManager) onUserTickSecond(userId uint32, now int64) {
}

func (t *TickManager) onUserTickMinute(userId uint32, now int64) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	if uint32(now/1000)-player.LastKeepaliveTime > 60 {
		logger.Error("remove keepalive timeout user, uid: %v", userId)
		GAME.OnUserOffline(userId, &ChangeGsInfo{
			IsChangeGs: false,
		})
	}
}

// 玩家定时任务常量

const (
	UserTimerActionTest = iota
	UserTimerActionLuaCreateMonster
)

func (t *TickManager) userTimerHandle(userId uint32, action int, data []any) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		return
	}
	switch action {
	case UserTimerActionTest:
		logger.Debug("UserTimerActionTest, data: %v, uid: %v", data[0], userId)
	case UserTimerActionLuaCreateMonster:
		logger.Debug("UserTimerActionLuaCreateMonster, groupId: %v, monsterConfigId: %v, uid: %v", data[0], data[1], userId)
		groupId := data[0].(uint32)
		monsterConfigId := data[1].(uint32)
		GAME.AddSceneGroupMonster(player, groupId, monsterConfigId)
	}
}

// 服务器全局tick

func (t *TickManager) OnGameServerTick() {
	t.globalTickCount++
	now := time.Now().UnixMilli()
	if t.globalTickCount%(50/ServerTickTime) == 0 {
		t.onTick50MilliSecond(now)
	}
	if t.globalTickCount%(100/ServerTickTime) == 0 {
		t.onTick100MilliSecond(now)
	}
	if t.globalTickCount%(200/ServerTickTime) == 0 {
		t.onTick200MilliSecond(now)
	}
	if t.globalTickCount%(1000/ServerTickTime) == 0 {
		t.onTickSecond(now)
	}
	if t.globalTickCount%(5000/ServerTickTime) == 0 {
		t.onTick5Second(now)
	}
	if t.globalTickCount%(10000/ServerTickTime) == 0 {
		t.onTick10Second(now)
	}
	if t.globalTickCount%(60000/ServerTickTime) == 0 {
		t.onTickMinute(now)
	}
	if t.globalTickCount%(60000*60/ServerTickTime) == 0 {
		t.onTickHour(now)
	}
	for userId, userTick := range t.userTickMap {
		if len(userTick.globalTick.C) == 0 {
			// 跳过还没到时间的定时器
			continue
		}
		<-userTick.globalTick.C
		userTick.globalTickCount++
		if userTick.globalTickCount%(1000/UserTickTime) == 0 {
			t.onUserTickSecond(userId, now)
		}
		if userTick.globalTickCount%(60000/UserTickTime) == 0 {
			t.onUserTickMinute(userId, now)
		}
		for timerId, timer := range userTick.timerMap {
			if len(timer.timer.C) == 0 {
				// 跳过还没到时间的定时器
				continue
			}
			<-timer.timer.C
			timer.timer.Stop()
			delete(userTick.timerMap, timerId)
			t.userTimerHandle(userId, timer.action, timer.data)
		}
	}
}

func (t *TickManager) onTickHour(now int64) {
	logger.Info("on tick hour, time: %v", now)
}

func (t *TickManager) onTickMinute(now int64) {
	// GAME.ServerAnnounceNotify(100, "test123")
	gdconf.LuaStateLruRemove()
	for _, world := range WORLD_MANAGER.GetAllWorld() {
		for _, player := range world.GetAllPlayer() {
			// 随机物品
			allItemDataConfig := GAME.GetAllItemDataConfig()
			count := random.GetRandomInt32(0, 4)
			i := int32(0)
			for itemId := range allItemDataConfig {
				num := random.GetRandomInt32(1, 9)
				GAME.AddUserItem(player.PlayerID, []*ChangeItem{{ItemId: uint32(itemId), ChangeCount: uint32(num)}}, true, 0)
				i++
				if i > count {
					break
				}
			}
			GAME.AddUserItem(player.PlayerID, []*ChangeItem{{ItemId: 102, ChangeCount: 30}}, true, 0)
			GAME.AddUserItem(player.PlayerID, []*ChangeItem{{ItemId: 201, ChangeCount: 10}}, true, 0)
			GAME.AddUserItem(player.PlayerID, []*ChangeItem{{ItemId: 202, ChangeCount: 100}}, true, 0)
			GAME.AddUserItem(player.PlayerID, []*ChangeItem{{ItemId: 203, ChangeCount: 10}}, true, 0)
			// 蓝球粉球
			GAME.AddUserItem(player.PlayerID, []*ChangeItem{{ItemId: 223, ChangeCount: 1}}, true, 0)
			GAME.AddUserItem(player.PlayerID, []*ChangeItem{{ItemId: 224, ChangeCount: 1}}, true, 0)
		}
	}
}

func (t *TickManager) onTick10Second(now int64) {
	for _, world := range WORLD_MANAGER.GetAllWorld() {
		GAME.SceneTimeNotify(world)
		GAME.PlayerTimeNotify(world)
	}
}

func (t *TickManager) onTick5Second(now int64) {
	for _, world := range WORLD_MANAGER.GetAllWorld() {
		if WORLD_MANAGER.IsAiWorld(world) {
			for applyUid := range world.owner.CoopApplyMap {
				GAME.UserDealEnterWorld(world.owner, applyUid, true)
			}
		}
		// 多人世界其他玩家的坐标位置广播
		GAME.WorldPlayerLocationNotify(world)
		GAME.ScenePlayerLocationNotify(world)
	}
}

func (t *TickManager) onTickSecond(now int64) {
	for _, world := range WORLD_MANAGER.GetAllWorld() {
		// 世界里所有玩家的网络延迟广播
		GAME.WorldPlayerRTTNotify(world)
	}
	// // GCG游戏Tick
	// for _, game := range GCG_MANAGER.gameMap {
	// 	game.onTick()
	// }
}

func (t *TickManager) onTick200MilliSecond(now int64) {
	for _, world := range WORLD_MANAGER.GetAllWorld() {
		for _, player := range world.GetAllPlayer() {
			// 耐力消耗
			GAME.SustainStaminaHandler(player)
			GAME.VehicleRestoreStaminaHandler(player)
			GAME.DrownBackHandler(player)
		}
	}
}

func (t *TickManager) onTick100MilliSecond(now int64) {
}

func (t *TickManager) onTick50MilliSecond(now int64) {
	// 音乐播放器
	for i := 0; i < len(AUDIO_CHAN); i++ {
		world := WORLD_MANAGER.GetAiWorld()
		GAME.SendToWorldA(world, cmd.SceneAudioNotify, 0, &proto.SceneAudioNotify{
			Type:      5,
			SourceUid: world.owner.PlayerID,
			Param1:    []uint32{1, <-AUDIO_CHAN},
			Param2:    nil,
			Param3:    nil,
		})
	}
}
