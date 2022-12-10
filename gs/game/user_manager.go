package game

import (
	"sync"
	"time"

	"hk4e/gs/dao"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

type UserManager struct {
	dao           *dao.Dao
	playerMap     map[uint32]*model.Player
	playerMapLock sync.RWMutex
}

func NewUserManager(dao *dao.Dao) (r *UserManager) {
	r = new(UserManager)
	r.dao = dao
	r.playerMap = make(map[uint32]*model.Player)
	return r
}

func (u *UserManager) GetUserOnlineState(userId uint32) bool {
	player, exist := u.playerMap[userId]
	if !exist {
		return false
	} else {
		return player.Online
	}
}

func (u *UserManager) GetOnlineUser(userId uint32) *model.Player {
	player, exist := u.playerMap[userId]
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
	for userId, player := range u.playerMap {
		if player.Online == false {
			continue
		}
		onlinePlayerMap[userId] = player
	}
	return onlinePlayerMap
}

type PlayerRegInfo struct {
	Exist     bool
	Req       *proto.SetPlayerBornDataReq
	UserId    uint32
	ClientSeq uint32
}

func (u *UserManager) CheckUserExistOnReg(userId uint32, req *proto.SetPlayerBornDataReq, clientSeq uint32) (exist bool, asyncWait bool) {
	_, exist = u.playerMap[userId]
	if exist {
		return true, false
	} else {
		go func() {
			player := u.loadUserFromDb(userId)
			exist = false
			if player != nil {
				exist = true
			}
			LOCAL_EVENT_MANAGER.localEventChan <- &LocalEvent{
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
	player, exist := u.playerMap[userId]
	if exist {
		return player
	} else {
		player = u.loadUserFromDb(userId)
		if player == nil {
			return nil
		}
		u.playerMap[player.PlayerID] = player
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
	u.playerMap[player.PlayerID] = player
}

func (u *UserManager) DeleteUser(player *model.Player) {
	if player == nil {
		return
	}
	u.ChangeUserDbState(player, model.DbDelete)
	u.playerMap[player.PlayerID] = player
}

type PlayerLoginInfo struct {
	UserId    uint32
	Player    *model.Player
	ClientSeq uint32
}

func (u *UserManager) OnlineUser(userId uint32, clientSeq uint32) (*model.Player, bool) {
	player, exist := u.playerMap[userId]
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
			LOCAL_EVENT_MANAGER.localEventChan <- &LocalEvent{
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

func (u *UserManager) ChangeUserDbState(player *model.Player, state int) {
	if player == nil {
		return
	}
	switch player.DbState {
	case model.DbInsert:
		break
	case model.DbDelete:
		if state == model.DbNormal {
			player.DbState = model.DbNormal
		}
	case model.DbNormal:
		if state == model.DbDelete {
			player.DbState = model.DbDelete
		}
	}
}

// 用户数据库定时同步协程

func (u *UserManager) StartAutoSaveUser() {
	go func() {
		ticker := time.NewTicker(time.Minute * 5)
		for {
			u.SaveUser()
			<-ticker.C
		}
	}()
}

func (u *UserManager) SaveUser() {
	playerMapSave := make(map[uint32]*model.Player, len(u.playerMap))
	u.playerMapLock.RLock()
	for k, v := range u.playerMap {
		playerMapSave[k] = v
	}
	u.playerMapLock.RUnlock()
	insertList := make([]*model.Player, 0)
	updateList := make([]*model.Player, 0)
	for uid, player := range playerMapSave {
		if uid < 100000000 {
			continue
		}
		switch player.DbState {
		case model.DbInsert:
			insertList = append(insertList, player)
			playerMapSave[uid].DbState = model.DbNormal
		case model.DbDelete:
			updateList = append(updateList, player)
			delete(playerMapSave, uid)
		case model.DbNormal:
			updateList = append(updateList, player)
		}
		if !player.Online {
			delete(playerMapSave, uid)
		}
	}
	err := u.dao.InsertPlayerList(insertList)
	if err != nil {
		logger.LOG.Error("insert player list error: %v", err)
		return
	}
	err = u.dao.UpdatePlayerList(updateList)
	if err != nil {
		logger.LOG.Error("update player list error: %v", err)
		return
	}
	u.playerMapLock.Lock()
	u.playerMap = playerMapSave
	u.playerMapLock.Unlock()
	logger.LOG.Info("save user finish, insert user count: %v, update user count: %v", len(insertList), len(updateList))
}
