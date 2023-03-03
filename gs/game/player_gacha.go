package game

import (
	"time"

	"hk4e/common/config"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/random"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	"github.com/golang-jwt/jwt/v4"
	pb "google.golang.org/protobuf/proto"
)

type UserInfo struct {
	UserId uint32 `json:"userId"`
	jwt.RegisteredClaims
}

// 获取卡池信息
func (g *GameManager) GetGachaInfoReq(player *model.Player, payloadMsg pb.Message) {
	serverAddr := config.GetConfig().Hk4e.GachaHistoryServer
	userInfo := &UserInfo{
		UserId: player.PlayerID,
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(time.Now().Add(24 * time.Hour * time.Duration(1))),
			IssuedAt:  jwt.NewNumericDate(time.Now()),
			NotBefore: jwt.NewNumericDate(time.Now()),
		},
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS512, userInfo)
	jwtStr, err := token.SignedString([]byte("flswld"))
	if err != nil {
		logger.Error("generate jwt error: %v", err)
		jwtStr = "default.jwt.token"
	}

	getGachaInfoRsp := new(proto.GetGachaInfoRsp)
	getGachaInfoRsp.GachaRandom = 12345
	getGachaInfoRsp.GachaInfoList = []*proto.GachaInfo{
		// 温迪
		{
			GachaType:              300,
			ScheduleId:             823,
			BeginTime:              0,
			EndTime:                2051193600,
			GachaSortId:            9998,
			GachaPrefabPath:        "GachaShowPanel_A019",
			GachaPreviewPrefabPath: "UI_Tab_GachaShowPanel_A019",
			TitleTextmap:           "UI_GACHA_SHOW_PANEL_A019_TITLE",
			LeftGachaTimes:         2147483647,
			GachaTimesLimit:        2147483647,
			CostItemId:             223,
			CostItemNum:            1,
			TenCostItemId:          223,
			TenCostItemNum:         10,
			GachaRecordUrl:         serverAddr + "/gm/gacha?gachaType=300&jwt=" + jwtStr,
			GachaRecordUrlOversea:  serverAddr + "/gm/gacha?gachaType=300&jwt=" + jwtStr,
			GachaProbUrl:           serverAddr + "/gm/gacha/details?scheduleId=823&jwt=" + jwtStr,
			GachaProbUrlOversea:    serverAddr + "/gm/gacha/details?scheduleId=823&jwt=" + jwtStr,
			GachaUpInfoList: []*proto.GachaUpInfo{
				{
					ItemParentType: 1,
					ItemIdList:     []uint32{1022},
				},
				{
					ItemParentType: 2,
					ItemIdList:     []uint32{1023, 1031, 1014},
				},
			},
			DisplayUp4ItemList: []uint32{1023},
			DisplayUp5ItemList: []uint32{1022},
			WishItemId:         0,
			WishProgress:       0,
			WishMaxProgress:    0,
			IsNewWish:          false,
		},
		// 可莉
		{
			GachaType:              400,
			ScheduleId:             833,
			BeginTime:              0,
			EndTime:                2051193600,
			GachaSortId:            9998,
			GachaPrefabPath:        "GachaShowPanel_A018",
			GachaPreviewPrefabPath: "UI_Tab_GachaShowPanel_A018",
			TitleTextmap:           "UI_GACHA_SHOW_PANEL_A018_TITLE",
			LeftGachaTimes:         2147483647,
			GachaTimesLimit:        2147483647,
			CostItemId:             223,
			CostItemNum:            1,
			TenCostItemId:          223,
			TenCostItemNum:         10,
			GachaRecordUrl:         serverAddr + "/gm/gacha?gachaType=400&jwt=" + jwtStr,
			GachaRecordUrlOversea:  serverAddr + "/gm/gacha?gachaType=400&jwt=" + jwtStr,
			GachaProbUrl:           serverAddr + "/gm/gacha/details?scheduleId=833&jwt=" + jwtStr,
			GachaProbUrlOversea:    serverAddr + "/gm/gacha/details?scheduleId=833&jwt=" + jwtStr,
			GachaUpInfoList: []*proto.GachaUpInfo{
				{
					ItemParentType: 1,
					ItemIdList:     []uint32{1029},
				},
				{
					ItemParentType: 2,
					ItemIdList:     []uint32{1025, 1034, 1043},
				},
			},
			DisplayUp4ItemList: []uint32{1025},
			DisplayUp5ItemList: []uint32{1029},
			WishItemId:         0,
			WishProgress:       0,
			WishMaxProgress:    0,
			IsNewWish:          false,
		},
		// 阿莫斯之弓&天空之傲
		{
			GachaType:              431,
			ScheduleId:             1143,
			BeginTime:              0,
			EndTime:                2051193600,
			GachaSortId:            9997,
			GachaPrefabPath:        "GachaShowPanel_A030",
			GachaPreviewPrefabPath: "UI_Tab_GachaShowPanel_A030",
			TitleTextmap:           "UI_GACHA_SHOW_PANEL_A030_TITLE",
			LeftGachaTimes:         2147483647,
			GachaTimesLimit:        2147483647,
			CostItemId:             223,
			CostItemNum:            1,
			TenCostItemId:          223,
			TenCostItemNum:         10,
			GachaRecordUrl:         serverAddr + "/gm/gacha?gachaType=431&jwt=" + jwtStr,
			GachaRecordUrlOversea:  serverAddr + "/gm/gacha?gachaType=431&jwt=" + jwtStr,
			GachaProbUrl:           serverAddr + "/gm/gacha/details?scheduleId=1143&jwt=" + jwtStr,
			GachaProbUrlOversea:    serverAddr + "/gm/gacha/details?scheduleId=1143&jwt=" + jwtStr,
			GachaUpInfoList: []*proto.GachaUpInfo{
				{
					ItemParentType: 1,
					ItemIdList:     []uint32{15502, 12501},
				},
				{
					ItemParentType: 2,
					ItemIdList:     []uint32{11403, 12402, 13401, 14409, 15401},
				},
			},
			DisplayUp4ItemList: []uint32{11403},
			DisplayUp5ItemList: []uint32{15502, 12501},
			WishItemId:         0,
			WishProgress:       0,
			WishMaxProgress:    0,
			IsNewWish:          false,
		},
		// 常驻
		{
			GachaType:              201,
			ScheduleId:             813,
			BeginTime:              0,
			EndTime:                2051193600,
			GachaSortId:            1000,
			GachaPrefabPath:        "GachaShowPanel_A017",
			GachaPreviewPrefabPath: "UI_Tab_GachaShowPanel_A017",
			TitleTextmap:           "UI_GACHA_SHOW_PANEL_A017_TITLE",
			LeftGachaTimes:         2147483647,
			GachaTimesLimit:        2147483647,
			CostItemId:             224,
			CostItemNum:            1,
			TenCostItemId:          224,
			TenCostItemNum:         10,
			GachaRecordUrl:         serverAddr + "/gm/gacha?gachaType=201&jwt=" + jwtStr,
			GachaRecordUrlOversea:  serverAddr + "/gm/gacha?gachaType=201&jwt=" + jwtStr,
			GachaProbUrl:           serverAddr + "/gm/gacha/details?scheduleId=813&jwt=" + jwtStr,
			GachaProbUrlOversea:    serverAddr + "/gm/gacha/details?scheduleId=813&jwt=" + jwtStr,
			GachaUpInfoList: []*proto.GachaUpInfo{
				{
					ItemParentType: 1,
					ItemIdList:     []uint32{1003, 1016},
				},
				{
					ItemParentType: 2,
					ItemIdList:     []uint32{1021, 1006, 1015},
				},
			},
			DisplayUp4ItemList: []uint32{1021},
			DisplayUp5ItemList: []uint32{1003, 1016},
			WishItemId:         0,
			WishProgress:       0,
			WishMaxProgress:    0,
			IsNewWish:          false,
		},
	}
	g.SendMsg(cmd.GetGachaInfoRsp, player.PlayerID, player.ClientSeq, getGachaInfoRsp)
}

