package model

import "hk4e/common/constant"

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
	prop, ok := constant.ItemConstantConst.VIRTUAL_ITEM_PROP[itemId]
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
		itemInfo = &Item{
			ItemId: itemId,
			Count:  0,
			Guid:   p.GetNextGameObjectGuid(),
		}
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
	p.ItemMap[itemId] = itemInfo
}
