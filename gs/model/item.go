package model

import "hk4e/common/constant"

type Item struct {
	ItemId uint32 // 道具id
	Count  uint32 // 道具数量
	Guid   uint64 `bson:"-" msgpack:"-"`
}

func (p *Player) InitAllItem() {
	for itemId, item := range p.ItemMap {
		item.Guid = p.GetNextGameObjectGuid()
		p.GameObjectGuidMap[item.Guid] = GameObject(item)
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
	prop, ok := constant.VIRTUAL_ITEM_PROP[itemId]
	if ok {
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

func (p *Player) AddItem(itemId uint32, count uint32) {
	itemInfo := p.ItemMap[itemId]
	if itemInfo == nil {
		// 该物品为新物品时校验背包物品容量
		// 目前物品包括材料和家具
		if len(p.ItemMap) > constant.STORE_PACK_LIMIT_MATERIAL+constant.STORE_PACK_LIMIT_FURNITURE {
			return
		}
		itemInfo = &Item{
			ItemId: itemId,
			Count:  0,
			Guid:   p.GetNextGameObjectGuid(),
		}
		p.GameObjectGuidMap[itemInfo.Guid] = GameObject(itemInfo)
	}
	itemInfo.Count += count
	p.ItemMap[itemId] = itemInfo
}

func (p *Player) CostItem(itemId uint32, count uint32) {
	itemInfo := p.ItemMap[itemId]
	if itemInfo == nil {
		return
	}
	if itemInfo.Count < count {
		itemInfo.Count = 0
	} else {
		itemInfo.Count -= count
	}
	if itemInfo.Count == 0 {
		delete(p.ItemMap, itemId)
		delete(p.GameObjectGuidMap, itemInfo.Guid)
	} else {
		p.ItemMap[itemId] = itemInfo
	}
}
