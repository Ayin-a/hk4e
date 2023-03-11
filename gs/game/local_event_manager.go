package game

import (
	"sort"
	"sync"
	"time"

	"hk4e/common/mq"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"

	"github.com/vmihailenco/msgpack/v5"
)

// 本地事件队列管理器

const (
	LoadLoginUserFromDbFinish       = iota // 玩家登录从数据库加载完成回调
	CheckUserExistOnRegFromDbFinish        // 玩家注册从数据库查询是否已存在完成回调
	RunUserCopyAndSave                     // 执行一次在线玩家内存数据复制到数据库写入协程
	ExitRunUserCopyAndSave                 // 停服时执行全部玩家保存操作
	UserOfflineSaveToDbFinish              // 玩家离线保存完成
	ReloadGameDataConfig                   // 执行热更表
	ReloadGameDataConfigFinish             // 热更表完成
)

const (
	UserCopyGoroutineLimit = 4
)

type LocalEvent struct {
	EventId int
	Msg     any
}

type LocalEventManager struct {
	localEventChan chan *LocalEvent
}

func NewLocalEventManager() (r *LocalEventManager) {
	r = new(LocalEventManager)
	r.localEventChan = make(chan *LocalEvent, 1000)
	return r
}

func (l *LocalEventManager) GetLocalEventChan() chan *LocalEvent {
	return l.localEventChan
}

type PlayerLastSaveTimeSortList []*model.Player

func (p PlayerLastSaveTimeSortList) Len() int {
	return len(p)
}

func (p PlayerLastSaveTimeSortList) Less(i, j int) bool {
	return p[i].LastSaveTime < p[j].LastSaveTime
}

