package model

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/pkg/logger"
)

type Reliquary struct {
	ReliquaryId      uint64   // 圣遗物的唯一id
	ItemId           uint32   // 圣遗物的道具id
	Level            uint8    // 等级
	Exp              uint32   // 当前经验值
	Promote          uint8    // 突破等阶
	Lock             bool     // 锁定状态
	AppendPropIdList []uint32 // 追加词条id
	MainPropId       uint32   // 主词条id
	AvatarId         uint32   // 装备角色id
	Guid             uint64   `bson:"-" msgpack:"-"`
}

func (p *Player) InitReliquary(reliquary *Reliquary) {
	// 获取圣遗物配置表
	reliquaryConfig := gdconf.GetItemDataById(int32(reliquary.ItemId))
	if reliquaryConfig == nil {
		logger.Error("reliquary config error, itemId: %v", reliquary.ItemId)
		return
	}
	reliquary.Guid = p.GetNextGameObjectGuid()
	p.GameObjectGuidMap[reliquary.Guid] = GameObject(reliquary)
	p.ReliquaryMap[reliquary.ReliquaryId] = reliquary
	if reliquary.AvatarId != 0 {
		avatar := p.AvatarMap[reliquary.AvatarId]
		avatar.EquipGuidMap[reliquary.Guid] = reliquary.Guid
		avatar.EquipReliquaryMap[uint8(reliquaryConfig.ReliquaryType)] = reliquary
	}
}

func (p *Player) InitAllReliquary() {
	for _, reliquary := range p.ReliquaryMap {
		p.InitReliquary(reliquary)
	}
}

func (p *Player) GetReliquaryGuid(reliquaryId uint64) uint64 {
	reliquaryInfo := p.ReliquaryMap[reliquaryId]
	if reliquaryInfo == nil {
		return 0
	}
	return reliquaryInfo.Guid
}

func (p *Player) GetReliquary(reliquaryId uint64) *Reliquary {
	return p.ReliquaryMap[reliquaryId]
}

func (p *Player) AddReliquary(itemId uint32, reliquaryId uint64, mainPropId uint32) {
	// 校验背包圣遗物容量
	if len(p.ReliquaryMap) > constant.STORE_PACK_LIMIT_RELIQUARY {
		return
	}
	itemDataConfig := gdconf.GetItemDataById(int32(itemId))
	if itemDataConfig == nil {
		logger.Error("reliquary config is nil, itemId: %v", itemId)
		return
	}
	reliquary := &Reliquary{
		ReliquaryId:      reliquaryId,
		ItemId:           itemId,
		Level:            1,
		Exp:              0,
		Promote:          0,
		Lock:             false,
		AppendPropIdList: make([]uint32, 0),
		MainPropId:       mainPropId,
		AvatarId:         0,
		Guid:             0,
	}
	p.InitReliquary(reliquary)
	p.ReliquaryMap[reliquaryId] = reliquary
}

func (p *Player) CostReliquary(reliquaryId uint64) uint64 {
	reliquary := p.ReliquaryMap[reliquaryId]
	if reliquary == nil {
		return 0
	}
	delete(p.ReliquaryMap, reliquaryId)
	delete(p.GameObjectGuidMap, reliquary.Guid)
	return reliquary.Guid
}
