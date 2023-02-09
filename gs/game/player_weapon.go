package game

import (
	"sort"
	"strconv"

	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	pb "google.golang.org/protobuf/proto"
)

func (g *GameManager) GetAllWeaponDataConfig() map[int32]*gdconf.ItemData {
	allWeaponDataConfig := make(map[int32]*gdconf.ItemData)
	for itemId, itemData := range gdconf.GetItemDataMap() {
		if uint16(itemData.Type) != constant.ITEM_TYPE_WEAPON {
			continue
		}
		if (itemId >= 10000 && itemId <= 10008) ||
			itemId == 11411 ||
			(itemId >= 11506 && itemId <= 11508) ||
			itemId == 12505 ||
			itemId == 12506 ||
			itemId == 12508 ||
			itemId == 12509 ||
			itemId == 13503 ||
			itemId == 13506 ||
			itemId == 14411 ||
			itemId == 14503 ||
			itemId == 14505 ||
			itemId == 14508 ||
			(itemId >= 15504 && itemId <= 15506) ||
			itemId == 20001 || itemId == 15306 || itemId == 14306 || itemId == 13304 || itemId == 12304 {
			// 跳过无效武器
			continue
		}
		allWeaponDataConfig[itemId] = itemData
	}
	return allWeaponDataConfig
}

func (g *GameManager) AddUserWeapon(userId uint32, itemId uint32) uint64 {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return 0
	}
	weaponId := uint64(g.snowflake.GenId())
	player.AddWeapon(itemId, weaponId)
	weapon := player.GetWeapon(weaponId)
	if weapon == nil {
		logger.Error("weapon is nil, itemId: %v, weaponId: %v", itemId, weaponId)
		return 0
	}
	g.SendMsg(cmd.StoreItemChangeNotify, userId, player.ClientSeq, g.PacketStoreItemChangeNotifyByWeapon(weapon))
	return weaponId
}

func (g *GameManager) CostUserWeapon(userId uint32, weaponIdList []uint64) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	storeItemDelNotify := &proto.StoreItemDelNotify{
		GuidList:  make([]uint64, 0, len(weaponIdList)),
		StoreType: proto.StoreType_STORE_PACK,
	}
	for _, weaponId := range weaponIdList {
		weaponGuid := player.CostWeapon(weaponId)
		if weaponGuid == 0 {
			logger.Error("weapon cost error, weaponId: %v", weaponId)
			return
		}
		storeItemDelNotify.GuidList = append(storeItemDelNotify.GuidList, weaponGuid)
	}
	g.SendMsg(cmd.StoreItemDelNotify, userId, player.ClientSeq, storeItemDelNotify)
}

func (g *GameManager) PacketStoreItemChangeNotifyByWeapon(weapon *model.Weapon) *proto.StoreItemChangeNotify {
	storeItemChangeNotify := &proto.StoreItemChangeNotify{
		StoreType: proto.StoreType_STORE_PACK,
		ItemList:  make([]*proto.Item, 0),
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
						// key:武器效果id value:精炼等阶
						AffixMap: affixMap,
					},
				},
				IsLocked: weapon.Lock,
			},
		},
	}
	storeItemChangeNotify.ItemList = append(storeItemChangeNotify.ItemList, pbItem)
	return storeItemChangeNotify
}

