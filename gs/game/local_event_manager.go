package game

import (
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"time"
)

// 本地事件队列管理器

const (
	LoadLoginUserFromDbFinish = iota
	CheckUserExistOnRegFromDbFinish
	RunUserCopyAndSave
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
		USER_MANAGER.playerMap[playerLoginInfo.Player.PlayerID] = playerLoginInfo.Player
		GAME_MANAGER.OnLoginOk(playerLoginInfo.UserId, playerLoginInfo.Player, playerLoginInfo.ClientSeq)
	case CheckUserExistOnRegFromDbFinish:
		playerRegInfo := localEvent.Msg.(*PlayerRegInfo)
		GAME_MANAGER.OnRegOk(playerRegInfo.Exist, playerRegInfo.Req, playerRegInfo.UserId, playerRegInfo.ClientSeq)
	case RunUserCopyAndSave:
		startTime := time.Now().UnixNano()
		// 拷贝一份数据避免并发访问
		insertPlayerList := make([]model.Player, 0, len(USER_MANAGER.playerMap))
		updatePlayerList := make([]model.Player, 0, len(USER_MANAGER.playerMap))
		for uid, player := range USER_MANAGER.playerMap {
			if uid < 100000000 {
				continue
			}
			switch player.DbState {
			case model.DbNone:
				break
			case model.DbInsert:
				insertPlayerList = append(insertPlayerList, *player)
				USER_MANAGER.playerMap[uid].DbState = model.DbNormal
			case model.DbDelete:
				updatePlayerList = append(updatePlayerList, *player)
				delete(USER_MANAGER.playerMap, uid)
			case model.DbNormal:
				updatePlayerList = append(updatePlayerList, *player)
			}
		}
		insertPlayerPointerList := make([]*model.Player, 0, len(insertPlayerList))
		updatePlayerPointerList := make([]*model.Player, 0, len(updatePlayerList))
		for _, player := range insertPlayerList {
			insertPlayerPointerList = append(insertPlayerPointerList, &player)
		}
		for _, player := range updatePlayerList {
			updatePlayerPointerList = append(updatePlayerPointerList, &player)
		}
		USER_MANAGER.saveUserChan <- &SaveUserData{
			insertPlayerList: insertPlayerPointerList,
			updatePlayerList: updatePlayerPointerList,
		}
		endTime := time.Now().UnixNano()
		costTime := endTime - startTime
		logger.LOG.Info("run save user copy cost time: %v ns", costTime)
	}
}
