package game

import (
	"sync/atomic"
	"time"

	"hk4e/common/constant"
	"hk4e/common/mq"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *Game) PlayerLoginReq(userId uint32, clientSeq uint32, gateAppId string, payloadMsg pb.Message) {
	logger.Info("user login req, uid: %v, gateAppId: %v", userId, gateAppId)
	req := payloadMsg.(*proto.PlayerLoginReq)
	logger.Debug("login data: %v", req)
	USER_MANAGER.OnlineUser(userId, clientSeq, gateAppId, req.TargetUid)
}

func (g *Game) SetPlayerBornDataReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.SetPlayerBornDataReq)
	logger.Debug("avatar id: %v, nickname: %v", req.AvatarId, req.NickName)

	if player.IsBorn {
		logger.Error("player is already born, uid: %v", player.PlayerID)
		return
	}

	mainCharAvatarId := req.AvatarId
	if mainCharAvatarId != 10000005 && mainCharAvatarId != 10000007 {
		logger.Error("invalid main char avatar id: %v", mainCharAvatarId)
		return
	}
	player.NickName = req.NickName
	player.HeadImage = mainCharAvatarId

	dbAvatar := player.GetDbAvatar()
	dbAvatar.MainCharAvatarId = mainCharAvatarId
	// 添加选定的主角
	dbAvatar.AddAvatar(player, dbAvatar.MainCharAvatarId)
	// 添加主角初始武器
	avatarDataConfig := gdconf.GetAvatarDataById(int32(dbAvatar.MainCharAvatarId))
	if avatarDataConfig == nil {
		logger.Error("get avatar data config is nil, avatarId: %v", dbAvatar.MainCharAvatarId)
		return
	}
	weaponId := uint64(g.snowflake.GenId())
	dbWeapon := player.GetDbWeapon()
	dbWeapon.AddWeapon(player, uint32(avatarDataConfig.InitialWeapon), weaponId)
	weapon := dbWeapon.WeaponMap[weaponId]
	dbAvatar.WearWeapon(dbAvatar.MainCharAvatarId, weapon)
	dbTeam := player.GetDbTeam()
	dbTeam.GetActiveTeam().SetAvatarIdList([]uint32{dbAvatar.MainCharAvatarId})

	g.AcceptQuest(player, false)

	g.SendMsg(cmd.SetPlayerBornDataRsp, player.PlayerID, player.ClientSeq, new(proto.SetPlayerBornDataRsp))

	g.LoginNotify(player.PlayerID, player.ClientSeq, player)

	g.SendMsg(cmd.PlayerEnterSceneNotify, player.PlayerID, player.ClientSeq, g.PacketPlayerEnterSceneNotifyLogin(player, proto.EnterType_ENTER_SELF))
}

func (g *Game) OnLogin(userId uint32, clientSeq uint32, gateAppId string, player *model.Player, joinHostUserId uint32) {
	if player == nil {
		player := g.CreatePlayer(userId)
		USER_MANAGER.ChangeUserDbState(player, model.DbInsert)
	}
	USER_MANAGER.AddUser(player)

	SELF = player

	player.OnlineTime = uint32(time.Now().UnixMilli())
	player.Online = true
	player.GateAppId = gateAppId

	// 初始化
	player.InitOnlineData()
	dbAvatar := player.GetDbAvatar()
	dbAvatar.InitAllAvatar(player)
	dbReliquary := player.GetDbReliquary()
	dbReliquary.InitAllReliquary(player)
	dbWeapon := player.GetDbWeapon()
	dbWeapon.InitAllWeapon(player)
	dbItem := player.GetDbItem()
	dbItem.InitAllItem(player)

	// 确保玩家位置安全
	player.Pos.X = player.SafePos.X
	player.Pos.Y = player.SafePos.Y
	player.Pos.Z = player.SafePos.Z
	if player.SceneId > 100 {
		player.SceneId = 3
		player.Pos = &model.Vector{X: 2747, Y: 194, Z: -1719}
		player.Rot = &model.Vector{X: 0, Y: 307, Z: 0}
	}

	TICK_MANAGER.CreateUserGlobalTick(userId)
	TICK_MANAGER.CreateUserTimer(userId, UserTimerActionTest, 100, player.NickName)

	if player.IsBorn {
		g.LoginNotify(userId, clientSeq, player)
	}

	if joinHostUserId != 0 {
		hostPlayer := USER_MANAGER.GetOnlineUser(joinHostUserId)
		if hostPlayer == nil {
			logger.Error("player is nil, uid: %v", joinHostUserId)
		} else {
			g.JoinOtherWorld(player, hostPlayer)
		}
	} else {
		// 创建世界
		world := WORLD_MANAGER.CreateWorld(player)
		world.AddPlayer(player, player.SceneId)
		player.WorldId = world.GetId()
		// 进入场景
		player.SceneJump = true
		player.SceneLoadState = model.SceneNone
		if player.IsBorn {
			g.SendMsg(cmd.PlayerEnterSceneNotify, userId, clientSeq, g.PacketPlayerEnterSceneNotifyLogin(player, proto.EnterType_ENTER_SELF))
		}
	}

	if !player.IsBorn {
		g.SendMsg(cmd.DoSetPlayerBornDataNotify, userId, clientSeq, new(proto.DoSetPlayerBornDataNotify))
	}

	playerLoginRsp := &proto.PlayerLoginRsp{
		IsUseAbilityHash:        true,
		AbilityHashCode:         0,
		IsEnableClientHashDebug: true,
		IsScOpen:                false,
		ScInfo:                  []byte{},
		TotalTickTime:           0.0,
		GameBiz:                 "hk4e_global",
		RegisterCps:             "mihoyo",
		CountryCode:             "US",
		Birthday:                "2000-01-01",
	}
	g.SendMsg(cmd.PlayerLoginRsp, userId, clientSeq, playerLoginRsp)

	if userId < PlayerBaseUid {
		return
	}

	MESSAGE_QUEUE.SendToAll(&mq.NetMsg{
		MsgType: mq.MsgTypeServer,
		EventId: mq.ServerUserOnlineStateChangeNotify,
		ServerMsg: &mq.ServerMsg{
			UserId:   userId,
			IsOnline: true,
		},
	})
	atomic.AddInt32(&ONLINE_PLAYER_NUM, 1)

	SELF = nil
}