func (g *GameManager) DoGachaReq(player *model.Player, payloadMsg pb.Message) {
	req := payloadMsg.(*proto.DoGachaReq)
	gachaScheduleId := req.GachaScheduleId
	gachaTimes := req.GachaTimes

	gachaType := uint32(0)
	costItemId := uint32(0)
	switch gachaScheduleId {
	case 823:
		// 温迪
		gachaType = 300
		costItemId = 223
	case 833:
		// 可莉
		gachaType = 400
		costItemId = 223
	case 1143:
		// 阿莫斯之弓&天空之傲
		gachaType = 431
		costItemId = 223
	case 813:
		// 常驻
		gachaType = 201
		costItemId = 224
	}

	// 先扣掉粉球或蓝球再进行抽卡
	g.CostUserItem(player.PlayerID, []*ChangeItem{
		{
			ItemId:      costItemId,
			ChangeCount: gachaTimes,
		},
	})

	doGachaRsp := &proto.DoGachaRsp{
		GachaType:       gachaType,
		GachaScheduleId: gachaScheduleId,
		GachaTimes:      gachaTimes,
		NewGachaRandom:  12345,
		LeftGachaTimes:  2147483647,
		GachaTimesLimit: 2147483647,
		CostItemId:      costItemId,
		CostItemNum:     1,
		TenCostItemId:   costItemId,
		TenCostItemNum:  10,
		GachaItemList:   make([]*proto.GachaItem, 0),
	}

	for i := uint32(0); i < gachaTimes; i++ {
		var ok bool
		var itemId uint32
		if gachaType == 400 {
			// 可莉
			ok, itemId = g.doGachaKlee()
		} else if gachaType == 300 {
			// 角色UP池
			ok, itemId = g.doGachaOnce(player.PlayerID, gachaType, true, false)
		} else if gachaType == 431 {
			// 武器UP池
			ok, itemId = g.doGachaOnce(player.PlayerID, gachaType, true, true)
		} else if gachaType == 201 {
			// 常驻
			ok, itemId = g.doGachaOnce(player.PlayerID, gachaType, false, false)
		} else {
			ok, itemId = false, 0
		}
		if !ok {
			itemId = 11301
		}

		// 添加抽卡获得的道具
		if itemId > 1000 && itemId < 2000 {
			avatarId := (itemId % 1000) + 10000000
			dbAvatar := player.GetDbAvatar()
			_, exist := dbAvatar.AvatarMap[avatarId]
			if !exist {
				g.AddUserAvatar(player.PlayerID, avatarId)
			} else {
				constellationItemId := itemId + 100
				dbItem := player.GetDbItem()
				if dbItem.GetItemCount(player, constellationItemId) < 6 {
					g.AddUserItem(player.PlayerID, []*ChangeItem{{ItemId: constellationItemId, ChangeCount: 1}}, false, 0)
				}
			}
		} else if itemId > 10000 && itemId < 20000 {
			g.AddUserWeapon(player.PlayerID, itemId)
		} else {
			g.AddUserItem(player.PlayerID, []*ChangeItem{{ItemId: itemId, ChangeCount: 1}}, false, 0)
		}

		// 计算星尘星辉
		xc := uint32(random.GetRandomInt32(0, 10))
		xh := uint32(random.GetRandomInt32(0, 10))

		gachaItem := new(proto.GachaItem)
		gachaItem.GachaItem = &proto.ItemParam{
			ItemId: itemId,
			Count:  1,
		}
		// 星尘
		if xc != 0 {
			g.AddUserItem(player.PlayerID, []*ChangeItem{{
				ItemId:      222,
				ChangeCount: xc,
			}}, false, 0)
			gachaItem.TokenItemList = []*proto.ItemParam{{
				ItemId: 222,
				Count:  xc,
			}}
		}
		// 星辉
		if xh != 0 {
			g.AddUserItem(player.PlayerID, []*ChangeItem{{
				ItemId:      221,
				ChangeCount: xh,
			}}, false, 0)
			gachaItem.TransferItems = []*proto.GachaTransferItem{{
				Item: &proto.ItemParam{
					ItemId: 221,
					Count:  xh,
				},
			}}
		}
		doGachaRsp.GachaItemList = append(doGachaRsp.GachaItemList, gachaItem)
	}

	logger.Debug("doGachaRsp: %v", doGachaRsp.String())
	g.SendMsg(cmd.DoGachaRsp, player.PlayerID, player.ClientSeq, doGachaRsp)
}

