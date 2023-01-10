package game

import (
	"hk4e/gs/dao"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
	"hk4e/protocol/proto"
)

// 玩家管理器

// 玩家注册 从db查询对应uid是否存在并异步回调返回结果
// 玩家登录 从db查询出来然后写入redis并异步回调返回玩家对象
// 玩家离线 写入db和redis
// 玩家定时保存 写入db和redis

type UserManager struct {
	dao             *dao.Dao                 // db对象
	playerMap       map[uint32]*model.Player // 内存玩家数据
	saveUserChan    chan *SaveUserData       // 用于主协程发送玩家数据给定时保存协程
	remotePlayerMap map[uint32]string        // 远程玩家 key:userId value:玩家所在gs的appid
}

func NewUserManager(dao *dao.Dao) (r *UserManager) {
	r = new(UserManager)
	r.dao = dao
	r.playerMap = make(map[uint32]*model.Player)
	r.saveUserChan = make(chan *SaveUserData) // 无缓冲区chan 避免主协程在写入时被迫加锁
	r.remotePlayerMap = make(map[uint32]string)
	go r.saveUserHandle()
	return r
}

// 在线玩家相关操作

// GetUserOnlineState 获取玩家在线状态
func (u *UserManager) GetUserOnlineState(userId uint32) bool {
	player, exist := u.playerMap[userId]
	if !exist {
		return false
	} else {
		return player.Online
	}
}

// GetOnlineUser 获取在线玩家对象
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

// GetAllOnlineUserList 获取全部在线玩家
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

