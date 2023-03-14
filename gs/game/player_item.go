package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/pkg/logger"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"
)

type ChangeItem struct {
	ItemId      uint32
	ChangeCount uint32
}

func (g *GameManager) GetAllItemDataConfig() map[int32]*gdconf.ItemData {
	allItemDataConfig := make(map[int32]*gdconf.ItemData)
	for itemId, itemData := range gdconf.GetItemDataMap() {
		if itemData.Type == constant.ITEM_TYPE_WEAPON {
			// 排除武器
			continue
		}
		if itemData.Type == constant.ITEM_TYPE_RELIQUARY {
			// 排除圣遗物
			continue
		}
		allItemDataConfig[itemId] = itemData
	}
	return allItemDataConfig
}

func (g *GameManager) GetPlayerItemCount(userId uint32, itemId uint32) uint32 {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return 0
	}
	prop, ok := constant.VIRTUAL_ITEM_PROP[itemId]
	if ok {
		value := player.PropertiesMap[prop]
		return value
	} else {
		dbItem := player.GetDbItem()
		value := dbItem.GetItemCount(itemId)
		return value
	}
}

// AddUserItem 玩家添加物品
func (g *GameManager) AddUserItem(userId uint32, itemList []*ChangeItem, isHint bool, hintReason uint16) bool {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return false
	}
	dbItem := player.GetDbItem()
	playerPropNotify := &proto.PlayerPropNotify{
		PropMap: make(map[uint32]*proto.PropValue),
	}
	storeItemChangeNotify := &proto.StoreItemChangeNotify{
		StoreType: proto.StoreType_STORE_PACK,
		ItemList:  make([]*proto.Item, 0),
	}
	for _, changeItem := range itemList {
		prop, exist := constant.VIRTUAL_ITEM_PROP[changeItem.ItemId]
		if exist {
			// 物品为虚拟物品 角色属性物品数量增加
			player.PropertiesMap[prop] += changeItem.ChangeCount
			playerPropNotify.PropMap[uint32(prop)] = &proto.PropValue{
				Type: uint32(prop),
				Val:  int64(player.PropertiesMap[prop]),
				Value: &proto.PropValue_Ival{
					Ival: int64(player.PropertiesMap[prop]),
				},
			}
			// 特殊属性变化处理函数
			switch changeItem.ItemId {
			case constant.ITEM_ID_PLAYER_EXP:
				// 冒险阅历
				g.HandlePlayerExpAdd(userId)
			}
		} else {
			// 物品为普通物品 直接进背包
			// 校验背包物品容量 目前物品包括材料和家具
			if dbItem.GetItemMapLen() > constant.STORE_PACK_LIMIT_MATERIAL+constant.STORE_PACK_LIMIT_FURNITURE {
				return false
			}
			dbItem.AddItem(player, changeItem.ItemId, changeItem.ChangeCount)
		}
		pbItem := &proto.Item{
			ItemId: changeItem.ItemId,
			Guid:   dbItem.GetItemGuid(changeItem.ItemId),
			Detail: &proto.Item_Material{
				Material: &proto.Material{
					Count: dbItem.GetItemCount(changeItem.ItemId),
				},
			},
		}
		storeItemChangeNotify.ItemList = append(storeItemChangeNotify.ItemList, pbItem)
	}
	if len(playerPropNotify.PropMap) > 0 {
		g.SendMsg(cmd.PlayerPropNotify, userId, player.ClientSeq, playerPropNotify)
	}
	g.SendMsg(cmd.StoreItemChangeNotify, userId, player.ClientSeq, storeItemChangeNotify)
	if isHint {
		if hintReason == 0 {
			hintReason = uint16(proto.ActionReasonType_ACTION_REASON_SUBFIELD_DROP)
		}
		itemAddHintNotify := &proto.ItemAddHintNotify{
			Reason:   uint32(hintReason),
			ItemList: make([]*proto.ItemHint, 0),
		}
		for _, changeItem := range itemList {
			itemAddHintNotify.ItemList = append(itemAddHintNotify.ItemList, &proto.ItemHint{
				ItemId: changeItem.ItemId,
				Count:  changeItem.ChangeCount,
				IsNew:  false,
			})
		}
		g.SendMsg(cmd.ItemAddHintNotify, userId, player.ClientSeq, itemAddHintNotify)
	}
	return true
}

func (g *GameManager) CostUserItem(userId uint32, itemList []*ChangeItem) bool {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return false
	}
	dbItem := player.GetDbItem()
	playerPropNotify := &proto.PlayerPropNotify{
		PropMap: make(map[uint32]*proto.PropValue),
	}
	storeItemChangeNotify := &proto.StoreItemChangeNotify{
		StoreType: proto.StoreType_STORE_PACK,
		ItemList:  make([]*proto.Item, 0),
	}
	storeItemDelNotify := &proto.StoreItemDelNotify{
		StoreType: proto.StoreType_STORE_PACK,
		GuidList:  make([]uint64, 0),
	}
	for _, changeItem := range itemList {
		// 检查剩余道具数量
		count := g.GetPlayerItemCount(player.PlayerID, changeItem.ItemId)
		if count < changeItem.ChangeCount {
			return false
		}
		prop, exist := constant.VIRTUAL_ITEM_PROP[changeItem.ItemId]
		if exist {
			// 物品为虚拟物品 角色属性物品数量减少
			player.PropertiesMap[prop] -= changeItem.ChangeCount
			playerPropNotify.PropMap[uint32(prop)] = &proto.PropValue{
				Type: uint32(prop),
				Val:  int64(player.PropertiesMap[prop]),
				Value: &proto.PropValue_Ival{
					Ival: int64(player.PropertiesMap[prop]),
				},
			}
			// 特殊属性变化处理函数
			switch changeItem.ItemId {
			case constant.ITEM_ID_PLAYER_EXP:
				// 冒险阅历应该也没人会去扣吧?
				g.HandlePlayerExpAdd(userId)
			}
		} else {
			// 物品为普通物品 直接扣除
			dbItem.CostItem(player, changeItem.ItemId, changeItem.ChangeCount)
		}
		count = g.GetPlayerItemCount(player.PlayerID, changeItem.ItemId)
		if count > 0 {
			pbItem := &proto.Item{
				ItemId: changeItem.ItemId,
				Guid:   dbItem.GetItemGuid(changeItem.ItemId),
				Detail: &proto.Item_Material{
					Material: &proto.Material{
						Count: count,
					},
				},
			}
			storeItemChangeNotify.ItemList = append(storeItemChangeNotify.ItemList, pbItem)
		} else if count == 0 {
			storeItemDelNotify.GuidList = append(storeItemDelNotify.GuidList, dbItem.GetItemGuid(changeItem.ItemId))
		}
	}

	if len(playerPropNotify.PropMap) > 0 {
		g.SendMsg(cmd.PlayerPropNotify, userId, player.ClientSeq, playerPropNotify)
	}
	if len(storeItemChangeNotify.ItemList) > 0 {
		g.SendMsg(cmd.StoreItemChangeNotify, userId, player.ClientSeq, storeItemChangeNotify)
	}
	if len(storeItemDelNotify.GuidList) > 0 {
		g.SendMsg(cmd.StoreItemDelNotify, userId, player.ClientSeq, storeItemDelNotify)
	}

	return true
}