// 扣1给可莉刷烧烤酱
func (g *GameManager) doGachaKlee() (bool, uint32) {
	allAvatarList := make([]uint32, 0)
	allAvatarDataConfig := g.GetAllAvatarDataConfig()
	for k, v := range allAvatarDataConfig {
		if v.QualityType == 5 || v.QualityType == 4 {
			allAvatarList = append(allAvatarList, uint32(k))
		}
	}
	allWeaponList := make([]uint32, 0)
	allWeaponDataConfig := g.GetAllWeaponDataConfig()
	for k, v := range allWeaponDataConfig {
		if v.EquipLevel == 5 {
			allWeaponList = append(allWeaponList, uint32(k))
		}
	}
	allGoodList := make([]uint32, 0)
	// 全部角色
	allGoodList = append(allGoodList, allAvatarList...)
	// 全部5星武器
	allGoodList = append(allGoodList, allWeaponList...)
	// 原石 摩拉 粉球 蓝球
	allGoodList = append(allGoodList, 201, 202, 223, 224)
	// 苟利国家生死以
	allGoodList = append(allGoodList, 100081)
	rn := random.GetRandomInt32(0, int32(len(allGoodList)-1))
	itemId := allGoodList[rn]
	if itemId > 10000000 {
		itemId %= 1000
		itemId += 1000
	}
	return true, itemId
}

