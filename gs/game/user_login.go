package game

import (
	"time"

	gdc "hk4e/gs/config"
	"hk4e/gs/constant"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/reflection"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) OnLogin(userId uint32, clientSeq uint32) {
	logger.LOG.Info("user login, uid: %v", userId)
	player, asyncWait := g.userManager.OnlineUser(userId, clientSeq)
	if !asyncWait {
		g.OnLoginOk(userId, player, clientSeq)
	}
}

func (g *GameManager) OnLoginOk(userId uint32, player *model.Player, clientSeq uint32) {
	if player == nil {
		g.SendMsg(cmd.DoSetPlayerBornDataNotify, userId, clientSeq, new(proto.DoSetPlayerBornDataNotify))
		return
	}
	player.OnlineTime = uint32(time.Now().UnixMilli())
	player.Online = true

	// 初始化
	player.InitAll()
	player.TeamConfig.UpdateTeam()
	// 创建世界
	world := g.worldManager.CreateWorld(player, false)
	world.AddPlayer(player, player.SceneId)
	player.WorldId = world.id

	//// TODO 薄荷标记
	//if world.IsBigWorld() {
	//	bigWorld := world.GetSceneById(3)
	//	for pos := range g.worldManager.worldStatic.terrain {
	//		bigWorld.CreateEntityGadget(&model.Vector{
	//			X: float64(pos.X),
	//			Y: float64(pos.Y),
	//			Z: float64(pos.Z),
	//		}, 3003009)
	//	}
	//}

	// PacketPlayerDataNotify
	playerDataNotify := new(proto.PlayerDataNotify)
	playerDataNotify.NickName = player.NickName
	playerDataNotify.ServerTime = uint64(time.Now().UnixMilli())
	playerDataNotify.IsFirstLoginToday = true
	playerDataNotify.RegionId = player.RegionId
	playerDataNotify.PropMap = make(map[uint32]*proto.PropValue)
	for k, v := range player.PropertiesMap {
		propValue := new(proto.PropValue)
		propValue.Type = uint32(k)
		propValue.Value = &proto.PropValue_Ival{Ival: int64(v)}
		propValue.Val = int64(v)
		playerDataNotify.PropMap[uint32(k)] = propValue
	}
	g.SendMsg(cmd.PlayerDataNotify, userId, clientSeq, playerDataNotify)

	// PacketStoreWeightLimitNotify
	storeWeightLimitNotify := new(proto.StoreWeightLimitNotify)
	storeWeightLimitNotify.StoreType = proto.StoreType_STORE_TYPE_PACK
	// 背包容量限制
	storeWeightLimitNotify.WeightLimit = 30000
	storeWeightLimitNotify.WeaponCountLimit = 2000
	storeWeightLimitNotify.ReliquaryCountLimit = 1500
	storeWeightLimitNotify.MaterialCountLimit = 2000
	storeWeightLimitNotify.FurnitureCountLimit = 2000
	g.SendMsg(cmd.StoreWeightLimitNotify, userId, clientSeq, storeWeightLimitNotify)

	// PacketPlayerStoreNotify
	playerStoreNotify := new(proto.PlayerStoreNotify)
	playerStoreNotify.StoreType = proto.StoreType_STORE_TYPE_PACK
	playerStoreNotify.WeightLimit = 30000
	itemDataMapConfig := gdc.CONF.ItemDataMap
	for _, weapon := range player.WeaponMap {
		pbItem := &proto.Item{
			ItemId: weapon.ItemId,
			Guid:   weapon.Guid,
			Detail: nil,
		}
		itemData, ok := itemDataMapConfig[int32(weapon.ItemId)]
		if !ok {
			logger.LOG.Error("config is nil, itemId: %v", weapon.ItemId)
			return
		}
		if itemData.ItemEnumType != constant.ItemTypeConst.ITEM_WEAPON {
			continue
		}
		affixMap := make(map[uint32]uint32)
		for _, affixId := range weapon.AffixIdList {
			affixMap[affixId] = uint32(weapon.Refinement)
		}
		pbItem.Detail = &proto.Item_Equip{
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
		}
		playerStoreNotify.ItemList = append(playerStoreNotify.ItemList, pbItem)
	}
	for _, reliquary := range player.ReliquaryMap {
		pbItem := &proto.Item{
			ItemId: reliquary.ItemId,
			Guid:   reliquary.Guid,
			Detail: nil,
		}
		if itemDataMapConfig[int32(reliquary.ItemId)].ItemEnumType != constant.ItemTypeConst.ITEM_RELIQUARY {
			continue
		}
		pbItem.Detail = &proto.Item_Equip{
			Equip: &proto.Equip{
				Detail: &proto.Equip_Reliquary{
					Reliquary: &proto.Reliquary{
						Level:        uint32(reliquary.Level),
						Exp:          reliquary.Exp,
						PromoteLevel: uint32(reliquary.Promote),
						MainPropId:   reliquary.MainPropId,
						// TODO 圣遗物副词条
						AppendPropIdList: nil,
					},
				},
				IsLocked: reliquary.Lock,
			},
		}
		playerStoreNotify.ItemList = append(playerStoreNotify.ItemList, pbItem)
	}
	for _, item := range player.ItemMap {
		pbItem := &proto.Item{
			ItemId: item.ItemId,
			Guid:   item.Guid,
			Detail: nil,
		}
		itemDataConfig := itemDataMapConfig[int32(item.ItemId)]
		if itemDataConfig != nil && itemDataConfig.ItemEnumType == constant.ItemTypeConst.ITEM_FURNITURE {
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
	g.SendMsg(cmd.PlayerStoreNotify, userId, clientSeq, playerStoreNotify)

	// PacketAvatarDataNotify
	avatarDataNotify := new(proto.AvatarDataNotify)
	chooseAvatarId := player.MainCharAvatarId
	avatarDataNotify.CurAvatarTeamId = uint32(player.TeamConfig.GetActiveTeamId())
	avatarDataNotify.ChooseAvatarGuid = player.AvatarMap[chooseAvatarId].Guid
	avatarDataNotify.OwnedFlycloakList = player.FlyCloakList
	// 角色衣装
	avatarDataNotify.OwnedCostumeList = player.CostumeList
	for _, avatar := range player.AvatarMap {
		pbAvatar := g.PacketAvatarInfo(avatar)
		avatarDataNotify.AvatarList = append(avatarDataNotify.AvatarList, pbAvatar)
	}
	avatarDataNotify.AvatarTeamMap = make(map[uint32]*proto.AvatarTeam)
	for teamIndex, team := range player.TeamConfig.TeamList {
		var teamAvatarGuidList []uint64 = nil
		for _, avatarId := range team.AvatarIdList {
			if avatarId == 0 {
				break
			}
			teamAvatarGuidList = append(teamAvatarGuidList, player.AvatarMap[avatarId].Guid)
		}
		avatarDataNotify.AvatarTeamMap[uint32(teamIndex)+1] = &proto.AvatarTeam{
			AvatarGuidList: teamAvatarGuidList,
			TeamName:       team.Name,
		}
	}
	g.SendMsg(cmd.AvatarDataNotify, userId, clientSeq, avatarDataNotify)

	player.SceneLoadState = model.SceneNone

	// PacketPlayerEnterSceneNotify
	playerEnterSceneNotify := g.PacketPlayerEnterSceneNotify(player)
	g.SendMsg(cmd.PlayerEnterSceneNotify, userId, clientSeq, playerEnterSceneNotify)

	// PacketOpenStateUpdateNotify
	openStateUpdateNotify := new(proto.OpenStateUpdateNotify)
	openStateConstMap := reflection.ConvStructToMap(constant.OpenStateConst)
	openStateUpdateNotify.OpenStateMap = make(map[uint32]uint32)
	for _, v := range openStateConstMap {
		openStateUpdateNotify.OpenStateMap[uint32(v.(uint16))] = 1
	}
	g.SendMsg(cmd.OpenStateUpdateNotify, userId, clientSeq, openStateUpdateNotify)
}

func (g *GameManager) OnReg(userId uint32, clientSeq uint32, payloadMsg pb.Message) {
	logger.LOG.Debug("user reg, uid: %v", userId)
	req := payloadMsg.(*proto.SetPlayerBornDataReq)
	logger.LOG.Debug("avatar id: %v, nickname: %v", req.AvatarId, req.NickName)

	exist, asyncWait := g.userManager.CheckUserExistOnReg(userId, req, clientSeq)
	if !asyncWait {
		g.OnRegOk(exist, req, userId, clientSeq)
	}
}

func (g *GameManager) OnRegOk(exist bool, req *proto.SetPlayerBornDataReq, userId uint32, clientSeq uint32) {
	if exist {
		logger.LOG.Error("recv reg req, but user is already exist, userId: %v", userId)
		return
	}

	nickName := req.NickName
	mainCharAvatarId := req.GetAvatarId()
	if mainCharAvatarId != 10000005 && mainCharAvatarId != 10000007 {
		logger.LOG.Error("invalid main char avatar id: %v", mainCharAvatarId)
		return
	}

	player := g.CreatePlayer(userId, nickName, mainCharAvatarId)
	if player == nil {
		logger.LOG.Error("player is nil, uid: %v", userId)
		return
	}
	g.userManager.AddUser(player)

	g.SendMsg(cmd.SetPlayerBornDataRsp, userId, clientSeq, new(proto.SetPlayerBornDataRsp))
	g.OnLogin(userId, clientSeq)
}

func (g *GameManager) OnUserOffline(userId uint32) {
	logger.LOG.Info("user offline, uid: %v", userId)
	player := g.userManager.GetOnlineUser(userId)
	if player == nil {
		logger.LOG.Error("player is nil, userId: %v", userId)
		return
	}
	world := g.worldManager.GetWorldByID(player.WorldId)
	if world != nil {
		g.UserWorldRemovePlayer(world, player)
	}
	player.OfflineTime = uint32(time.Now().Unix())
	player.Online = false
	player.TotalOnlineTime += uint32(time.Now().UnixMilli()) - player.OnlineTime
	g.userManager.OfflineUser(player)
}

func (g *GameManager) CreatePlayer(userId uint32, nickName string, mainCharAvatarId uint32) *model.Player {
	player := new(model.Player)
	player.PlayerID = userId
	player.NickName = nickName
	player.Signature = "惟愿时光记忆，一路繁花千树。"
	player.MainCharAvatarId = mainCharAvatarId
	player.HeadImage = mainCharAvatarId
	player.NameCard = 210001
	player.NameCardList = make([]uint32, 0)
	player.NameCardList = append(player.NameCardList, 210001, 210042)

	player.FriendList = make(map[uint32]bool)
	player.FriendApplyList = make(map[uint32]bool)

	player.RegionId = 1
	player.SceneId = 3

	player.PropertiesMap = make(map[uint16]uint32)
	// 初始化所有属性
	propList := reflection.ConvStructToMap(constant.PlayerPropertyConst)
	for fieldName, fieldValue := range propList {
		if fieldName == "PROP_EXP" ||
			fieldName == "PROP_BREAK_LEVEL" ||
			fieldName == "PROP_SATIATION_VAL" ||
			fieldName == "PROP_SATIATION_PENALTY_TIME" ||
			fieldName == "PROP_LEVEL" {
			continue
		}
		value := fieldValue.(uint16)
		player.PropertiesMap[value] = 0
	}
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_LEVEL] = 1
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_WORLD_LEVEL] = 0
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_IS_SPRING_AUTO_USE] = 1
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_SPRING_AUTO_USE_PERCENT] = 100
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_IS_FLYABLE] = 1
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_IS_TRANSFERABLE] = 1
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_MAX_STAMINA] = 24000
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_CUR_PERSIST_STAMINA] = 24000
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_RESIN] = 160
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_PLAYER_MP_SETTING_TYPE] = 2
	player.PropertiesMap[constant.PlayerPropertyConst.PROP_IS_MP_MODE_AVAILABLE] = 1

	player.FlyCloakList = make([]uint32, 0)
	player.FlyCloakList = append(player.FlyCloakList, 140001)
	player.FlyCloakList = append(player.FlyCloakList, 140002)
	player.FlyCloakList = append(player.FlyCloakList, 140003)
	player.FlyCloakList = append(player.FlyCloakList, 140004)
	player.FlyCloakList = append(player.FlyCloakList, 140005)
	player.FlyCloakList = append(player.FlyCloakList, 140006)
	player.FlyCloakList = append(player.FlyCloakList, 140007)
	player.FlyCloakList = append(player.FlyCloakList, 140008)
	player.FlyCloakList = append(player.FlyCloakList, 140009)
	player.FlyCloakList = append(player.FlyCloakList, 140010)

	player.CostumeList = make([]uint32, 0)
	player.CostumeList = append(player.CostumeList, 200301)
	player.CostumeList = append(player.CostumeList, 201401)
	player.CostumeList = append(player.CostumeList, 202701)
	player.CostumeList = append(player.CostumeList, 204201)
	player.CostumeList = append(player.CostumeList, 200302)
	player.CostumeList = append(player.CostumeList, 202101)
	player.CostumeList = append(player.CostumeList, 204101)
	player.CostumeList = append(player.CostumeList, 204501)
	player.CostumeList = append(player.CostumeList, 201601)
	player.CostumeList = append(player.CostumeList, 203101)

	player.Pos = &model.Vector{X: 2747, Y: 194, Z: -1719}
	player.Rot = &model.Vector{X: 0, Y: 307, Z: 0}

	player.ItemMap = make(map[uint32]*model.Item)
	player.WeaponMap = make(map[uint64]*model.Weapon)
	player.ReliquaryMap = make(map[uint64]*model.Reliquary)
	player.AvatarMap = make(map[uint32]*model.Avatar)
	player.GameObjectGuidMap = make(map[uint64]model.GameObject)
	player.DropInfo = model.NewDropInfo()
	player.ChatMsgMap = make(map[uint32][]*model.ChatMsg)

	// 添加选定的主角
	player.AddAvatar(mainCharAvatarId)
	// 添加初始武器
	avatarDataConfig, ok := gdc.CONF.AvatarDataMap[int32(mainCharAvatarId)]
	if !ok {
		logger.LOG.Error("config is nil, mainCharAvatarId: %v", mainCharAvatarId)
		return nil
	}
	weaponId := uint64(g.snowflake.GenId())
	player.AddWeapon(uint32(avatarDataConfig.InitialWeapon), weaponId)
	// 角色装上初始武器
	player.WearWeapon(mainCharAvatarId, weaponId)

	player.TeamConfig = model.NewTeamInfo()
	player.TeamConfig.AddAvatarToTeam(mainCharAvatarId, 0)

	return player
}
