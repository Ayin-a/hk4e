package model

import (
	"hk4e/gdconf"
	"hk4e/pkg/logger"
)

type Weapon struct {
	WeaponId    uint64   `bson:"weaponId"`    // 武器的唯一id
	ItemId      uint32   `bson:"itemId"`      // 武器的道具id
	Level       uint8    `bson:"level"`       // 等级
	Exp         uint32   `bson:"exp"`         // 当前经验值
	Promote     uint8    `bson:"promote"`     // 突破等阶
	Lock        bool     `bson:"lock"`        // 锁定状态
	AffixIdList []uint32 `bson:"affixIdList"` // 词缀
	Refinement  uint8    `bson:"refinement"`  // 精炼等阶
	AvatarId    uint32   `bson:"avatarId"`    // 装备角色id
	Guid        uint64   `bson:"-"`
}

func (p *Player) InitWeapon(weapon *Weapon) {
	weapon.Guid = p.GetNextGameObjectGuid()
	p.GameObjectGuidMap[weapon.Guid] = GameObject(weapon)
	p.WeaponMap[weapon.WeaponId] = weapon
	if weapon.AvatarId != 0 {
		avatar := p.AvatarMap[weapon.AvatarId]
		avatar.EquipGuidList[weapon.Guid] = weapon.Guid
		avatar.EquipWeapon = weapon
	}
}

func (p *Player) InitAllWeapon() {
	for _, weapon := range p.WeaponMap {
		p.InitWeapon(weapon)
	}
}

func (p *Player) GetWeaponGuid(weaponId uint64) uint64 {
	weaponInfo := p.WeaponMap[weaponId]
	if weaponInfo == nil {
		return 0
	}
	return weaponInfo.Guid
}

func (p *Player) GetWeaponIdByGuid(guid uint64) uint64 {
	for weaponId, weapon := range p.WeaponMap {
		if guid == weapon.Guid {
			return weaponId
		}
	}
	return 0
}

func (p *Player) GetWeapon(weaponId uint64) *Weapon {
	return p.WeaponMap[weaponId]
}

func (p *Player) AddWeapon(itemId uint32, weaponId uint64) {
	weapon := &Weapon{
		WeaponId:    weaponId,
		ItemId:      itemId,
		Level:       1,
		Exp:         0,
		Promote:     0,
		Lock:        false,
		AffixIdList: make([]uint32, 0),
		Refinement:  0,
		Guid:        0,
	}
	itemDataConfig, exist := gdconf.CONF.ItemDataMap[int32(itemId)]
	if !exist {
		logger.Error("weapon config is nil, itemId: %v", itemId)
		return
	}
	for _, skillAffix := range itemDataConfig.SkillAffix {
		weapon.AffixIdList = append(weapon.AffixIdList, uint32(skillAffix))
	}
	p.InitWeapon(weapon)
	p.WeaponMap[weaponId] = weapon
}

func (p *Player) CostWeapon(weaponId uint64) uint64 {
	weapon := p.WeaponMap[weaponId]
	if weapon == nil {
		return 0
	}
	delete(p.WeaponMap, weaponId)
	return weapon.Guid
}