// WeaponAwakenReq 武器精炼请求
func (g *GameManager) WeaponAwakenReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user weapon awaken, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.WeaponAwakenReq)
	// 确保精炼的武器与精炼材料不是同一个
	if req.TargetWeaponGuid == req.ItemGuid {
		logger.Error("weapon awaken guid equal, guid: %v", req.TargetWeaponGuid)
		g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_ITEM_INVALID_TARGET)
		return
	}
	// 是否拥有武器
	weapon, ok := player.WeaponMap[player.GetWeaponIdByGuid(req.TargetWeaponGuid)]
	if !ok {
		logger.Error("weapon error, weaponGuid: %v", req.TargetWeaponGuid)
		g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		return
	}
	// 获取武器物品配置表
	weaponConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
	if weaponConfig == nil {
		logger.Error("weapon config error, itemId: %v", weapon.ItemId)
		g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		return
	}
	// 确保获取消耗的摩拉索引不越界
	if int(weapon.Refinement) >= len(weaponConfig.AwakenCoinCostList) {
		logger.Error("weapon config cost coin error, itemId: %v", weapon.ItemId)
		return
	}
	// 摩拉数量是否足够
	if player.GetItemCount(constant.ITEM_ID_SCOIN) < weaponConfig.AwakenCoinCostList[weapon.Refinement] {
		logger.Error("item count not enough, itemId: %v", constant.ITEM_ID_SCOIN)
		g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_SCOIN_NOT_ENOUGH)
		return
	}
	// 一星二星的武器不能精炼
	if weaponConfig.EquipLevel < 3 {
		logger.Error("weapon equip level le 3, itemId: %v", weapon.ItemId)
		g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_AWAKEN_LEVEL_MAX)
		return
	}
	// 武器精炼等级是否不超过限制
	// 暂时精炼等级是写死的 应该最大精炼等级就是5级
	if weapon.Refinement >= 4 {
		logger.Error("weapon refinement ge 4, refinement: %v", weapon.Refinement)
		g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_AWAKEN_LEVEL_MAX)
		return
	}
	// 获取精炼材料物品配置表
	// 精炼的材料可能是武器也可能是物品
	itemDataConfig := gdconf.GetItemDataById(int32(player.GetItemIdByItemAndWeaponGuid(req.ItemGuid)))
	if itemDataConfig == nil {
		logger.Error("item data config error, itemGuid: %v", req.ItemGuid)
		g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		return
	}
	// 根据精炼材料的类型做不同操作
	switch itemDataConfig.Type {
	case int32(constant.ITEM_TYPE_WEAPON):
		// 精炼材料为武器
		// 是否拥有将被用于精炼的武器
		foodWeapon, ok := player.WeaponMap[player.GetWeaponIdByGuid(req.ItemGuid)]
		if !ok {
			logger.Error("weapon error, weaponGuid: %v", req.TargetWeaponGuid)
			g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
			return
		}
		// 确保被精炼武器没有被任何角色装备
		if foodWeapon.AvatarId != 0 {
			logger.Error("food weapon has been wear, weaponGuid: %v", req.ItemGuid)
			g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_EQUIP_HAS_BEEN_WEARED)
			return
		}
		// 确保被精炼武器没有上锁
		if foodWeapon.Lock {
			logger.Error("food weapon has been lock, weaponGuid: %v", req.ItemGuid)
			g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_EQUIP_IS_LOCKED)
			return
		}
		// 消耗作为精炼材料的武器
		g.CostUserWeapon(player.PlayerID, []uint64{foodWeapon.WeaponId})
	case int32(constant.ITEM_TYPE_MATERIAL):
		// 精炼材料为道具
		// 是否拥有将被用于精炼的道具
		item, ok := player.ItemMap[player.GetItemIdByGuid(req.ItemGuid)]
		if !ok {
			logger.Error("item error, itemGuid: %v", req.ItemGuid)
			g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
			return
		}
		// 武器的精炼材料是否为这个
		if item.ItemId != uint32(weaponConfig.AwakenMaterial) {
			logger.Error("awaken material item error, itemId: %v", item.ItemId)
			g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{}, proto.Retcode_RET_ITEM_INVALID_TARGET)
			return
		}
		// 消耗作为精炼材料的道具
		g.CostUserItem(player.PlayerID, []*UserItem{
			{
				ItemId:      item.ItemId,
				ChangeCount: 1,
			},
		})
	default:
		logger.Error("weapon awaken item type error, itemType: %v", itemDataConfig.Type)
		g.SendError(cmd.WeaponAwakenRsp, player, &proto.WeaponAwakenRsp{})
		return
	}
	// 消耗摩拉
	g.CostUserItem(player.PlayerID, []*UserItem{
		{
			ItemId:      constant.ITEM_ID_SCOIN,
			ChangeCount: weaponConfig.AwakenCoinCostList[weapon.Refinement],
		},
	})

	weaponAwakenRsp := &proto.WeaponAwakenRsp{
		AvatarGuid:              0,
		OldAffixLevelMap:        make(map[uint32]uint32),
		TargetWeaponAwakenLevel: 0,
		TargetWeaponGuid:        req.TargetWeaponGuid,
		CurAffixLevelMap:        make(map[uint32]uint32),
	}
	// 武器精炼前的信息
	for _, affixId := range weapon.AffixIdList {
		weaponAwakenRsp.OldAffixLevelMap[affixId] = uint32(weapon.Refinement)
	}

	// 武器精炼等级+1
	weapon.Refinement++
	// 更新武器的物品数据
	g.SendMsg(cmd.StoreItemChangeNotify, player.PlayerID, player.ClientSeq, g.PacketStoreItemChangeNotifyByWeapon(weapon))
	// 获取持有该武器的角色
	avatar, ok := player.AvatarMap[weapon.AvatarId]
	// 武器可能没被任何角色装备 仅在被装备时更新面板
	if ok {
		weaponAwakenRsp.AvatarGuid = avatar.Guid
		// 角色更新面板
		g.UpdateUserAvatarFightProp(player.PlayerID, avatar.AvatarId)
	}

	// 武器精炼后的信息
	weaponAwakenRsp.TargetWeaponAwakenLevel = uint32(weapon.Refinement)
	for _, affixId := range weapon.AffixIdList {
		weaponAwakenRsp.CurAffixLevelMap[affixId] = uint32(weapon.Refinement)
	}
	g.SendMsg(cmd.WeaponAwakenRsp, player.PlayerID, player.ClientSeq, weaponAwakenRsp)
}

