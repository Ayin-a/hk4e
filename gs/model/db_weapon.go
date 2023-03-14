package model

import (
	"hk4e/gdconf"
	"hk4e/pkg/logger"
)

type DbWeapon struct {
	WeaponMap map[uint64]*Weapon // 武器背包
}

func (p *Player) GetDbWeapon() *DbWeapon {
	if p.DbWeapon == nil {
		p.DbWeapon = &DbWeapon{
			WeaponMap: make(map[uint64]*Weapon),
		}
	}
	return p.DbWeapon
}

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

func (w *DbWeapon) GetWeaponMapLen() int {
	return len(w.WeaponMap)
}

func (w *DbWeapon) InitAllWeapon(player *Player) {
	for _, weapon := range w.WeaponMap {
		w.InitWeapon(player, weapon)
	}
}

func (w *DbWeapon) InitWeapon(player *Player, weapon *Weapon) {
	weapon.Guid = player.GetNextGameObjectGuid()
	player.GameObjectGuidMap[weapon.Guid] = GameObject(weapon)
	w.WeaponMap[weapon.WeaponId] = weapon
	if weapon.AvatarId != 0 {
		dbAvatar := player.GetDbAvatar()
		avatar := dbAvatar.AvatarMap[weapon.AvatarId]
		avatar.EquipGuidMap[weapon.Guid] = weapon.Guid
		avatar.EquipWeapon = weapon
	}
}

func (w *DbWeapon) GetWeaponGuid(weaponId uint64) uint64 {
	weaponInfo := w.WeaponMap[weaponId]
	if weaponInfo == nil {
		return 0
	}
	return weaponInfo.Guid
}

func (w *DbWeapon) GetWeapon(weaponId uint64) *Weapon {
	return w.WeaponMap[weaponId]
}

func (w *DbWeapon) AddWeapon(player *Player, itemId uint32, weaponId uint64) {
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
	w.InitWeapon(player, weapon)
	w.WeaponMap[weaponId] = weapon
}

func (w *DbWeapon) CostWeapon(player *Player, weaponId uint64) uint64 {
	weapon := w.WeaponMap[weaponId]
	if weapon == nil {
		return 0
	}
	delete(w.WeaponMap, weaponId)
	delete(player.GameObjectGuidMap, weapon.Guid)
	return weapon.Guid
}
