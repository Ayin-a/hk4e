package game

import (
	"time"

	"hk4e/gs/dao"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/proto"
)

type SaveUserData struct {
	insertPlayerList []*model.Player
	updatePlayerList []*model.Player
}

type UserManager struct {
	dao          *dao.Dao
	playerMap    map[uint32]*model.Player
	saveUserChan chan *SaveUserData
}

func NewUserManager(dao *dao.Dao) (r *UserManager) {
	r = new(UserManager)
	r.dao = dao
	r.playerMap = make(map[uint32]*model.Player)
	r.saveUserChan = make(chan *SaveUserData)
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
	GateAppId string
}

func (u *UserManager) CheckUserExistOnReg(userId uint32, req *proto.SetPlayerBornDataReq, clientSeq uint32, gateAppId string) (exist bool, asyncWait bool) {
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
					GateAppId: gateAppId,
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
		u.ChangeUserDbState(player, model.DbDelete)
		u.playerMap[player.PlayerID] = player
		return player
	}
}

func (u *UserManager) loadUserFromDb(userId uint32) *model.Player {
	player, err := u.dao.QueryPlayerByID(userId)
	if err != nil {
		logger.Error("query player error: %v", err)
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
	GateAppId string
}

func (u *UserManager) OnlineUser(userId uint32, clientSeq uint32, gateAppId string) (*model.Player, bool) {
	player, exist := u.playerMap[userId]
	if exist {
		u.ChangeUserDbState(player, model.DbNormal)
		return player, false
	} else {
		go func() {
			player = u.loadUserFromDb(userId)
			if player != nil {
				u.ChangeUserDbState(player, model.DbNormal)
			} else {
				logger.Error("can not find user from db, uid: %v", userId)
			}
			LOCAL_EVENT_MANAGER.localEventChan <- &LocalEvent{
				EventId: LoadLoginUserFromDbFinish,
				Msg: &PlayerLoginInfo{
					UserId:    userId,
					Player:    player,
					ClientSeq: clientSeq,
					GateAppId: gateAppId,
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
	case model.DbNone:
		if state == model.DbInsert {
			player.DbState = model.DbInsert
		} else if state == model.DbDelete {
			player.DbState = model.DbDelete
		} else if state == model.DbNormal {
			player.DbState = model.DbNormal
		} else {
			logger.Error("player db state change not allow, before: %v, after: %v", player.DbState, state)
		}
	case model.DbInsert:
		logger.Error("player db state change not allow, before: %v, after: %v", player.DbState, state)
		break
	case model.DbDelete:
		if state == model.DbNormal {
			player.DbState = model.DbNormal
		} else {
			logger.Error("player db state change not allow, before: %v, after: %v", player.DbState, state)
		}
	case model.DbNormal:
		if state == model.DbDelete {
			player.DbState = model.DbDelete
		} else {
			logger.Error("player db state change not allow, before: %v, after: %v", player.DbState, state)
		}
	}
}

// 用户数据库定时同步

func (u *UserManager) StartAutoSaveUser() {
	go func() {
		ticker := time.NewTicker(time.Minute * 5)
		for {
			LOCAL_EVENT_MANAGER.localEventChan <- &LocalEvent{
				EventId: RunUserCopyAndSave,
			}
			<-ticker.C
		}
	}()
	go func() {
		for {
			saveUserData := <-u.saveUserChan
			u.SaveUser(saveUserData)
		}
	}()
}

func (u *UserManager) SaveUser(saveUserData *SaveUserData) {
	err := u.dao.InsertPlayerList(saveUserData.insertPlayerList)
	if err != nil {
		logger.Error("insert player list error: %v", err)
		return
	}
	err = u.dao.UpdatePlayerList(saveUserData.updatePlayerList)
	if err != nil {
		logger.Error("update player list error: %v", err)
		return
	}
	logger.Info("save user finish, insert user count: %v, update user count: %v", len(saveUserData.insertPlayerList), len(saveUserData.updatePlayerList))
}