// WeaponPromoteReq 武器突破请求
func (g *GameManager) WeaponPromoteReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user weapon promote, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.WeaponPromoteReq)
	// 是否拥有武器
	weapon, ok := player.WeaponMap[player.GetWeaponIdByGuid(req.TargetWeaponGuid)]
	if !ok {
		logger.Error("weapon error, weaponGuid: %v", req.TargetWeaponGuid)
		g.SendError(cmd.WeaponPromoteRsp, player, &proto.WeaponPromoteRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		return
	}
	// 获取武器配置表
	weaponConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
	if weaponConfig == nil {
		logger.Error("weapon config error, itemId: %v", weapon.ItemId)
		g.SendError(cmd.WeaponPromoteRsp, player, &proto.WeaponPromoteRsp{})
		return
	}
	// 获取武器突破配置表
	weaponPromoteConfig := gdconf.GetWeaponPromoteDataByIdAndLevel(weaponConfig.PromoteId, int32(weapon.Promote))
	if weaponPromoteConfig == nil {
		logger.Error("weapon promote config error, promoteLevel: %v", weapon.Promote)
		g.SendError(cmd.WeaponPromoteRsp, player, &proto.WeaponPromoteRsp{})
		return
	}
	// 武器等级是否达到限制
	if weapon.Level < uint8(weaponPromoteConfig.LevelLimit) {
		logger.Error("weapon level le level limit, level: %v", weapon.Level)
		g.SendError(cmd.WeaponPromoteRsp, player, &proto.WeaponPromoteRsp{}, proto.Retcode_RET_WEAPON_LEVEL_INVALID)
		return
	}
	// 获取武器突破下一级的配置表
	weaponPromoteConfig = gdconf.GetWeaponPromoteDataByIdAndLevel(weaponConfig.PromoteId, int32(weapon.Promote+1))
	if weaponPromoteConfig == nil {
		logger.Error("weapon promote config error, next promoteLevel: %v", weapon.Promote+1)
		g.SendError(cmd.WeaponPromoteRsp, player, &proto.WeaponPromoteRsp{}, proto.Retcode_RET_WEAPON_PROMOTE_LEVEL_EXCEED_LIMIT)
		return
	}
	// 将被消耗的物品列表
	costItemList := make([]*UserItem, 0, len(weaponPromoteConfig.CostItemMap)+1)
	// 突破材料是否足够并添加到消耗物品列表
	for itemId, count := range weaponPromoteConfig.CostItemMap {
		costItemList = append(costItemList, &UserItem{
			ItemId:      itemId,
			ChangeCount: count,
		})
	}
	// 消耗列表添加摩拉的消耗
	costItemList = append(costItemList, &UserItem{
		ItemId:      constant.ITEM_ID_SCOIN,
		ChangeCount: uint32(weaponPromoteConfig.CostCoin),
	})
	// 突破材料以及摩拉是否足够
	for _, item := range costItemList {
		if player.GetItemCount(item.ItemId) < item.ChangeCount {
			logger.Error("item count not enough, itemId: %v", item.ItemId)
			// 摩拉的错误提示与材料不同
			if item.ItemId == constant.ITEM_ID_SCOIN {
				g.SendError(cmd.WeaponPromoteRsp, player, &proto.WeaponPromoteRsp{}, proto.Retcode_RET_SCOIN_NOT_ENOUGH)
			}
			g.SendError(cmd.WeaponPromoteRsp, player, &proto.WeaponPromoteRsp{}, proto.Retcode_RET_ITEM_COUNT_NOT_ENOUGH)
			return
		}
	}
	// 冒险等级是否符合要求
	if player.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL] < uint32(weaponPromoteConfig.MinPlayerLevel) {
		logger.Error("player level not enough, level: %v", player.PropertiesMap[constant.PLAYER_PROP_PLAYER_LEVEL])
		g.SendError(cmd.WeaponPromoteRsp, player, &proto.WeaponPromoteRsp{}, proto.Retcode_RET_PLAYER_LEVEL_LESS_THAN)
		return
	}
	// 消耗突破材料和摩拉
	g.CostUserItem(player.PlayerID, costItemList)

	// 突破前的信息
	oldPromote := weapon.Promote

	// 武器突破等级+1
	weapon.Promote++
	// 更新武器的物品数据
	g.SendMsg(cmd.StoreItemChangeNotify, player.PlayerID, player.ClientSeq, g.PacketStoreItemChangeNotifyByWeapon(weapon))
	// 获取持有该武器的角色
	avatar, ok := player.AvatarMap[weapon.AvatarId]
	// 武器可能没被任何角色装备 仅在被装备时更新面板
	if ok {
		// 角色更新面板
		g.UpdateUserAvatarFightProp(player.PlayerID, avatar.AvatarId)
	}

	weaponPromoteRsp := &proto.WeaponPromoteRsp{
		TargetWeaponGuid: req.TargetWeaponGuid,
		OldPromoteLevel:  uint32(oldPromote),
		CurPromoteLevel:  uint32(weapon.Promote),
	}
	g.SendMsg(cmd.WeaponPromoteRsp, player.PlayerID, player.ClientSeq, weaponPromoteRsp)
}

