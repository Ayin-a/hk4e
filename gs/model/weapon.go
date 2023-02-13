package model

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/pkg/logger"
)

type Weapon struct {
	WeaponId    uint64   // 武器的唯一id
	ItemId      uint32   // 武器的道具id
	Level       uint8    // 等级
	Exp         uint32   // 当前经验值
	Promote     uint8    // 突破等阶
	Lock        bool     // 锁定状态
	AffixIdList []uint32 // 词缀
	Refinement  uint8    // 精炼等阶
	AvatarId    uint32   // 装备角色id
	Guid        uint64   `bson:"-" msgpack:"-"`
}

func (p *Player) InitWeapon(weapon *Weapon) {
	weapon.Guid = p.GetNextGameObjectGuid()
	p.GameObjectGuidMap[weapon.Guid] = GameObject(weapon)
	p.WeaponMap[weapon.WeaponId] = weapon
	if weapon.AvatarId != 0 {
		avatar := p.AvatarMap[weapon.AvatarId]
		avatar.EquipGuidMap[weapon.Guid] = weapon.Guid
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
	// 校验背包武器容量
	if len(p.WeaponMap) > constant.STORE_PACK_LIMIT_WEAPON {
		return
	}
	itemDataConfig := gdconf.GetItemDataById(int32(itemId))
	if itemDataConfig == nil {
		logger.Error("weapon config is nil, itemId: %v", itemId)
		return
	}
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