func (p PlayerLastSaveTimeSortList) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (l *LocalEventManager) LocalEventHandle(localEvent *LocalEvent) {
	switch localEvent.EventId {
	case LoadLoginUserFromDbFinish:
		playerLoginInfo := localEvent.Msg.(*PlayerLoginInfo)
		if playerLoginInfo.Player != nil {
			USER_MANAGER.AddUser(playerLoginInfo.Player)
		}
		GAME_MANAGER.OnLoginOk(playerLoginInfo.UserId, playerLoginInfo.ClientSeq, playerLoginInfo.GateAppId, false, playerLoginInfo.Player)
	case CheckUserExistOnRegFromDbFinish:
		playerRegInfo := localEvent.Msg.(*PlayerRegInfo)
		GAME_MANAGER.OnRegOk(playerRegInfo.Exist, playerRegInfo.Req, playerRegInfo.UserId, playerRegInfo.ClientSeq, playerRegInfo.GateAppId)
	case ExitRunUserCopyAndSave:
		fallthrough
	case RunUserCopyAndSave:
		startTime := time.Now().UnixNano()
		playerList := make(PlayerLastSaveTimeSortList, 0)
		for _, player := range USER_MANAGER.GetAllOnlineUserList() {
			if player.PlayerID < PlayerBaseUid {
				continue
			}
			playerList = append(playerList, player)
		}
		sort.Stable(playerList)
		// 拷贝一份数据避免并发访问
		insertPlayerList := make([][]byte, 0)
		updatePlayerList := make([][]byte, 0)
		saveCount := 0
		times := len(playerList) / UserCopyGoroutineLimit
		if times == 0 && len(playerList) > 0 {
			times = 1
		}
		for index := 0; index < times; index++ {
			totalCostTime := time.Now().UnixNano() - startTime
			if totalCostTime > time.Millisecond.Nanoseconds()*10 {
				// 总耗时超过10ms就中止本轮保存
				logger.Info("user copy loop overtime exit, total cost time: %v ns", totalCostTime)
				break
			}
			// 分批次并发序列化玩家数据
			oncePlayerListEndIndex := 0
			if index < times-1 {
				oncePlayerListEndIndex = (index + 1) * UserCopyGoroutineLimit
			} else {
				oncePlayerListEndIndex = len(playerList)
			}
			oncePlayerList := playerList[index*UserCopyGoroutineLimit : oncePlayerListEndIndex]
			var playerDataMapLock sync.Mutex
			playerDataMap := make(map[uint32][]byte)
			var wg sync.WaitGroup
			for _, player := range oncePlayerList {
				wg.Add(1)
				go func(player *model.Player) {
					defer func() {
						wg.Done()
					}()
					playerData, err := msgpack.Marshal(player)
					if err != nil {
						logger.Error("marshal player data error: %v", err)
						return
					}
					playerDataMapLock.Lock()
					playerDataMap[player.PlayerID] = playerData
					playerDataMapLock.Unlock()
				}(player)
			}
			wg.Wait()
			for _, player := range oncePlayerList {
				playerData, exist := playerDataMap[player.PlayerID]
				if !exist {
					continue
				}
				switch player.DbState {
				case model.DbNone:
					break
				case model.DbInsert:
					insertPlayerList = append(insertPlayerList, playerData)
					player.DbState = model.DbNormal
					player.LastSaveTime = uint32(time.Now().UnixMilli())
					saveCount++
				case model.DbDelete:
					USER_MANAGER.DeleteUser(player.PlayerID)
				case model.DbNormal:
					updatePlayerList = append(updatePlayerList, playerData)
					player.LastSaveTime = uint32(time.Now().UnixMilli())
					saveCount++
				}
			}
		}
		saveUserData := &SaveUserData{
			insertPlayerList: insertPlayerList,
			updatePlayerList: updatePlayerList,
			exitSave:         false,
		}
		if localEvent.EventId == ExitRunUserCopyAndSave {
			saveUserData.exitSave = true
		}
		USER_MANAGER.GetSaveUserChan() <- saveUserData
		endTime := time.Now().UnixNano()
		costTime := endTime - startTime
		logger.Info("run save user copy cost time: %v ns, save user count: %v", costTime, saveCount)
		if localEvent.EventId == ExitRunUserCopyAndSave {
			// 在此阻塞掉主协程 不再进行任何消息和任务的处理
			select {}
		}
	case UserOfflineSaveToDbFinish:
		playerOfflineInfo := localEvent.Msg.(*PlayerOfflineInfo)
		USER_MANAGER.DeleteUser(playerOfflineInfo.Player.PlayerID)
		MESSAGE_QUEUE.SendToAll(&mq.NetMsg{
			MsgType: mq.MsgTypeServer,
			EventId: mq.ServerUserOnlineStateChangeNotify,
			ServerMsg: &mq.ServerMsg{
				UserId:   playerOfflineInfo.Player.PlayerID,
				IsOnline: false,
			},
		})
		if playerOfflineInfo.ChangeGsInfo.IsChangeGs {
			gsAppId := USER_MANAGER.GetRemoteUserGsAppId(playerOfflineInfo.ChangeGsInfo.JoinHostUserId)
			MESSAGE_QUEUE.SendToGate(playerOfflineInfo.Player.GateAppId, &mq.NetMsg{
				MsgType: mq.MsgTypeServer,
				EventId: mq.ServerUserGsChangeNotify,
				ServerMsg: &mq.ServerMsg{
					UserId:          playerOfflineInfo.Player.PlayerID,
					GameServerAppId: gsAppId,
					JoinHostUserId:  playerOfflineInfo.ChangeGsInfo.JoinHostUserId,
				},
			})
			logger.Info("user change gs notify to gate, uid: %v, gate appid: %v, gs appid: %v, host uid: %v",
				playerOfflineInfo.Player.PlayerID, playerOfflineInfo.Player.GateAppId, gsAppId, playerOfflineInfo.ChangeGsInfo.JoinHostUserId)
		}
	case ReloadGameDataConfig:
		go func() {
			defer func() {
				if err := recover(); err != nil {
					logger.Error("reload game data config error: %v", err)
				}
			}()
			gdconf.ReloadGameDataConfig()
			LOCAL_EVENT_MANAGER.localEventChan <- &LocalEvent{
				EventId: ReloadGameDataConfigFinish,
			}
		}()
	case ReloadGameDataConfigFinish:
		gdconf.ReplaceGameDataConfig()
		startTime := time.Now().UnixNano()
		WORLD_MANAGER.LoadSceneBlockAoiMap()
		endTime := time.Now().UnixNano()
		costTime := endTime - startTime
		logger.Info("run [LoadSceneBlockAoiMap], cost time: %v ns", costTime)
	}
}
