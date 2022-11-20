package model

type Reliquary struct {
	ReliquaryId uint64   `bson:"reliquaryId"` // 圣遗物的唯一id
	ItemId      uint32   `bson:"itemId"`      // 圣遗物的道具id
	Level       uint8    `bson:"level"`       // 等级
	Exp         uint32   `bson:"exp"`         // 当前经验值
	TotalExp    uint32   `bson:"totalExp"`    // 升级所需总经验值
	Promote     uint8    `bson:"promote"`     // 突破等阶
	Lock        bool     `bson:"lock"`        // 锁定状态
	AffixIdList []uint32 `bson:"affixIdList"` // 词缀
	Refinement  uint8    `bson:"refinement"`  // 精炼等阶
	MainPropId  uint32   `bson:"mainPropId"`  // 主词条id
	AvatarId    uint32   `bson:"avatarId"`    // 装备角色id
	Guid        uint64   `bson:"-"`
}
