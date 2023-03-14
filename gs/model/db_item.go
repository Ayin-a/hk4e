package model

type DbItem struct {
	ItemMap map[uint32]*Item // 道具仓库
}

func (p *Player) GetDbItem() *DbItem {
	if p.DbItem == nil {
		p.DbItem = &DbItem{
			ItemMap: make(map[uint32]*Item),
		}
	}
	return p.DbItem
}

type Item struct {
	ItemId uint32 // 道具id
	Count  uint32 // 道具数量
	Guid   uint64 `bson:"-" msgpack:"-"`
}

func (i *DbItem) InitAllItem(player *Player) {
	for itemId, item := range i.ItemMap {
		item.Guid = player.GetNextGameObjectGuid()
		player.GameObjectGuidMap[item.Guid] = GameObject(item)
		i.ItemMap[itemId] = item
	}
}

func (i *DbItem) GetItemGuid(itemId uint32) uint64 {
	itemInfo := i.ItemMap[itemId]
	if itemInfo == nil {
		return 0
	}
	return itemInfo.Guid
}

func (i *DbItem) GetItemCount(itemId uint32) uint32 {
	itemInfo := i.ItemMap[itemId]
	if itemInfo == nil {
		return 0
	}
	return itemInfo.Count
}

func (i *DbItem) GetItemMapLen() int {
	return len(i.ItemMap)
}

func (i *DbItem) AddItem(player *Player, itemId uint32, count uint32) {
	itemInfo := i.ItemMap[itemId]
	if itemInfo == nil {
		itemInfo = &Item{
			ItemId: itemId,
			Count:  0,
			Guid:   player.GetNextGameObjectGuid(),
		}
		player.GameObjectGuidMap[itemInfo.Guid] = GameObject(itemInfo)
	}
	itemInfo.Count += count
	i.ItemMap[itemId] = itemInfo
}

func (i *DbItem) CostItem(player *Player, itemId uint32, count uint32) {
	itemInfo := i.ItemMap[itemId]
	if itemInfo == nil {
		return
	}
	if itemInfo.Count < count {
		return
	}
	itemInfo.Count -= count
	i.ItemMap[itemId] = itemInfo
	if itemInfo.Count == 0 {
		delete(i.ItemMap, itemId)
		delete(player.GameObjectGuidMap, itemInfo.Guid)
	}
}
