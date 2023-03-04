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

// AddUserItem 玩家添加物品
func (g *GameManager) AddUserItem(userId uint32, itemList []*ChangeItem, isHint bool, hintReason uint16) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	playerPropNotify := &proto.PlayerPropNotify{
		PropMap: make(map[uint32]*proto.PropValue),
	}
	dbItem := player.GetDbItem()
	for _, userItem := range itemList {
		// 物品为虚拟物品则另外处理
		switch userItem.ItemId {
		case constant.ITEM_ID_RESIN, constant.ITEM_ID_LEGENDARY_KEY, constant.ITEM_ID_HCOIN, constant.ITEM_ID_SCOIN,
			constant.ITEM_ID_MCOIN, constant.ITEM_ID_HOME_COIN:
			// 树脂 传说任务钥匙 原石 摩拉 创世结晶 洞天宝钱
			prop, ok := constant.VIRTUAL_ITEM_PROP[userItem.ItemId]
			if !ok {
				continue
			}
			// 角色属性物品数量增加
			player.PropertiesMap[prop] += userItem.ChangeCount

			playerPropNotify.PropMap[uint32(prop)] = &proto.PropValue{
				Type: uint32(prop),
				Val:  int64(player.PropertiesMap[prop]),
				Value: &proto.PropValue_Ival{
					Ival: int64(player.PropertiesMap[prop]),
				},
			}
		case constant.ITEM_ID_PLAYER_EXP:
			// 冒险阅历
			g.AddUserPlayerExp(userId, userItem.ChangeCount)
		default:
			// 普通物品直接进背包
			dbItem.AddItem(player, userItem.ItemId, userItem.ChangeCount)
		}
	}
	if len(playerPropNotify.PropMap) > 0 {
		g.SendMsg(cmd.PlayerPropNotify, userId, player.ClientSeq, playerPropNotify)
	}

	storeItemChangeNotify := &proto.StoreItemChangeNotify{
		StoreType: proto.StoreType_STORE_PACK,
		ItemList:  make([]*proto.Item, 0),
	}
	for _, userItem := range itemList {
		pbItem := &proto.Item{
			ItemId: userItem.ItemId,
			Guid:   dbItem.GetItemGuid(userItem.ItemId),
			Detail: &proto.Item_Material{
				Material: &proto.Material{
					Count: dbItem.GetItemCount(player, userItem.ItemId),
				},
			},
		}
		storeItemChangeNotify.ItemList = append(storeItemChangeNotify.ItemList, pbItem)
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
		for _, userItem := range itemList {
			itemAddHintNotify.ItemList = append(itemAddHintNotify.ItemList, &proto.ItemHint{
				ItemId: userItem.ItemId,
				Count:  userItem.ChangeCount,
				IsNew:  false,
			})
		}
		g.SendMsg(cmd.ItemAddHintNotify, userId, player.ClientSeq, itemAddHintNotify)
	}
}

func (g *GameManager) CostUserItem(userId uint32, itemList []*ChangeItem) {
	player := USER_MANAGER.GetOnlineUser(userId)
	if player == nil {
		logger.Error("player is nil, uid: %v", userId)
		return
	}
	playerPropNotify := &proto.PlayerPropNotify{
		PropMap: make(map[uint32]*proto.PropValue),
	}
	dbItem := player.GetDbItem()
	for _, userItem := range itemList {
		// 物品为虚拟物品则另外处理
		switch userItem.ItemId {
		case constant.ITEM_ID_RESIN, constant.ITEM_ID_LEGENDARY_KEY, constant.ITEM_ID_HCOIN, constant.ITEM_ID_SCOIN,
			constant.ITEM_ID_MCOIN, constant.ITEM_ID_HOME_COIN:
			// 树脂 传说任务钥匙 原石 摩拉 创世结晶 洞天宝钱
			prop, ok := constant.VIRTUAL_ITEM_PROP[userItem.ItemId]
			if !ok {
				continue
			}
			// 角色属性物品数量减少
			if player.PropertiesMap[prop] < userItem.ChangeCount {
				player.PropertiesMap[prop] = 0
			} else {
				player.PropertiesMap[prop] -= userItem.ChangeCount
			}

			playerPropNotify.PropMap[uint32(prop)] = &proto.PropValue{
				Type: uint32(prop),
				Val:  int64(player.PropertiesMap[prop]),
				Value: &proto.PropValue_Ival{
					Ival: int64(player.PropertiesMap[prop]),
				},
			}
		case constant.ITEM_ID_PLAYER_EXP:
			// 冒险阅历应该也没人会去扣吧?
		default:
			// 普通物品直接扣除
			dbItem.CostItem(player, userItem.ItemId, userItem.ChangeCount)
		}
	}
	if len(playerPropNotify.PropMap) > 0 {
		g.SendMsg(cmd.PlayerPropNotify, userId, player.ClientSeq, playerPropNotify)
	}

	storeItemChangeNotify := &proto.StoreItemChangeNotify{
		StoreType: proto.StoreType_STORE_PACK,
		ItemList:  make([]*proto.Item, 0),
	}
	for _, userItem := range itemList {
		count := dbItem.GetItemCount(player, userItem.ItemId)
		if count == 0 {
			continue
		}
		pbItem := &proto.Item{
			ItemId: userItem.ItemId,
			Guid:   dbItem.GetItemGuid(userItem.ItemId),
			Detail: &proto.Item_Material{
				Material: &proto.Material{
					Count: count,
				},
			},
		}
		storeItemChangeNotify.ItemList = append(storeItemChangeNotify.ItemList, pbItem)
	}
	if len(storeItemChangeNotify.ItemList) > 0 {
		g.SendMsg(cmd.StoreItemChangeNotify, userId, player.ClientSeq, storeItemChangeNotify)
	}

	storeItemDelNotify := &proto.StoreItemDelNotify{
		StoreType: proto.StoreType_STORE_PACK,
		GuidList:  make([]uint64, 0),
	}
	for _, userItem := range itemList {
		count := dbItem.GetItemCount(player, userItem.ItemId)
		if count > 0 {
			continue
		}
		storeItemDelNotify.GuidList = append(storeItemDelNotify.GuidList, dbItem.GetItemGuid(userItem.ItemId))
	}
	if len(storeItemDelNotify.GuidList) > 0 {
		g.SendMsg(cmd.StoreItemDelNotify, userId, player.ClientSeq, storeItemDelNotify)
	}
}
