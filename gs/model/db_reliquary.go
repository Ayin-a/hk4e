package model

import (
	"hk4e/gdconf"
	"hk4e/pkg/logger"
)

type DbReliquary struct {
	ReliquaryMap map[uint64]*Reliquary // 圣遗物背包
}

func (p *Player) GetDbReliquary() *DbReliquary {
	if p.DbReliquary == nil {
		p.DbReliquary = &DbReliquary{
			ReliquaryMap: make(map[uint64]*Reliquary),
		}
	}
	return p.DbReliquary
}

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

func (r *DbReliquary) GetReliquaryMapLen() int {
	return len(r.ReliquaryMap)
}

func (r *DbReliquary) InitAllReliquary(player *Player) {
	for _, reliquary := range r.ReliquaryMap {
		r.InitReliquary(player, reliquary)
	}
}

func (r *DbReliquary) InitReliquary(player *Player, reliquary *Reliquary) {
	// 获取圣遗物配置表
	reliquaryConfig := gdconf.GetItemDataById(int32(reliquary.ItemId))
	if reliquaryConfig == nil {
		logger.Error("reliquary config error, itemId: %v", reliquary.ItemId)
		return
	}
	reliquary.Guid = player.GetNextGameObjectGuid()
	player.GameObjectGuidMap[reliquary.Guid] = GameObject(reliquary)
	r.ReliquaryMap[reliquary.ReliquaryId] = reliquary
	if reliquary.AvatarId != 0 {
		dbAvatar := player.GetDbAvatar()
		avatar := dbAvatar.AvatarMap[reliquary.AvatarId]
		avatar.EquipGuidMap[reliquary.Guid] = reliquary.Guid
		avatar.EquipReliquaryMap[uint8(reliquaryConfig.ReliquaryType)] = reliquary
	}
}

func (r *DbReliquary) GetReliquaryGuid(reliquaryId uint64) uint64 {
	reliquaryInfo := r.ReliquaryMap[reliquaryId]
	if reliquaryInfo == nil {
		return 0
	}
	return reliquaryInfo.Guid
}

func (r *DbReliquary) GetReliquary(reliquaryId uint64) *Reliquary {
	return r.ReliquaryMap[reliquaryId]
}

func (r *DbReliquary) AddReliquary(player *Player, itemId uint32, reliquaryId uint64, mainPropId uint32) {
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
	r.InitReliquary(player, reliquary)
	r.ReliquaryMap[reliquaryId] = reliquary
}

func (r *DbReliquary) CostReliquary(player *Player, reliquaryId uint64) uint64 {
	reliquary := r.ReliquaryMap[reliquaryId]
	if reliquary == nil {
		return 0
	}
	delete(r.ReliquaryMap, reliquaryId)
	delete(player.GameObjectGuidMap, reliquary.Guid)
	return reliquary.Guid
}
