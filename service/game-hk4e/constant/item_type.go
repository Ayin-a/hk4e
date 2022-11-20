package constant

var ItemTypeConst *ItemType

type ItemType struct {
	ITEM_NONE      uint16
	ITEM_VIRTUAL   uint16
	ITEM_MATERIAL  uint16
	ITEM_RELIQUARY uint16
	ITEM_WEAPON    uint16
	ITEM_DISPLAY   uint16
	ITEM_FURNITURE uint16
	STRING_MAP     map[string]uint16
}

func InitItemTypeConst() {
	ItemTypeConst = new(ItemType)

	ItemTypeConst.ITEM_NONE = 0
	ItemTypeConst.ITEM_VIRTUAL = 1
	ItemTypeConst.ITEM_MATERIAL = 2
	ItemTypeConst.ITEM_RELIQUARY = 3
	ItemTypeConst.ITEM_WEAPON = 4
	ItemTypeConst.ITEM_DISPLAY = 5
	ItemTypeConst.ITEM_FURNITURE = 6

	ItemTypeConst.STRING_MAP = make(map[string]uint16)

	ItemTypeConst.STRING_MAP["ITEM_NONE"] = 0
	ItemTypeConst.STRING_MAP["ITEM_VIRTUAL"] = 1
	ItemTypeConst.STRING_MAP["ITEM_MATERIAL"] = 2
	ItemTypeConst.STRING_MAP["ITEM_RELIQUARY"] = 3
	ItemTypeConst.STRING_MAP["ITEM_WEAPON"] = 4
	ItemTypeConst.STRING_MAP["ITEM_DISPLAY"] = 5
	ItemTypeConst.STRING_MAP["ITEM_FURNITURE"] = 6
}
