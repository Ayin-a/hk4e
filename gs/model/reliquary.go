package model

import (
	"hk4e/gdconf"
	"hk4e/pkg/logger"
)

type Reliquary struct {
	ReliquaryId uint64   // 圣遗物的唯一id
	ItemId      uint32   // 圣遗物的道具id
	Level       uint8    // 等级
	Exp         uint32   // 当前经验值
	Promote     uint8    // 突破等阶
	Lock        bool     // 锁定状态
	AffixIdList []uint32 // 词缀
	MainPropId  uint32   // 主词条id
	AvatarId    uint32   // 装备角色id
	Guid        uint64   `bson:"-" msgpack:"-"`
}

func (p *Player) InitReliquary(reliquary *Reliquary) {
	reliquary.Guid = p.GetNextGameObjectGuid()
	p.GameObjectGuidMap[reliquary.Guid] = GameObject(reliquary)
	p.ReliquaryMap[reliquary.ReliquaryId] = reliquary
	if reliquary.AvatarId != 0 {
		avatar := p.AvatarMap[reliquary.AvatarId]
		avatar.EquipGuidMap[reliquary.Guid] = reliquary.Guid
		avatar.EquipReliquaryList = append(avatar.EquipReliquaryList, reliquary)
	}
}

func (p *Player) InitAllReliquary() {
	for _, reliquary := range p.ReliquaryMap {
		p.InitReliquary(reliquary)
	}
}

func (p *Player) AddReliquary(itemId uint32, reliquaryId uint64, mainPropId uint32) {
	reliquary := &Reliquary{
		ReliquaryId: reliquaryId,
		ItemId:      itemId,
		Level:       1,
		Exp:         0,
		Promote:     0,
		Lock:        false,
		AffixIdList: make([]uint32, 0),
		MainPropId:  mainPropId,
		AvatarId:    0,
		Guid:        0,
	}
	itemDataConfig := gdconf.GetItemDataById(int32(itemId))
	if itemDataConfig == nil {
		logger.Error("reliquary config is nil, itemId: %v", itemId)
		return
	}
	_ = itemDataConfig
	p.InitReliquary(reliquary)
	p.ReliquaryMap[reliquaryId] = reliquary
}