func (g *Game) CreatePlayer(userId uint32) *model.Player {
	player := new(model.Player)
	player.PlayerID = userId
	player.NickName = ""
	player.Signature = ""
	player.HeadImage = 0
	player.Birthday = []uint8{0, 0}
	player.NameCard = 210001
	player.NameCardList = make([]uint32, 0)
	player.FriendList = make(map[uint32]bool)
	player.FriendApplyList = make(map[uint32]bool)
	player.PropertiesMap = make(map[uint16]uint32)
	player.FlyCloakList = make([]uint32, 0)
	player.CostumeList = make([]uint32, 0)
	player.ChatMsgMap = make(map[uint32][]*model.ChatMsg)

	player.SceneId = 3

	player.NameCardList = append(player.NameCardList, 210001, 210042)

	player.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL] = 1
	player.PropertiesMap[constant.PLAYER_PROP_PLAYER_WORLD_LEVEL] = 0
	player.PropertiesMap[constant.PLAYER_PROP_IS_SPRING_AUTO_USE] = 1
	player.PropertiesMap[constant.PLAYER_PROP_SPRING_AUTO_USE_PERCENT] = 100
	player.PropertiesMap[constant.PLAYER_PROP_IS_FLYABLE] = 1
	player.PropertiesMap[constant.PLAYER_PROP_IS_TRANSFERABLE] = 1
	player.PropertiesMap[constant.PLAYER_PROP_MAX_STAMINA] = 24000
	player.PropertiesMap[constant.PLAYER_PROP_CUR_PERSIST_STAMINA] = 24000
	player.PropertiesMap[constant.PLAYER_PROP_PLAYER_RESIN] = 160
	player.PropertiesMap[constant.PLAYER_PROP_PLAYER_MP_SETTING_TYPE] = 2
	player.PropertiesMap[constant.PLAYER_PROP_IS_MP_MODE_AVAILABLE] = 1

	player.SafePos = new(model.Vector)
	player.Pos = new(model.Vector)
	player.Rot = new(model.Vector)
	sceneLuaConfig := gdconf.GetSceneLuaConfigById(int32(player.SceneId))
	if sceneLuaConfig == nil {
		logger.Error("get scene lua config is nil, sceneId: %v, uid: %v", player.SceneId, player.PlayerID)
		return player
	}
	player.SafePos = &model.Vector{
		X: float64(sceneLuaConfig.SceneConfig.BornPos.X),
		Y: float64(sceneLuaConfig.SceneConfig.BornPos.Y),
		Z: float64(sceneLuaConfig.SceneConfig.BornPos.Z),
	}
	player.Pos = &model.Vector{
		X: float64(sceneLuaConfig.SceneConfig.BornPos.X),
		Y: float64(sceneLuaConfig.SceneConfig.BornPos.Y),
		Z: float64(sceneLuaConfig.SceneConfig.BornPos.Z),
	}
	player.Rot = &model.Vector{
		X: float64(sceneLuaConfig.SceneConfig.BornRot.X),
		Y: float64(sceneLuaConfig.SceneConfig.BornRot.Y),
		Z: float64(sceneLuaConfig.SceneConfig.BornRot.Z),
	}

	return player
}