// GetWeaponUpgradeReturnMaterial 获取武器强化返回的材料
func (g *GameManager) GetWeaponUpgradeReturnMaterial(overflowExp uint32) (returnItemList []*proto.ItemParam) {
	returnItemList = make([]*proto.ItemParam, 0, 0)
	// 武器强化材料返还
	type materialExpData struct {
		ItemId uint32
		Exp    uint32
	}
	// 武器强化返还材料的经验列表
	materialExpList := make([]*materialExpData, 0, len(constant.WEAPON_UPGRADE_MATERIAL))
	for _, itemId := range constant.WEAPON_UPGRADE_MATERIAL {
		// 获取物品配置表
		itemDataConfig := gdconf.GetItemDataById(int32(itemId))
		if itemDataConfig == nil {
			logger.Error("item data config error, itemId: %v", constant.ITEM_ID_SCOIN)
			return
		}
		// 材料将给予的经验数
		itemParam, err := strconv.Atoi(itemDataConfig.Use1Param1)
		if err != nil {
			logger.Error("parse item param error: %v", err)
			return
		}
		materialExpList = append(materialExpList, &materialExpData{
			ItemId: itemId,
			Exp:    uint32(itemParam),
		})
	}
	// 确保能返还的材料从大到小排序
	sort.Slice(materialExpList, func(i, j int) bool {
		return materialExpList[i].Exp > materialExpList[j].Exp
	})
	// 优先给予经验多的材料
	for _, data := range materialExpList {
		// 可以获得的材料个数
		count := overflowExp / data.Exp
		if count > 0 {
			// 添加到要返还材料的列表
			returnItemList = append(returnItemList, &proto.ItemParam{
				ItemId: data.ItemId,
				Count:  count,
			})
		}
		// 武器剩余溢出的经验
		overflowExp = overflowExp % data.Exp
	}
	return returnItemList
}

