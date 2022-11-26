package game

import (
	gdc "hk4e/gs/config"
	"hk4e/gs/constant"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

func (g *GameManager) GetAllWeaponDataConfig() map[int32]*gdc.ItemData {
	allWeaponDataConfig := make(map[int32]*gdc.ItemData)
	for itemId, itemData := range gdc.CONF.ItemDataMap {
		if itemData.EquipEnumType != constant.EquipTypeConst.EQUIP_WEAPON {
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
	player := g.userManager.GetOnlineUser(userId)
	if player == nil {
		logger.LOG.Error("player is nil, uid: %v", userId)
		return 0
	}
	weaponId := uint64(g.snowflake.GenId())
	player.AddWeapon(itemId, weaponId)
	weapon := player.GetWeapon(weaponId)
	if weapon == nil {
		logger.LOG.Error("weapon is nil, itemId: %v, weaponId: %v", itemId, weaponId)
		return 0
	}

	// PacketStoreItemChangeNotify
	storeItemChangeNotify := new(proto.StoreItemChangeNotify)
	storeItemChangeNotify.StoreType = proto.StoreType_STORE_TYPE_PACK
	affixMap := make(map[uint32]uint32)
	for _, affixId := range weapon.AffixIdList {
		affixMap[affixId] = uint32(weapon.Refinement)
	}
	pbItem := &proto.Item{
		ItemId: itemId,
		Guid:   player.GetWeaponGuid(weaponId),
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
	g.SendMsg(cmd.StoreItemChangeNotify, userId, player.ClientSeq, storeItemChangeNotify)
	return weaponId
}