func (g *Game) OnUserOffline(userId uint32, changeGsInfo *ChangeGsInfo) {
	logger.Info("user offline, uid: %v", userId)
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	TICK_MANAGER.DestroyUserGlobalTick(userId)
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world != nil {
		g.UserWorldRemovePlayer(world, player)
	}
	player.OfflineTime = uint32(time.Now().Unix())
	player.Online = false
	player.TotalOnlineTime += uint32(time.Now().UnixMilli()) - player.OnlineTime
	USER_MANAGER.OfflineUser(player, changeGsInfo)
	atomic.AddInt32(&ONLINE_PLAYER_NUM, -1)
}

func (g *Game) LoginNotify(userId uint32, clientSeq uint32, player *model.Player) {
	g.SendMsg(cmd.PlayerDataNotify, userId, clientSeq, g.PacketPlayerDataNotify(player))
	g.SendMsg(cmd.StoreWeightLimitNotify, userId, clientSeq, g.PacketStoreWeightLimitNotify())
	g.SendMsg(cmd.PlayerStoreNotify, userId, clientSeq, g.PacketPlayerStoreNotify(player))
	g.SendMsg(cmd.AvatarDataNotify, userId, clientSeq, g.PacketAvatarDataNotify(player))
	g.SendMsg(cmd.OpenStateUpdateNotify, userId, clientSeq, g.PacketOpenStateUpdateNotify())
	g.SendMsg(cmd.QuestListNotify, userId, clientSeq, g.PacketQuestListNotify(player))
	g.SendMsg(cmd.FinishedParentQuestNotify, userId, clientSeq, g.PacketFinishedParentQuestNotify(player))
	// g.GCGLogin(player) // 发送GCG登录相关的通知包
}

func (g *Game) PacketPlayerDataNotify(player *model.Player) *proto.PlayerDataNotify {
	playerDataNotify := &proto.PlayerDataNotify{
		NickName:          player.NickName,
		ServerTime:        uint64(time.Now().UnixMilli()),
		IsFirstLoginToday: true,
		RegionId:          1,
		PropMap:           make(map[uint32]*proto.PropValue),
	}
	for k, v := range player.PropertiesMap {
		propValue := &proto.PropValue{
			Type:  uint32(k),
			Value: &proto.PropValue_Ival{Ival: int64(v)},
			Val:   int64(v),
		}
		playerDataNotify.PropMap[uint32(k)] = propValue
	}
	return playerDataNotify
}

func (g *Game) PacketStoreWeightLimitNotify() *proto.StoreWeightLimitNotify {
	storeWeightLimitNotify := &proto.StoreWeightLimitNotify{
		StoreType: proto.StoreType_STORE_PACK,
		// 背包容量限制
		WeightLimit:         constant.STORE_PACK_LIMIT_WEIGHT,
		WeaponCountLimit:    constant.STORE_PACK_LIMIT_WEAPON,
		ReliquaryCountLimit: constant.STORE_PACK_LIMIT_RELIQUARY,
		MaterialCountLimit:  constant.STORE_PACK_LIMIT_MATERIAL,
		FurnitureCountLimit: constant.STORE_PACK_LIMIT_FURNITURE,
	}
	return storeWeightLimitNotify
}

