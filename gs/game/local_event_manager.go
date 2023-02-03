package game

import (
	"time"

	"hk4e/common/mq"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
)

// 本地事件队列管理器

const (
	LoadLoginUserFromDbFinish       = iota // 玩家登录从数据库加载完成回调
	CheckUserExistOnRegFromDbFinish        // 玩家注册从数据库查询是否已存在完成回调
	RunUserCopyAndSave                     // 执行一次在线玩家内存数据复制到数据库写入协程
	ExitRunUserCopyAndSave
	UserOfflineSaveToDbFinish
	ReloadGameDataConfig
	ReloadGameDataConfigFinish
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

func (l *LocalEventManager) LocalEventHandle(localEvent *LocalEvent) {
	switch localEvent.EventId {
	case LoadLoginUserFromDbFinish:
		playerLoginInfo := localEvent.Msg.(*PlayerLoginInfo)
		if playerLoginInfo.Player != nil {
			USER_MANAGER.playerMap[playerLoginInfo.Player.PlayerID] = playerLoginInfo.Player
		}
		GAME_MANAGER.OnLoginOk(playerLoginInfo.UserId, playerLoginInfo.Player, playerLoginInfo.ClientSeq, playerLoginInfo.GateAppId)
	case CheckUserExistOnRegFromDbFinish:
		playerRegInfo := localEvent.Msg.(*PlayerRegInfo)
		GAME_MANAGER.OnRegOk(playerRegInfo.Exist, playerRegInfo.Req, playerRegInfo.UserId, playerRegInfo.ClientSeq, playerRegInfo.GateAppId)
	case ExitRunUserCopyAndSave:
		fallthrough
	case RunUserCopyAndSave:
		saveUserIdList := localEvent.Msg.([]uint32)
		startTime := time.Now().UnixNano()
		// 拷贝一份数据避免并发访问
		insertPlayerList := make([]*model.Player, 0)
		updatePlayerList := make([]*model.Player, 0)
		for _, uid := range saveUserIdList {
			player := USER_MANAGER.GetOnlineUser(uid)
			if player == nil {
				logger.Error("try to save but user not exist or online, uid: %v", uid)
				continue
			}
			if uid < 100000000 {
				continue
			}
			switch player.DbState {
			case model.DbNone:
				break
			case model.DbInsert:
				playerCopy := new(model.Player)
				err := object.FastDeepCopy(playerCopy, player)
				if err != nil {
					logger.Error("deep copy player error: %v", err)
					continue
				}
				insertPlayerList = append(insertPlayerList, playerCopy)
				USER_MANAGER.playerMap[uid].DbState = model.DbNormal
			case model.DbDelete:
				playerCopy := new(model.Player)
				err := object.FastDeepCopy(playerCopy, player)
				if err != nil {
					logger.Error("deep copy player error: %v", err)
					continue
				}
				updatePlayerList = append(updatePlayerList, playerCopy)
				delete(USER_MANAGER.playerMap, uid)
			case model.DbNormal:
				playerCopy := new(model.Player)
				err := object.FastDeepCopy(playerCopy, player)
				if err != nil {
					logger.Error("deep copy player error: %v", err)
					continue
				}
				updatePlayerList = append(updatePlayerList, playerCopy)
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
		USER_MANAGER.saveUserChan <- saveUserData
		endTime := time.Now().UnixNano()
		costTime := endTime - startTime
		logger.Info("run save user copy cost time: %v ns", costTime)
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
	}
}
