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

func (g *GameManager) PlayerLoginReq(userId uint32, clientSeq uint32, gateAppId string, payloadMsg pb.Message) {
	logger.Info("user login req, uid: %v, gateAppId: %v", userId, gateAppId)
	req := payloadMsg.(*proto.PlayerLoginReq)
	logger.Debug("login data: %v", req)
	g.OnLogin(userId, clientSeq, gateAppId, false, nil)
}

func (g *GameManager) SetPlayerBornDataReq(userId uint32, clientSeq uint32, gateAppId string, payloadMsg pb.Message) {
	logger.Info("user reg req, uid: %v, gateAppId: %v", userId, gateAppId)
	req := payloadMsg.(*proto.SetPlayerBornDataReq)
	logger.Debug("reg data: %v", req)
	if userId < PlayerBaseUid {
		logger.Error("uid can not less than player base uid, reg req uid: %v", userId)
		return
	}
	g.OnReg(userId, clientSeq, gateAppId, req)
}

func (g *GameManager) OnLogin(userId uint32, clientSeq uint32, gateAppId string, isReg bool, regPlayer *model.Player) {
	logger.Info("user login, uid: %v", userId)
	if isReg {
		g.OnLoginOk(userId, regPlayer, clientSeq, gateAppId)
		return
	}
	player, isRobot := USER_MANAGER.OnlineUser(userId, clientSeq, gateAppId)
	if isRobot {
		g.OnLoginOk(userId, player, clientSeq, gateAppId)
	}
}

func (g *GameManager) OnLoginOk(userId uint32, player *model.Player, clientSeq uint32, gateAppId string) {
	if player == nil {
		g.SendMsgToGate(cmd.DoSetPlayerBornDataNotify, userId, clientSeq, gateAppId, new(proto.DoSetPlayerBornDataNotify))
		return
	}

	player.OnlineTime = uint32(time.Now().UnixMilli())
	player.Online = true
	player.GateAppId = gateAppId

	// 初始化
	player.InitAll()

	// 确保玩家位置安全
	player.Pos.X = player.SafePos.X
	player.Pos.Y = player.SafePos.Y
	player.Pos.Z = player.SafePos.Z
	if player.SceneId > 100 {
		player.SceneId = 3
		player.Pos = &model.Vector{X: 2747, Y: 194, Z: -1719}
		player.Rot = &model.Vector{X: 0, Y: 307, Z: 0}
	}

	player.CombatInvokeHandler = model.NewInvokeHandler[proto.CombatInvokeEntry]()
	player.AbilityInvokeHandler = model.NewInvokeHandler[proto.AbilityInvokeEntry]()

	if userId < PlayerBaseUid {
		return
	}

	g.LoginNotify(userId, player, clientSeq)

	MESSAGE_QUEUE.SendToAll(&mq.NetMsg{
		MsgType: mq.MsgTypeServer,
		EventId: mq.ServerUserOnlineStateChangeNotify,
		ServerMsg: &mq.ServerMsg{
			UserId:   userId,
			IsOnline: true,
		},
	})

	TICK_MANAGER.CreateUserGlobalTick(userId)
	TICK_MANAGER.CreateUserTimer(userId, UserTimerActionTest, 100)

	atomic.AddInt32(&ONLINE_PLAYER_NUM, 1)
}

func (g *GameManager) OnReg(userId uint32, clientSeq uint32, gateAppId string, payloadMsg pb.Message) {
	logger.Debug("user reg, uid: %v", userId)
	req := payloadMsg.(*proto.SetPlayerBornDataReq)
	logger.Debug("avatar id: %v, nickname: %v", req.AvatarId, req.NickName)
	exist, asyncWait := USER_MANAGER.CheckUserExistOnReg(userId, req, clientSeq, gateAppId)
	if !asyncWait {
		g.OnRegOk(exist, req, userId, clientSeq, gateAppId)
	}
}