func (g *Game) PacketPlayerStoreNotify(player *model.Player) *proto.PlayerStoreNotify {
	dbItem := player.GetDbItem()
	dbWeapon := player.GetDbWeapon()
	dbReliquary := player.GetDbReliquary()
	playerStoreNotify := &proto.PlayerStoreNotify{
		StoreType:   proto.StoreType_STORE_PACK,
		WeightLimit: constant.STORE_PACK_LIMIT_WEIGHT,
		ItemList:    make([]*proto.Item, 0, len(dbItem.ItemMap)+len(dbWeapon.WeaponMap)+len(dbReliquary.ReliquaryMap)),
	}
	for _, weapon := range dbWeapon.WeaponMap {
		itemDataConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
		if itemDataConfig == nil {
			logger.Error("get item data config is nil, itemId: %v", weapon.ItemId)
			continue
		}
		if itemDataConfig.Type != constant.ITEM_TYPE_WEAPON {
			continue
		}
		affixMap := make(map[uint32]uint32)
		for _, affixId := range weapon.AffixIdList {
			affixMap[affixId] = uint32(weapon.Refinement)
		}
		pbItem := &proto.Item{
			ItemId: weapon.ItemId,
			Guid:   weapon.Guid,
			Detail: &proto.Item_Equip{
				Equip: &proto.Equip{
					Detail: &proto.Equip_Weapon{
						Weapon: &proto.Weapon{
							Level:        uint32(weapon.Level),
							Exp:          weapon.Exp,
							PromoteLevel: uint32(weapon.Promote),
							AffixMap:     affixMap,
						},
					},
					IsLocked: weapon.Lock,
				},
			},
		}
		playerStoreNotify.ItemList = append(playerStoreNotify.ItemList, pbItem)
	}
	for _, reliquary := range dbReliquary.ReliquaryMap {
		itemDataConfig := gdconf.GetItemDataById(int32(reliquary.ItemId))
		if itemDataConfig == nil {
			logger.Error("get item data config is nil, itemId: %v", reliquary.ItemId)
			continue
		}
		if itemDataConfig.Type != constant.ITEM_TYPE_RELIQUARY {
			continue
		}
		pbItem := &proto.Item{
			ItemId: reliquary.ItemId,
			Guid:   reliquary.Guid,
			Detail: &proto.Item_Equip{
				Equip: &proto.Equip{
					Detail: &proto.Equip_Reliquary{
						Reliquary: &proto.Reliquary{
							Level:            uint32(reliquary.Level),
							Exp:              reliquary.Exp,
							PromoteLevel:     uint32(reliquary.Promote),
							MainPropId:       reliquary.MainPropId,
							AppendPropIdList: reliquary.AppendPropIdList,
						},
					},
					IsLocked: reliquary.Lock,
				},
			},
		}
		playerStoreNotify.ItemList = append(playerStoreNotify.ItemList, pbItem)
	}
	for _, item := range dbItem.ItemMap {
		itemDataConfig := gdconf.GetItemDataById(int32(item.ItemId))
		if itemDataConfig == nil {
			logger.Error("get item data config is nil, itemId: %v", item.ItemId)
			continue
		}
		pbItem := &proto.Item{
			ItemId: item.ItemId,
			Guid:   item.Guid,
			Detail: nil,
		}
		if itemDataConfig != nil && itemDataConfig.Type == constant.ITEM_TYPE_FURNITURE {
			pbItem.Detail = &proto.Item_Furniture{
				Furniture: &proto.Furniture{
					Count: item.Count,
				},
			}
		} else {
			pbItem.Detail = &proto.Item_Material{
				Material: &proto.Material{
					Count:      item.Count,
					DeleteInfo: nil,
				},
			}
		}
		playerStoreNotify.ItemList = append(playerStoreNotify.ItemList, pbItem)
	}
	return playerStoreNotify
}

func (g *Game) PacketAvatarDataNotify(player *model.Player) *proto.AvatarDataNotify {
	dbAvatar := player.GetDbAvatar()
	dbTeam := player.GetDbTeam()
	avatarDataNotify := &proto.AvatarDataNotify{
		CurAvatarTeamId:   uint32(dbTeam.GetActiveTeamId()),
		ChooseAvatarGuid:  dbAvatar.AvatarMap[dbAvatar.MainCharAvatarId].Guid,
		OwnedFlycloakList: player.FlyCloakList,
		// 角色衣装
		OwnedCostumeList: player.CostumeList,
		AvatarList:       make([]*proto.AvatarInfo, 0),
		AvatarTeamMap:    make(map[uint32]*proto.AvatarTeam),
	}
	for _, avatar := range dbAvatar.AvatarMap {
		pbAvatar := g.PacketAvatarInfo(avatar)
		avatarDataNotify.AvatarList = append(avatarDataNotify.AvatarList, pbAvatar)
	}
	for teamIndex, team := range dbTeam.TeamList {
		var teamAvatarGuidList []uint64 = nil
		for _, avatarId := range team.GetAvatarIdList() {
			teamAvatarGuidList = append(teamAvatarGuidList, dbAvatar.AvatarMap[avatarId].Guid)
		}
		avatarDataNotify.AvatarTeamMap[uint32(teamIndex)+1] = &proto.AvatarTeam{
			AvatarGuidList: teamAvatarGuidList,
			TeamName:       team.Name,
		}
	}
	return avatarDataNotify
}

func (g *Game) PacketOpenStateUpdateNotify() *proto.OpenStateUpdateNotify {
	openStateUpdateNotify := &proto.OpenStateUpdateNotify{
		OpenStateMap: make(map[uint32]uint32),
	}
	// 先暂时开放全部功能模块
	for _, v := range constant.ALL_OPEN_STATE {
		openStateUpdateNotify.OpenStateMap[uint32(v)] = 1
	}
	return openStateUpdateNotify
}
