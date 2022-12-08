package game

import (
	"encoding/json"
	"sync"
	"time"

	"hk4e/gs/dao"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

type UserManager struct {
	dao            *dao.Dao
	playerMap      map[uint32]*model.Player
	playerMapLock  sync.RWMutex
	localEventChan chan *LocalEvent
}

func NewUserManager(dao *dao.Dao, localEventChan chan *LocalEvent) (r *UserManager) {
	r = new(UserManager)
	r.dao = dao
	r.playerMap = make(map[uint32]*model.Player)
	r.localEventChan = localEventChan
	return r
}

func (u *UserManager) GetUserOnlineState(userId uint32) bool {
	u.playerMapLock.RLock()
	player, exist := u.playerMap[userId]
	u.playerMapLock.RUnlock()
	if !exist {
		return false
	} else {
		return player.Online
	}
}

func (u *UserManager) GetOnlineUser(userId uint32) *model.Player {
	u.playerMapLock.RLock()
	player, exist := u.playerMap[userId]
	u.playerMapLock.RUnlock()
	if !exist {
		return nil
	} else {
		if player.Online {
			return player
		} else {
			return nil
		}
	}
}

func (u *UserManager) GetAllOnlineUserList() map[uint32]*model.Player {
	onlinePlayerMap := make(map[uint32]*model.Player)
	u.playerMapLock.RLock()
	for userId, player := range u.playerMap {
		if player.Online == false {
			continue
		}
		onlinePlayerMap[userId] = player
	}
	u.playerMapLock.RUnlock()
	return onlinePlayerMap
}

type PlayerRegInfo struct {
	Exist     bool
	Req       *proto.SetPlayerBornDataReq
	UserId    uint32
	ClientSeq uint32
}

func (u *UserManager) CheckUserExistOnReg(userId uint32, req *proto.SetPlayerBornDataReq, clientSeq uint32) (exist bool, asyncWait bool) {
	u.playerMapLock.RLock()
	_, exist = u.playerMap[userId]
	u.playerMapLock.RUnlock()
	if exist {
		return true, false
	} else {
		go func() {
			player := u.loadUserFromDb(userId)
			exist = false
			if player != nil {
				exist = true
			}
			u.localEventChan <- &LocalEvent{
				EventId: CheckUserExistOnRegFromDbFinish,
				Msg: &PlayerRegInfo{
					Exist:     exist,
					Req:       req,
					UserId:    userId,
					ClientSeq: clientSeq,
				},
			}
		}()
		return false, true
	}
}

func (u *UserManager) LoadTempOfflineUserSync(userId uint32) *model.Player {
	u.playerMapLock.RLock()
	player, exist := u.playerMap[userId]
	u.playerMapLock.RUnlock()
	if exist {
		return player
	} else {
		player = u.loadUserFromDb(userId)
		if player == nil {
			return nil
		}
		player.DbState = model.DbOffline
		u.playerMapLock.Lock()
		u.playerMap[player.PlayerID] = player
		u.playerMapLock.Unlock()
		return player
	}
}

func (u *UserManager) loadUserFromDb(userId uint32) *model.Player {
	player, err := u.dao.QueryPlayerByID(userId)
	if err != nil {
		logger.LOG.Error("query player error: %v", err)
		return nil
	}
	return player
}

func (u *UserManager) AddUser(player *model.Player) {
	if player == nil {
		return
	}
	u.ChangeUserDbState(player, model.DbInsert)
	u.playerMapLock.Lock()
	u.playerMap[player.PlayerID] = player
	u.playerMapLock.Unlock()
}

func (u *UserManager) DeleteUser(player *model.Player) {
	if player == nil {
		return
	}
	u.ChangeUserDbState(player, model.DbDelete)
	u.playerMapLock.Lock()
	u.playerMap[player.PlayerID] = player
	u.playerMapLock.Unlock()
}

func (u *UserManager) UpdateUser(player *model.Player) {
	if player == nil {
		return
	}
	u.ChangeUserDbState(player, model.DbUpdate)
	u.playerMapLock.Lock()
	u.playerMap[player.PlayerID] = player
	u.playerMapLock.Unlock()
}

type PlayerLoginInfo struct {
	UserId    uint32
	Player    *model.Player
	ClientSeq uint32
}

func (u *UserManager) OnlineUser(userId uint32, clientSeq uint32) (*model.Player, bool) {
	u.playerMapLock.RLock()
	player, exist := u.playerMap[userId]
	u.playerMapLock.RUnlock()
	if exist {
		u.ChangeUserDbState(player, model.DbNormal)
		return player, false
	} else {
		go func() {
			player = u.loadUserFromDb(userId)
			if player != nil {
				player.DbState = model.DbNormal
				u.playerMapLock.Lock()
				u.playerMap[player.PlayerID] = player
				u.playerMapLock.Unlock()
			}
			u.localEventChan <- &LocalEvent{
				EventId: LoadLoginUserFromDbFinish,
				Msg: &PlayerLoginInfo{
					UserId:    userId,
					Player:    player,
					ClientSeq: clientSeq,
				},
			}
		}()
		return nil, true
	}
}

func (u *UserManager) OfflineUser(player *model.Player) {
	if player == nil {
		return
	}
	u.ChangeUserDbState(player, model.DbOffline)
	u.playerMapLock.Lock()
	u.playerMap[player.PlayerID] = player
	u.playerMapLock.Unlock()
}

func (u *UserManager) ChangeUserDbState(player *model.Player, state int) {
	if player == nil {
		return
	}
	switch player.DbState {
	case model.DbInsert:
		if state == model.DbDelete {
			player.DbState = model.DbDelete
		}
	case model.DbDelete:
	case model.DbUpdate:
		if state == model.DbDelete {
			player.DbState = model.DbDelete
		} else if state == model.DbOffline {
			player.DbState = model.DbOffline
		}
	case model.DbNormal:
		if state == model.DbDelete {
			player.DbState = model.DbDelete
		} else if state == model.DbUpdate {
			player.DbState = model.DbUpdate
		} else if state == model.DbOffline {
			player.DbState = model.DbOffline
		}
	case model.DbOffline:
		if state == model.DbDelete {
			player.DbState = model.DbDelete
		} else if state == model.DbUpdate {
			player.DbState = model.DbUpdate
		} else if state == model.DbNormal {
			player.DbState = model.DbNormal
		}
	}
}

func (u *UserManager) StartAutoSaveUser() {
	// 用户数据库定时同步协程
	go func() {
		ticker := time.NewTicker(time.Minute * 5)
		for {
			u.SaveUser()
			<-ticker.C
		}
	}()
}

func (u *UserManager) SaveUser() {
	logger.LOG.Info("auto save user start")
	playerMapTemp := make(map[uint32]*model.Player)
	u.playerMapLock.RLock()
	for k, v := range u.playerMap {
		playerMapTemp[k] = v
	}
	u.playerMapLock.RUnlock()
	logger.LOG.Info("copyLocalTeamToWorld user map finish")
	insertList := make([]*model.Player, 0)
	deleteList := make([]uint32, 0)
	updateList := make([]*model.Player, 0)
	for k, v := range playerMapTemp {
		switch v.DbState {
		case model.DbInsert:
			insertList = append(insertList, v)
			playerMapTemp[k].DbState = model.DbNormal
		case model.DbDelete:
			deleteList = append(deleteList, v.PlayerID)
			delete(playerMapTemp, k)
		case model.DbUpdate:
			updateList = append(updateList, v)
			playerMapTemp[k].DbState = model.DbNormal
		case model.DbNormal:
			continue
		case model.DbOffline:
			updateList = append(updateList, v)
			delete(playerMapTemp, k)
		}
	}
	insertListJson, err := json.Marshal(insertList)
	logger.LOG.Debug("insertList: %v", string(insertListJson))
	deleteListJson, err := json.Marshal(deleteList)
	logger.LOG.Debug("deleteList: %v", string(deleteListJson))
	updateListJson, err := json.Marshal(updateList)
	logger.LOG.Debug("updateList: %v", string(updateListJson))
	logger.LOG.Info("db state init finish")
	err = u.dao.InsertPlayerList(insertList)
	if err != nil {
		logger.LOG.Error("insert player list error: %v", err)
	}
	err = u.dao.DeletePlayerList(deleteList)
	if err != nil {
		logger.LOG.Error("delete player error: %v", err)
	}
	err = u.dao.UpdatePlayerList(updateList)
	if err != nil {
		logger.LOG.Error("update player error: %v", err)
	}
	logger.LOG.Info("db write finish")
	u.playerMapLock.Lock()
	u.playerMap = playerMapTemp
	u.playerMapLock.Unlock()
	logger.LOG.Info("auto save user finish")
}
