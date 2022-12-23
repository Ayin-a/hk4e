package constant

var EntityIdTypeConst *EntityIdType

type EntityIdType struct {
	AVATAR  uint16
	MONSTER uint16
	NPC     uint16
	GADGET  uint16
	WEAPON  uint16
	TEAM    uint16
	MPLEVEL uint16
}

func InitEntityIdTypeConst() {
	EntityIdTypeConst = new(EntityIdType)

	EntityIdTypeConst.AVATAR = 0x01
	EntityIdTypeConst.MONSTER = 0x02
	EntityIdTypeConst.NPC = 0x03
	EntityIdTypeConst.GADGET = 0x04
	EntityIdTypeConst.WEAPON = 0x06
	EntityIdTypeConst.TEAM = 0x09
	EntityIdTypeConst.MPLEVEL = 0x0b
}
