package constant

var WeaponTypeConst *WeaponType

type WeaponType struct {
	WEAPON_NONE           int32
	WEAPON_SWORD_ONE_HAND int32 // 单手剑
	WEAPON_CROSSBOW       int32 // 弩
	WEAPON_STAFF          int32 // 权杖
	WEAPON_DOUBLE_DAGGER  int32 // 双刀
	WEAPON_KATANA         int32 // 武士刀
	WEAPON_SHURIKEN       int32 // 手里剑
	WEAPON_STICK          int32 // 棍
	WEAPON_SPEAR          int32 // 矛
	WEAPON_SHIELD_SMALL   int32 // 小盾牌
	WEAPON_CATALYST       int32 // 法器
	WEAPON_CLAYMORE       int32 // 双手剑
	WEAPON_BOW            int32 // 弓
	WEAPON_POLE           int32 // 长枪
}

func InitWeaponTypeConst() {
	WeaponTypeConst = new(WeaponType)

	WeaponTypeConst.WEAPON_NONE = 0
	WeaponTypeConst.WEAPON_SWORD_ONE_HAND = 1
	WeaponTypeConst.WEAPON_CROSSBOW = 2
	WeaponTypeConst.WEAPON_STAFF = 3
	WeaponTypeConst.WEAPON_DOUBLE_DAGGER = 4
	WeaponTypeConst.WEAPON_KATANA = 5
	WeaponTypeConst.WEAPON_SHURIKEN = 6
	WeaponTypeConst.WEAPON_STICK = 7
	WeaponTypeConst.WEAPON_SPEAR = 8
	WeaponTypeConst.WEAPON_SHIELD_SMALL = 9
	WeaponTypeConst.WEAPON_CATALYST = 10
	WeaponTypeConst.WEAPON_CLAYMORE = 11
	WeaponTypeConst.WEAPON_BOW = 12
	WeaponTypeConst.WEAPON_POLE = 13
}