func (g *GameManager) OnRegOk(exist bool, req *proto.SetPlayerBornDataReq, userId uint32, clientSeq uint32, gateAppId string) {
	if exist {
		logger.Error("recv reg req, but user is already exist, uid: %v", userId)
		return
	}
	nickName := req.NickName
	mainCharAvatarId := req.GetAvatarId()
	if mainCharAvatarId != 10000005 && mainCharAvatarId != 10000007 {
		logger.Error("invalid main char avatar id: %v", mainCharAvatarId)
		return
	}
	player := g.CreatePlayer(userId, nickName, mainCharAvatarId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	USER_MANAGER.AddUser(player)
	g.SendMsgToGate(cmd.SetPlayerBornDataRsp, userId, clientSeq, gateAppId, new(proto.SetPlayerBornDataRsp))
	g.OnLogin(userId, clientSeq, gateAppId, true, player)
}

func (g *GameManager) OnUserOffline(userId uint32, changeGsInfo *ChangeGsInfo) {
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

func (g *GameManager) LoginNotify(userId uint32, player *model.Player, clientSeq uint32) {
	g.SendMsg(cmd.PlayerDataNotify, userId, clientSeq, g.PacketPlayerDataNotify(player))
	g.SendMsg(cmd.StoreWeightLimitNotify, userId, clientSeq, g.PacketStoreWeightLimitNotify())
	g.SendMsg(cmd.PlayerStoreNotify, userId, clientSeq, g.PacketPlayerStoreNotify(player))
	g.SendMsg(cmd.AvatarDataNotify, userId, clientSeq, g.PacketAvatarDataNotify(player))
	g.SendMsg(cmd.OpenStateUpdateNotify, userId, clientSeq, g.PacketOpenStateUpdateNotify())
	g.SendMsg(cmd.QuestListNotify, userId, clientSeq, g.PacketQuestListNotify(player))
	// g.GCGLogin(player) // 发送GCG登录相关的通知包
	playerLoginRsp := &proto.PlayerLoginRsp{
		IsUseAbilityHash: true,
		AbilityHashCode:  0,
		GameBiz:          "hk4e_cn",
		IsScOpen:         false,
		RegisterCps:      "taptap",
		CountryCode:      "CN",
		Birthday:         "2000-01-01",
		TotalTickTime:    0.0,
	}
	g.SendMsg(cmd.PlayerLoginRsp, userId, clientSeq, playerLoginRsp)
}

func (g *GameManager) PacketPlayerDataNotify(player *model.Player) *proto.PlayerDataNotify {
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

func (g *GameManager) PacketStoreWeightLimitNotify() *proto.StoreWeightLimitNotify {
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

func (g *GameManager) PacketPlayerStoreNotify(player *model.Player) *proto.PlayerStoreNotify {
	playerStoreNotify := &proto.PlayerStoreNotify{
		StoreType:   proto.StoreType_STORE_PACK,
		WeightLimit: constant.STORE_PACK_LIMIT_WEIGHT,
		ItemList:    make([]*proto.Item, 0, len(player.WeaponMap)+len(player.ReliquaryMap)+len(player.ItemMap)),
	}
	for _, weapon := range player.WeaponMap {
		itemDataConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
		if itemDataConfig == nil {
			logger.Error("get item data config is nil, itemId: %v", weapon.ItemId)
			continue
		}
		if uint16(itemDataConfig.Type) != constant.ITEM_TYPE_WEAPON {
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
	for _, reliquary := range player.ReliquaryMap {
		itemDataConfig := gdconf.GetItemDataById(int32(reliquary.ItemId))
		if itemDataConfig == nil {
			logger.Error("get item data config is nil, itemId: %v", reliquary.ItemId)
			continue
		}
		if uint16(itemDataConfig.Type) != constant.ITEM_TYPE_RELIQUARY {
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
	for _, item := range player.ItemMap {
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
		if itemDataConfig != nil && uint16(itemDataConfig.Type) == constant.ITEM_TYPE_FURNITURE {
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

func (g *GameManager) PacketAvatarDataNotify(player *model.Player) *proto.AvatarDataNotify {
	chooseAvatarId := player.MainCharAvatarId
	avatarDataNotify := &proto.AvatarDataNotify{
		CurAvatarTeamId:   uint32(player.TeamConfig.GetActiveTeamId()),
		ChooseAvatarGuid:  player.AvatarMap[chooseAvatarId].Guid,
		OwnedFlycloakList: player.FlyCloakList,
		// 角色衣装
		OwnedCostumeList: player.CostumeList,
		AvatarList:       make([]*proto.AvatarInfo, 0),
		AvatarTeamMap:    make(map[uint32]*proto.AvatarTeam),
	}
	for _, avatar := range player.AvatarMap {
		pbAvatar := g.PacketAvatarInfo(avatar)
		avatarDataNotify.AvatarList = append(avatarDataNotify.AvatarList, pbAvatar)
	}
	for teamIndex, team := range player.TeamConfig.TeamList {
		var teamAvatarGuidList []uint64 = nil
		for _, avatarId := range team.GetAvatarIdList() {
			teamAvatarGuidList = append(teamAvatarGuidList, player.AvatarMap[avatarId].Guid)
		}
		avatarDataNotify.AvatarTeamMap[uint32(teamIndex)+1] = &proto.AvatarTeam{
			AvatarGuidList: teamAvatarGuidList,
			TeamName:       team.Name,
		}
	}
	return avatarDataNotify
}

func (g *GameManager) PacketOpenStateUpdateNotify() *proto.OpenStateUpdateNotify {
	openStateUpdateNotify := &proto.OpenStateUpdateNotify{
		OpenStateMap: make(map[uint32]uint32),
	}
	// 先暂时开放全部功能模块
	for _, v := range constant.ALL_OPEN_STATE {
		openStateUpdateNotify.OpenStateMap[uint32(v)] = 1
	}
	return openStateUpdateNotify
}

func (g *GameManager) CreatePlayer(userId uint32, nickName string, mainCharAvatarId uint32) *model.Player {
	player := new(model.Player)
	player.PlayerID = userId
	player.NickName = nickName
	player.Signature = ""
	player.MainCharAvatarId = mainCharAvatarId
	player.HeadImage = mainCharAvatarId
	player.Birthday = []uint8{0, 0}
	player.NameCard = 210001
	player.NameCardList = make([]uint32, 0)
	player.NameCardList = append(player.NameCardList, 210001, 210042)

	player.FriendList = make(map[uint32]bool)
	player.FriendApplyList = make(map[uint32]bool)

	player.SceneId = 3

	player.PropertiesMap = make(map[uint16]uint32)
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

	player.FlyCloakList = make([]uint32, 0)
	player.CostumeList = make([]uint32, 0)

	player.SafePos = &model.Vector{X: 2747, Y: 194, Z: -1719}
	player.Pos = &model.Vector{X: 2747, Y: 194, Z: -1719}
	player.Rot = &model.Vector{X: 0, Y: 307, Z: 0}

	player.ItemMap = make(map[uint32]*model.Item)
	player.WeaponMap = make(map[uint64]*model.Weapon)
	player.ReliquaryMap = make(map[uint64]*model.Reliquary)
	player.AvatarMap = make(map[uint32]*model.Avatar)
	player.GameObjectGuidMap = make(map[uint64]model.GameObject)
	player.DropInfo = model.NewDropInfo()
	player.GCGInfo = model.NewGCGInfo()

	// 添加选定的主角
	player.AddAvatar(mainCharAvatarId)
	// 添加初始武器
	avatarDataConfig := gdconf.GetAvatarDataById(int32(mainCharAvatarId))
	if avatarDataConfig == nil {
		logger.Error("config is nil, mainCharAvatarId: %v", mainCharAvatarId)
		return nil
	}
	weaponId := uint64(g.snowflake.GenId())
	player.AddWeapon(uint32(avatarDataConfig.InitialWeapon), weaponId)
	// 角色装上初始武器
	player.WearWeapon(mainCharAvatarId, weaponId)

	player.TeamConfig = model.NewTeamInfo()
	player.TeamConfig.GetActiveTeam().SetAvatarIdList([]uint32{mainCharAvatarId})

	player.ChatMsgMap = make(map[uint32][]*model.ChatMsg)

	g.AcceptQuest(player, false)

	return player
}