// CheckUserExistOnReg 玩家注册检查是否已存在
func (u *UserManager) CheckUserExistOnReg(userId uint32, req *proto.SetPlayerBornDataReq, clientSeq uint32, gateAppId string) (exist bool, asyncWait bool) {
	_, exist = u.playerMap[userId]
	if exist {
		return true, false
	} else {
		go func() {
			player := u.LoadUserFromDbSync(userId)
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

// AddUser 向内存玩家数据里添加一个玩家
func (u *UserManager) AddUser(player *model.Player) {
	if player == nil {
		return
	}
	u.ChangeUserDbState(player, model.DbInsert)
	u.playerMap[player.PlayerID] = player
}

// DeleteUser 从内存玩家数据里删除一个玩家
func (u *UserManager) DeleteUser(userId uint32) {
	delete(u.playerMap, userId)
}

type PlayerLoginInfo struct {
	UserId    uint32
	Player    *model.Player
	ClientSeq uint32
	GateAppId string
}

// OnlineUser 玩家上线
func (u *UserManager) OnlineUser(userId uint32, clientSeq uint32, gateAppId string) (*model.Player, bool) {
	player, exist := u.playerMap[userId]
	if exist {
		u.ChangeUserDbState(player, model.DbNormal)
		return player, false
	} else {
		go func() {
			player = u.LoadUserFromDbSync(userId)
			if player != nil {
				u.SaveUserToRedisSync(player)
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

type ChangeGsInfo struct {
	IsChangeGs     bool
	JoinHostUserId uint32
}

type PlayerOfflineInfo struct {
	Player       *model.Player
	ChangeGsInfo *ChangeGsInfo
}

// OfflineUser 玩家离线
func (u *UserManager) OfflineUser(player *model.Player, changeGsInfo *ChangeGsInfo) {
	playerCopy := new(model.Player)
	err := object.FastDeepCopy(playerCopy, player)
	if err != nil {
		logger.Error("deep copy player error: %v", err)
		return
	}
	playerCopy.DbState = player.DbState
	go func() {
		u.SaveUserToDbSync(playerCopy)
		u.SaveUserToRedisSync(playerCopy)
		LOCAL_EVENT_MANAGER.localEventChan <- &LocalEvent{
			EventId: UserOfflineSaveToDbFinish,
			Msg: &PlayerOfflineInfo{
				Player:       player,
				ChangeGsInfo: changeGsInfo,
			},
		}
	}()
}

// ChangeUserDbState 玩家存档状态机 主要用于玩家定时保存时进行分类处理
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

// 远程玩家相关操作

func (u *UserManager) GetRemoteUserOnlineState(userId uint32) bool {
	_, exist := u.remotePlayerMap[userId]
	if !exist {
		return false
	} else {
		return true
	}
}

func (u *UserManager) GetRemoteUserGsAppId(userId uint32) string {
	appId, exist := u.remotePlayerMap[userId]
	if !exist {
		return ""
	} else {
		return appId
	}
}

func (u *UserManager) SetRemoteUserOnlineState(userId uint32, isOnline bool, appId string) {
	if isOnline {
		u.remotePlayerMap[userId] = appId
	} else {
		delete(u.remotePlayerMap, userId)
		u.DeleteUser(userId)
	}
}

// GetRemoteOnlineUserList 获取指定数量的远程在线玩家
func (u *UserManager) GetRemoteOnlineUserList(total int) map[uint32]*model.Player {
	if total > 50 {
		return nil
	}
	onlinePlayerMap := make(map[uint32]*model.Player)
	count := 0
	for userId := range u.remotePlayerMap {
		player := u.LoadTempOfflineUser(userId)
		if player == nil {
			continue
		}
		onlinePlayerMap[player.PlayerID] = player
		count++
		if count >= total {
			break
		}
	}
	return onlinePlayerMap
}

// LoadGlobalPlayer 加载并返回一个全服玩家及其在线状态
// 参见LoadTempOfflineUser说明
func (u *UserManager) LoadGlobalPlayer(userId uint32) (player *model.Player, online bool, remote bool) {
	online = u.GetUserOnlineState(userId)
	remote = false
	if !online {
		// 本地不在线就看看远程在不在线
		online = u.GetRemoteUserOnlineState(userId)
		if online {
			remote = true
		}
	}
	if online {
		if remote {
			// 远程在线玩家 为了简化实现流程 直接加载数据库临时档
			player = u.LoadTempOfflineUser(userId)
		} else {
			// 本地在线玩家
			player = u.GetOnlineUser(userId)
		}
	} else {
		// 全服离线玩家
		player = u.LoadTempOfflineUser(userId)
	}
	return player, online, remote
}

// 离线玩家相关操作

// LoadTempOfflineUser 加载临时离线玩家
// 正常情况速度较快可以同步阻塞调用
func (u *UserManager) LoadTempOfflineUser(userId uint32) *model.Player {
	player := u.GetOnlineUser(userId)
	if player != nil && player.Online {
		logger.Error("not allow get a online player as offline player, uid: %v", userId)
		return nil
	}
	player = u.LoadUserFromRedisSync(userId)
	if player == nil {
		// 玩家可能不存在于redis 尝试从db查询出来然后写入redis
		// 大多数情况下活跃玩家都在redis 所以不会走到下面
		// TODO 布隆过滤器防止恶意攻击造成redis缓存穿透
		if userId < 100000000 || userId > 200000000 {
			logger.Error("try to load a not exist uid, uid: %v", userId)
			return nil
		}
		player = u.LoadUserFromDbSync(userId)
		if player == nil {
			// 玩家根本就不存在
			logger.Error("try to load a not exist player from db, uid: %v", userId)
			return nil
		}
		u.SaveUserToRedisSync(player)
	}
	u.ChangeUserDbState(player, model.DbDelete)
	u.playerMap[player.PlayerID] = player
	return player
}

// SaveTempOfflineUser 保存临时离线玩家
// 如果在调用LoadTempOfflineUser后修改了离线玩家数据 则必须立即调用此函数回写
func (u *UserManager) SaveTempOfflineUser(player *model.Player) {
	// 主协程同步写入redis
	u.SaveUserToRedisSync(player)
	// 另一个协程异步的写回db
	playerCopy := new(model.Player)
	err := object.FastDeepCopy(playerCopy, player)
	if err != nil {
		logger.Error("deep copy player error: %v", err)
		return
	}
	playerCopy.DbState = player.DbState
	go func() {
		u.SaveUserToDbSync(playerCopy)
	}()
}

// db和redis相关操作

type SaveUserData struct {
	insertPlayerList []*model.Player
	updatePlayerList []*model.Player
	exitSave         bool
}

func (u *UserManager) saveUserHandle() {
	for {
		saveUserData := <-u.saveUserChan
		u.SaveUserListToDbSync(saveUserData)
		u.SaveUserListToRedisSync(saveUserData)
		if saveUserData.exitSave {
			// 停服落地玩家数据完毕 通知APP主协程关闭程序
			EXIT_SAVE_FIN_CHAN <- true
		}
	}
}

func (u *UserManager) LoadUserFromDbSync(userId uint32) *model.Player {
	player, err := u.dao.QueryPlayerByID(userId)
	if err != nil {
		logger.Error("query player error: %v", err)
		return nil
	}
	return player
}

func (u *UserManager) SaveUserToDbSync(player *model.Player) {
	if player.DbState == model.DbInsert {
		err := u.dao.InsertPlayer(player)
		if err != nil {
			logger.Error("insert player error: %v", err)
			return
		}
	} else if player.DbState == model.DbNormal {
		err := u.dao.UpdatePlayer(player)
		if err != nil {
			logger.Error("update player error: %v", err)
			return
		}
	} else {
		logger.Error("invalid player db state: %v", player.DbState)
	}
}

func (u *UserManager) SaveUserListToDbSync(saveUserData *SaveUserData) {
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

func (u *UserManager) LoadUserFromRedisSync(userId uint32) *model.Player {
	player := u.dao.GetRedisPlayer(userId)
	return player
}

func (u *UserManager) SaveUserToRedisSync(player *model.Player) {
	u.dao.SetRedisPlayer(player)
}

func (u *UserManager) SaveUserListToRedisSync(saveUserData *SaveUserData) {
	setPlayerList := make([]*model.Player, 0, len(saveUserData.insertPlayerList)+len(saveUserData.updatePlayerList))
	for _, player := range saveUserData.insertPlayerList {
		setPlayerList = append(setPlayerList, player)
	}
	for _, player := range saveUserData.updatePlayerList {
		setPlayerList = append(setPlayerList, player)
	}
	u.dao.SetRedisPlayerList(setPlayerList)
}
