package model

import (
	"hk4e/common/constant"
)

type Item struct {
	ItemId uint32 `bson:"itemId"` // 道具id
	Count  uint32 `bson:"count"`  // 道具数量
	Guid   uint64 `bson:"-"`
}

func (p *Player) InitAllItem() {
	for itemId, item := range p.ItemMap {
		item.Guid = p.GetNextGameObjectGuid()
		p.ItemMap[itemId] = item
	}
}

func (p *Player) GetItemGuid(itemId uint32) uint64 {
	itemInfo := p.ItemMap[itemId]
	if itemInfo == nil {
		return 0
	}
	return itemInfo.Guid
}

func (p *Player) GetItemCount(itemId uint32) uint32 {
	isVirtualItem, prop := p.GetVirtualItemProp(itemId)
	if isVirtualItem {
		value := p.PropertiesMap[prop]
		return value
	} else {
		itemInfo := p.ItemMap[itemId]
		if itemInfo == nil {
			return 0
		}
		return itemInfo.Count
	}
}

// 虚拟道具如下 实际值存在玩家的属性上
// 原石 201
// 摩拉 202
// 创世结晶 203
// 树脂 106
// 传说任务钥匙 107
// 洞天宝钱 204

func (p *Player) GetVirtualItemProp(itemId uint32) (isVirtualItem bool, prop uint16) {
	switch itemId {
	case 106:
		return true, constant.PlayerPropertyConst.PROP_PLAYER_RESIN
	case 107:
		return true, constant.PlayerPropertyConst.PROP_PLAYER_LEGENDARY_KEY
	case 201:
		return true, constant.PlayerPropertyConst.PROP_PLAYER_HCOIN
	case 202:
		return true, constant.PlayerPropertyConst.PROP_PLAYER_SCOIN
	case 203:
		return true, constant.PlayerPropertyConst.PROP_PLAYER_MCOIN
	case 204:
		return true, constant.PlayerPropertyConst.PROP_PLAYER_HOME_COIN
	default:
		return false, 0
	}
}

func (p *Player) AddItem(itemId uint32, count uint32) {
	isVirtualItem, prop := p.GetVirtualItemProp(itemId)
	if isVirtualItem {
		value := p.PropertiesMap[prop]
		value += count
		p.PropertiesMap[prop] = value
	} else {
		itemInfo := p.ItemMap[itemId]
		if itemInfo == nil {
			itemInfo = &Item{
				ItemId: itemId,
				Count:  0,
				Guid:   p.GetNextGameObjectGuid(),
			}
		}
		itemInfo.Count += count
		p.ItemMap[itemId] = itemInfo
	}
}

func (p *Player) CostItem(itemId uint32, count uint32) {
	isVirtualItem, prop := p.GetVirtualItemProp(itemId)
	if isVirtualItem {
		value := p.PropertiesMap[prop]
		if value < count {
			value = 0
		} else {
			value -= count
		}
		p.PropertiesMap[prop] = value
	} else {
		itemInfo := p.ItemMap[itemId]
		if itemInfo == nil {
			return
		}
		if itemInfo.Count < count {
			itemInfo.Count = 0
		} else {
			itemInfo.Count -= count
		}
		p.ItemMap[itemId] = itemInfo
	}
}