// CalcWeaponUpgradeExpAndCoin 计算使用材料给武器强化后能获得的经验以及摩拉消耗
func (g *GameManager) CalcWeaponUpgradeExpAndCoin(player *model.Player, itemParamList []*proto.ItemParam, foodWeaponGuidList []uint64) (expCount uint32, coinCost uint32, success bool) {
	// 武器经验计算
	for _, weaponGuid := range foodWeaponGuidList {
		foodWeapon, ok := player.WeaponMap[player.GetWeaponIdByGuid(weaponGuid)]
		if !ok {
			logger.Error("food weapon error, weaponGuid: %v", weaponGuid)
			return
		}
		// 确保武器不被任何人装备 否则可能会发生意想不到的问题哦
		if foodWeapon.AvatarId != 0 {
			logger.Error("food weapon has been equipped, weaponGuid: %v", weaponGuid)
			return
		}
		// 获取武器配置表
		weaponConfig := gdconf.GetItemDataById(int32(foodWeapon.ItemId))
		if weaponConfig == nil {
			logger.Error("weapon config error, itemId: %v", foodWeapon.ItemId)
			return
		}
		// 武器当前等级的经验
		foodWeaponTotalExp := foodWeapon.Exp
		// 计算从1级到武器当前等级所需消耗的经验
		for i := int32(1); i < int32(foodWeapon.Level); i++ {
			// 获取武器等级配置表
			weaponLevelConfig := gdconf.GetWeaponLevelDataByLevel(i)
			if weaponLevelConfig == nil {
				logger.Error("weapon level config error, level: %v", i)
				return
			}
			// 获取武器对应星级的经验
			foodWeaponExp, ok := weaponLevelConfig.ExpByStarMap[uint32(weaponConfig.EquipLevel)]
			if !ok {
				logger.Error("weapon equip level error, level: %v", weaponConfig.EquipLevel)
				return
			}
			// 增加该等级时的经验
			foodWeaponTotalExp += foodWeaponExp
		}
		// 将武器总消耗的经验转换为能获得的经验
		expCount += (foodWeaponTotalExp * 4) / 5
		// 增加武器初始经验
		expCount += uint32(weaponConfig.EquipBaseExp)
		// 增加摩拉消耗 武器为材料时摩拉的消耗只计算武器初始经验
		coinCost += uint32(weaponConfig.EquipBaseExp) / 10
	}
	// 材料经验计算
	for _, param := range itemParamList {
		// 获取物品配置表
		itemDataConfig := gdconf.GetItemDataById(int32(param.ItemId))
		if itemDataConfig == nil {
			logger.Error("item data config error, itemId: %v", constant.ITEM_ID_SCOIN)
			return
		}
		// 材料将给予的经验数
		itemParam, err := strconv.Atoi(itemDataConfig.Use1Param1)
		if err != nil {
			logger.Error("parse item param error: %v", err)
			return
		}
		// 材料的经验
		materialExp := uint32(itemParam) * param.Count
		// 增加材料的经验
		expCount += materialExp
		// 增加材料的摩拉消耗
		coinCost += materialExp / 10
	}
	// 表示计算过程没有报错
	success = true
	return
}

// CalcWeaponUpgrade 计算使用材料给武器强化后的等级经验以及返回的矿石
func (g *GameManager) CalcWeaponUpgrade(weapon *model.Weapon, expCount uint32) (weaponLevel uint8, weaponExp uint32, returnItemList []*proto.ItemParam, success bool) {
	// 获取武器配置表
	weaponConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
	if weaponConfig == nil {
		logger.Error("weapon config error, itemId: %v", weapon.ItemId)
		return
	}
	// 获取武器突破配置表
	weaponPromoteConfig := gdconf.GetWeaponPromoteDataByIdAndLevel(weaponConfig.PromoteId, int32(weapon.Promote))
	if weaponPromoteConfig == nil {
		logger.Error("weapon promote config error, promoteLevel: %v", weapon.Promote)
		return
	}
	// 临时武器等级经验添加
	weaponLevel = weapon.Level
	weaponExp = weapon.Exp + expCount
	for {
		// 获取武器等级配置表
		weaponLevelConfig := gdconf.GetWeaponLevelDataByLevel(int32(weaponLevel))
		if weaponLevelConfig == nil {
			// 获取不到代表已经到达最大等级
			break
		}
		// 升级所需经验
		needExp, ok := weaponLevelConfig.ExpByStarMap[uint32(weaponConfig.EquipLevel)]
		if !ok {
			logger.Error("weapon equip level error, level: %v", weaponConfig.EquipLevel)
			return
		}
		// 武器当前等级未突破则跳出循环
		if weaponLevel >= uint8(weaponPromoteConfig.LevelLimit) {
			// 溢出经验返还为材料
			returnItemList = g.GetWeaponUpgradeReturnMaterial(weaponExp)
			// 武器未突破溢出的经验处理
			weaponExp = 0
			break
		}
		// 武器经验小于升级所需的经验则跳出循环
		if weaponExp < needExp {
			break
		}
		// 武器等级提升
		weaponExp -= needExp
		weaponLevel++
	}
	// 表示计算过程没有报错
	success = true
	return
}

