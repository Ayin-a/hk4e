package constant

var EquipTypeConst *EquipType

type EquipType struct {
	EQUIP_NONE     uint16
	EQUIP_BRACER   uint16
	EQUIP_NECKLACE uint16
	EQUIP_SHOES    uint16
	EQUIP_RING     uint16
	EQUIP_DRESS    uint16
	EQUIP_WEAPON   uint16
	STRING_MAP     map[string]uint16
}

func InitEquipTypeConst() {
	EquipTypeConst = new(EquipType)

	EquipTypeConst.EQUIP_NONE = 0
	EquipTypeConst.EQUIP_BRACER = 1
	EquipTypeConst.EQUIP_NECKLACE = 2
	EquipTypeConst.EQUIP_SHOES = 3
	EquipTypeConst.EQUIP_RING = 4
	EquipTypeConst.EQUIP_DRESS = 5
	EquipTypeConst.EQUIP_WEAPON = 6

	EquipTypeConst.STRING_MAP = make(map[string]uint16)

	EquipTypeConst.STRING_MAP["EQUIP_NONE"] = 0
	EquipTypeConst.STRING_MAP["EQUIP_BRACER"] = 1
	EquipTypeConst.STRING_MAP["EQUIP_NECKLACE"] = 2
	EquipTypeConst.STRING_MAP["EQUIP_SHOES"] = 3
	EquipTypeConst.STRING_MAP["EQUIP_RING"] = 4
	EquipTypeConst.STRING_MAP["EQUIP_DRESS"] = 5
	EquipTypeConst.STRING_MAP["EQUIP_WEAPON"] = 6
}