const (
	Orange = iota
	Purple
	Blue
	Avatar
	Weapon
)

const (
	StandardOrangeTimesFixThreshold uint32 = 74   // 标准池触发5星概率修正阈值的抽卡次数
	StandardOrangeTimesFixValue     int32  = 600  // 标准池5星概率修正因子
	StandardPurpleTimesFixThreshold uint32 = 9    // 标准池触发4星概率修正阈值的抽卡次数
	StandardPurpleTimesFixValue     int32  = 5100 // 标准池4星概率修正因子
	WeaponOrangeTimesFixThreshold   uint32 = 63   // 武器池触发5星概率修正阈值的抽卡次数
	WeaponOrangeTimesFixValue       int32  = 700  // 武器池5星概率修正因子
	WeaponPurpleTimesFixThreshold   uint32 = 8    // 武器池触发4星概率修正阈值的抽卡次数
	WeaponPurpleTimesFixValue       int32  = 6000 // 武器池4星概率修正因子
)

// 单抽一次
func (g *GameManager) doGachaOnce(userId uint32, gachaType uint32, mustGetUpEnable bool, weaponFix bool) (bool, uint32) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return false, 0
	}

	// 找到卡池对应的掉落组
	dropGroupDataConfig := gdconf.CONF.DropGroupDataMap[int32(gachaType)]
	if dropGroupDataConfig == nil {
		logger.Error("drop group not found, drop id: %v", gachaType)
		return false, 0
	}

	// 获取用户的卡池保底信息
	dbGacha := player.GetDbGacha()
	gachaPoolInfo := dbGacha.GachaPoolInfo[gachaType]
	if gachaPoolInfo == nil {
		logger.Error("user gacha pool info not found, gacha type: %v", gachaType)
		return false, 0
	}

	// 保底计数+1
	gachaPoolInfo.OrangeTimes++
	gachaPoolInfo.PurpleTimes++

	// 4星和5星概率修正
	OrangeTimesFixThreshold := uint32(0)
	OrangeTimesFixValue := int32(0)
	PurpleTimesFixThreshold := uint32(0)
	PurpleTimesFixValue := int32(0)
	if !weaponFix {
		OrangeTimesFixThreshold = StandardOrangeTimesFixThreshold
		OrangeTimesFixValue = StandardOrangeTimesFixValue
		PurpleTimesFixThreshold = StandardPurpleTimesFixThreshold
		PurpleTimesFixValue = StandardPurpleTimesFixValue
	} else {
		OrangeTimesFixThreshold = WeaponOrangeTimesFixThreshold
		OrangeTimesFixValue = WeaponOrangeTimesFixValue
		PurpleTimesFixThreshold = WeaponPurpleTimesFixThreshold
		PurpleTimesFixValue = WeaponPurpleTimesFixValue
	}
	if gachaPoolInfo.OrangeTimes >= OrangeTimesFixThreshold || gachaPoolInfo.PurpleTimes >= PurpleTimesFixThreshold {
		fixDropGroupDataConfig := new(gdconf.DropGroupData)
		fixDropGroupDataConfig.DropId = dropGroupDataConfig.DropId
		fixDropGroupDataConfig.WeightAll = dropGroupDataConfig.WeightAll
		// 计算4星和5星权重修正值
		addOrangeWeight := int32(gachaPoolInfo.OrangeTimes-OrangeTimesFixThreshold+1) * OrangeTimesFixValue
		if addOrangeWeight < 0 {
			addOrangeWeight = 0
		}
		addPurpleWeight := int32(gachaPoolInfo.PurpleTimes-PurpleTimesFixThreshold+1) * PurpleTimesFixValue
		if addPurpleWeight < 0 {
			addPurpleWeight = 0
		}
		for _, drop := range dropGroupDataConfig.DropConfig {
			fixDrop := new(gdconf.Drop)
			fixDrop.Result = drop.Result
			fixDrop.DropId = drop.DropId
			fixDrop.IsEnd = drop.IsEnd
			// 找到5/4/3星掉落组id 要求配置表的5/4/3星掉落组id规则固定为(卡池类型*10+1/2/3)
			orangeDropId := int32(gachaType*10 + 1)
			purpleDropId := int32(gachaType*10 + 2)
			blueDropId := int32(gachaType*10 + 3)
			// 权重修正
			if drop.Result == orangeDropId {
				fixDrop.Weight = drop.Weight + addOrangeWeight
			} else if drop.Result == purpleDropId {
				fixDrop.Weight = drop.Weight + addPurpleWeight
			} else if drop.Result == blueDropId {
				fixDrop.Weight = drop.Weight - addOrangeWeight - addPurpleWeight
			} else {
				logger.Error("invalid drop group id, does not match any case of orange/purple/blue, result group id: %v", drop.Result)
				fixDrop.Weight = drop.Weight
			}
			fixDropGroupDataConfig.DropConfig = append(fixDropGroupDataConfig.DropConfig, fixDrop)
		}
		dropGroupDataConfig = fixDropGroupDataConfig
	}

	// 掉落
	ok, drop := g.doFullRandDrop(dropGroupDataConfig)
	if !ok {
		return false, 0
	}
	// 分析本次掉落结果的星级和类型
	itemColor := 0
	itemType := 0
	_ = itemType
	gachaItemId := uint32(drop.Result)
	if gachaItemId < 2000 {
		// 抽到角色
		itemType = Avatar
		avatarId := (gachaItemId % 1000) + 10000000
		allAvatarDataConfig := g.GetAllAvatarDataConfig()
		avatarDataConfig := allAvatarDataConfig[int32(avatarId)]
		if avatarDataConfig == nil {
			logger.Error("avatar data config not found, avatar id: %v", avatarId)
			return false, 0
		}
		if avatarDataConfig.QualityType == 5 {
			itemColor = Orange
			logger.Debug("[orange avatar], times: %v, gachaItemId: %v", gachaPoolInfo.OrangeTimes, gachaItemId)
			if gachaPoolInfo.OrangeTimes > 90 {
				logger.Error("[abnormal orange avatar], times: %v, gachaItemId: %v", gachaPoolInfo.OrangeTimes, gachaItemId)
			}
		} else if avatarDataConfig.QualityType == 4 {
			itemColor = Purple
			logger.Debug("[purple avatar], times: %v, gachaItemId: %v", gachaPoolInfo.PurpleTimes, gachaItemId)
			if gachaPoolInfo.PurpleTimes > 10 {
				logger.Error("[abnormal purple avatar], times: %v, gachaItemId: %v", gachaPoolInfo.PurpleTimes, gachaItemId)
			}
		} else {
			itemColor = Blue
		}
	} else {
		// 抽到武器
		itemType = Weapon
		allWeaponDataConfig := g.GetAllWeaponDataConfig()
		weaponDataConfig := allWeaponDataConfig[int32(gachaItemId)]
		if weaponDataConfig == nil {
			logger.Error("weapon item data config not found, item id: %v", gachaItemId)
			return false, 0
		}
		if weaponDataConfig.EquipLevel == 5 {
			itemColor = Orange
			logger.Debug("[orange weapon], times: %v, gachaItemId: %v", gachaPoolInfo.OrangeTimes, gachaItemId)
			if gachaPoolInfo.OrangeTimes > 90 {
				logger.Error("[abnormal orange weapon], times: %v, gachaItemId: %v", gachaPoolInfo.OrangeTimes, gachaItemId)
			}
		} else if weaponDataConfig.EquipLevel == 4 {
			itemColor = Purple
			logger.Debug("[purple weapon], times: %v, gachaItemId: %v", gachaPoolInfo.PurpleTimes, gachaItemId)
			if gachaPoolInfo.PurpleTimes > 10 {
				logger.Error("[abnormal purple weapon], times: %v, gachaItemId: %v", gachaPoolInfo.PurpleTimes, gachaItemId)
			}
		} else {
			itemColor = Blue
		}
	}
	// 后处理
	switch itemColor {
	case Orange:
		// 重置5星保底计数
		gachaPoolInfo.OrangeTimes = 0
		if mustGetUpEnable {
			// 找到UP的5星对应的掉落组id 要求配置表的UP的5星掉落组id规则固定为(卡池类型*100+12)
			upOrangeDropId := int32(gachaType*100 + 12)
			// 替换本次结果为5星大保底
			if gachaPoolInfo.MustGetUpOrange {
				logger.Debug("trigger must get up orange, uid: %v", userId)
				upOrangeDropGroupDataConfig := gdconf.CONF.DropGroupDataMap[upOrangeDropId]
				if upOrangeDropGroupDataConfig == nil {
					logger.Error("drop group not found, drop id: %v", upOrangeDropId)
					return false, 0
				}
				upOrangeOk, upOrangeDrop := g.doFullRandDrop(upOrangeDropGroupDataConfig)
				if !upOrangeOk {
					return false, 0
				}
				gachaPoolInfo.MustGetUpOrange = false
				upOrangeGachaItemId := uint32(upOrangeDrop.Result)
				return upOrangeOk, upOrangeGachaItemId
			}
			// 触发5星大保底
			if drop.DropId != upOrangeDropId {
				gachaPoolInfo.MustGetUpOrange = true
			}
		}
	case Purple:
		// 重置4星保底计数
		gachaPoolInfo.PurpleTimes = 0
		if mustGetUpEnable {
			// 找到UP的4星对应的掉落组id 要求配置表的UP的4星掉落组id规则固定为(卡池类型*100+22)
			upPurpleDropId := int32(gachaType*100 + 22)
			// 替换本次结果为4星大保底
			if gachaPoolInfo.MustGetUpPurple {
				logger.Debug("trigger must get up purple, uid: %v", userId)
				upPurpleDropGroupDataConfig := gdconf.CONF.DropGroupDataMap[upPurpleDropId]
				if upPurpleDropGroupDataConfig == nil {
					logger.Error("drop group not found, drop id: %v", upPurpleDropId)
					return false, 0
				}
				upPurpleOk, upPurpleDrop := g.doFullRandDrop(upPurpleDropGroupDataConfig)
				if !upPurpleOk {
					return false, 0
				}
				gachaPoolInfo.MustGetUpPurple = false
				upPurpleGachaItemId := uint32(upPurpleDrop.Result)
				return upPurpleOk, upPurpleGachaItemId
			}
			// 触发4星大保底
			if drop.DropId != upPurpleDropId {
				gachaPoolInfo.MustGetUpPurple = true
			}
		}
	default:
	}
	return ok, gachaItemId
}

// 走一次完整流程的掉落组
func (g *GameManager) doFullRandDrop(dropGroupDataConfig *gdconf.DropGroupData) (bool, *gdconf.Drop) {
	for {
		drop := g.doRandDropOnce(dropGroupDataConfig)
		if drop == nil {
			logger.Error("weight error, drop group config: %v", dropGroupDataConfig)
			return false, nil
		}
		if drop.IsEnd {
			// 成功抽到物品
			return true, drop
		}
		// 进行下一步掉落流程
		dropGroupDataConfig = gdconf.CONF.DropGroupDataMap[drop.Result]
		if dropGroupDataConfig == nil {
			logger.Error("drop config tab exist error, invalid drop id: %v", drop.Result)
			return false, nil
		}
	}
}

// 进行单次随机掉落
func (g *GameManager) doRandDropOnce(dropGroupDataConfig *gdconf.DropGroupData) *gdconf.Drop {
	randNum := random.GetRandomInt32(0, dropGroupDataConfig.WeightAll-1)
	sumWeight := int32(0)
	// 轮盘选择法
	for _, drop := range dropGroupDataConfig.DropConfig {
		sumWeight += drop.Weight
		if sumWeight > randNum {
			return drop
		}
	}
	return nil
}