// WeaponUpgradeReq 武器升级请求
func (g *GameManager) WeaponUpgradeReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user weapon upgrade, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.WeaponUpgradeReq)
	// 是否拥有武器
	weapon, ok := player.WeaponMap[player.GetWeaponIdByGuid(req.TargetWeaponGuid)]
	if !ok {
		logger.Error("weapon error, weaponGuid: %v", req.TargetWeaponGuid)
		g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		return
	}
	// 获取武器配置表
	weaponConfig := gdconf.GetItemDataById(int32(weapon.ItemId))
	if weaponConfig == nil {
		logger.Error("weapon config error, itemId: %v", weapon.ItemId)
		g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{})
		return
	}
	// 获取武器突破配置表
	weaponPromoteConfig := gdconf.GetWeaponPromoteDataByIdAndLevel(weaponConfig.PromoteId, int32(weapon.Promote))
	if weaponPromoteConfig == nil {
		logger.Error("weapon promote config error, promoteLevel: %v", weapon.Promote)
		g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{})
		return
	}
	// 武器等级是否达到限制
	if weapon.Level >= uint8(weaponPromoteConfig.LevelLimit) {
		logger.Error("weapon level ge level limit, level: %v", weapon.Level)
		g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{}, proto.Retcode_RET_WEAPON_PROMOTE_LEVEL_EXCEED_LIMIT)
		return
	}
	// 将被消耗的物品列表
	costItemList := make([]*UserItem, 0, len(req.ItemParamList)+1)
	// 突破材料是否足够并添加到消耗物品列表
	for _, itemParam := range req.ItemParamList {
		costItemList = append(costItemList, &UserItem{
			ItemId:      itemParam.ItemId,
			ChangeCount: itemParam.Count,
		})
	}
	// 计算使用材料强化武器后将会获得的经验数
	expCount, coinCost, success := g.CalcWeaponUpgradeExpAndCoin(player, req.ItemParamList, req.FoodWeaponGuidList)
	if !success {
		logger.Error("calc weapon upgrade exp and coin error, uid: %v", player.PlayerID)
		g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{})
		return
	}
	// 消耗列表添加摩拉的消耗
	costItemList = append(costItemList, &UserItem{
		ItemId:      constant.ITEM_ID_SCOIN,
		ChangeCount: coinCost,
	})
	// 校验物品是否足够
	for _, item := range costItemList {
		if player.GetItemCount(item.ItemId) < item.ChangeCount {
			logger.Error("item count not enough, itemId: %v", item.ItemId)
			// 摩拉的错误提示与材料不同
			if item.ItemId == constant.ITEM_ID_SCOIN {
				g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{}, proto.Retcode_RET_SCOIN_NOT_ENOUGH)
			}
			g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{}, proto.Retcode_RET_ITEM_COUNT_NOT_ENOUGH)
			return
		}
	}
	// 校验作为升级材料的武器是否存在
	costWeaponIdList := make([]uint64, 0, len(req.FoodWeaponGuidList))
	for _, weaponGuid := range req.FoodWeaponGuidList {
		foodWeapon, ok := player.WeaponMap[player.GetWeaponIdByGuid(weaponGuid)]
		if !ok {
			logger.Error("food weapon error, weaponGuid: %v", weaponGuid)
			g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		}
		// 确保被精炼武器没有被任何角色装备
		if foodWeapon.AvatarId != 0 {
			logger.Error("food weapon has been wear, weaponGuid: %v", weaponGuid)
			g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{}, proto.Retcode_RET_EQUIP_HAS_BEEN_WEARED)
			return
		}
		// 确保被精炼武器没有上锁
		if foodWeapon.Lock {
			logger.Error("food weapon has been lock, weaponGuid: %v", weaponGuid)
			g.SendError(cmd.WeaponUpgradeRsp, player, &proto.WeaponUpgradeRsp{}, proto.Retcode_RET_EQUIP_IS_LOCKED)
			return
		}
		costWeaponIdList = append(costWeaponIdList, foodWeapon.WeaponId)
	}
	// 消耗升级材料和摩拉
	g.CostUserItem(player.PlayerID, costItemList)
	// 消耗作为升级材料的武器
	g.CostUserWeapon(player.PlayerID, costWeaponIdList)
	// 武器升级前的信息
	oldLevel := weapon.Level

	// 计算武器使用材料升级后的等级经验以及返回的矿石
	weaponLevel, weaponExp, returnItemList, success := g.CalcWeaponUpgrade(weapon, expCount)
	if !success {
		logger.Error("calc weapon upgrade error, uid: %v", player.PlayerID)
		g.SendError(cmd.CalcWeaponUpgradeReturnItemsRsp, player, &proto.CalcWeaponUpgradeReturnItemsRsp{})
		return
	}

	// 武器添加经验
	weapon.Level = weaponLevel
	weapon.Exp = weaponExp
	// 更新武器的物品数据
	g.SendMsg(cmd.StoreItemChangeNotify, player.PlayerID, player.ClientSeq, g.PacketStoreItemChangeNotifyByWeapon(weapon))

	// 获取持有该武器的角色
	avatar, ok := player.AvatarMap[weapon.AvatarId]
	// 武器可能没被任何角色装备 仅在被装备时更新面板
	if ok {
		// 角色更新面板
		g.UpdateUserAvatarFightProp(player.PlayerID, avatar.AvatarId)
	}

	// 将给予的材料列表
	addItemList := make([]*UserItem, 0, len(returnItemList))
	for _, param := range returnItemList {
		addItemList = append(addItemList, &UserItem{
			ItemId:      param.ItemId,
			ChangeCount: param.Count,
		})
	}
	// 给予玩家返回的矿石
	g.AddUserItem(player.PlayerID, addItemList, false, 0)

	weaponUpgradeRsp := &proto.WeaponUpgradeRsp{
		CurLevel:         uint32(weapon.Level),
		OldLevel:         uint32(oldLevel),
		ItemParamList:    returnItemList,
		TargetWeaponGuid: req.TargetWeaponGuid,
	}
	g.SendMsg(cmd.WeaponUpgradeRsp, player.PlayerID, player.ClientSeq, weaponUpgradeRsp)
}

// CalcWeaponUpgradeReturnItemsReq 计算武器升级返回矿石请求
func (g *GameManager) CalcWeaponUpgradeReturnItemsReq(player *model.Player, payloadMsg pb.Message) {
	logger.Debug("user calc weapon upgrade, uid: %v", player.PlayerID)
	req := payloadMsg.(*proto.CalcWeaponUpgradeReturnItemsReq)
	// 是否拥有武器
	weapon, ok := player.WeaponMap[player.GetWeaponIdByGuid(req.TargetWeaponGuid)]
	if !ok {
		logger.Error("weapon error, weaponGuid: %v", req.TargetWeaponGuid)
		g.SendError(cmd.CalcWeaponUpgradeReturnItemsRsp, player, &proto.CalcWeaponUpgradeReturnItemsRsp{}, proto.Retcode_RET_ITEM_NOT_EXIST)
		return
	}
	// 计算使用材料强化武器后将会获得的经验数
	expCount, _, success := g.CalcWeaponUpgradeExpAndCoin(player, req.ItemParamList, req.FoodWeaponGuidList)
	if !success {
		logger.Error("calc weapon upgrade exp and coin error, uid: %v", player.PlayerID)
		g.SendError(cmd.CalcWeaponUpgradeReturnItemsRsp, player, &proto.CalcWeaponUpgradeReturnItemsRsp{})
		return
	}
	// 计算武器使用材料升级后的等级经验以及返回的矿石
	_, _, returnItemList, success := g.CalcWeaponUpgrade(weapon, expCount)
	if !success {
		logger.Error("calc weapon upgrade error, weaponGuid: %v", req.TargetWeaponGuid)
		g.SendError(cmd.CalcWeaponUpgradeReturnItemsRsp, player, &proto.CalcWeaponUpgradeReturnItemsRsp{})
		return
	}

	calcWeaponUpgradeReturnItemsRsp := &proto.CalcWeaponUpgradeReturnItemsRsp{
		ItemParamList:    returnItemList,
		TargetWeaponGuid: req.TargetWeaponGuid,
	}
	g.SendMsg(cmd.CalcWeaponUpgradeReturnItemsRsp, player.PlayerID, player.ClientSeq, calcWeaponUpgradeReturnItemsRsp)
}
