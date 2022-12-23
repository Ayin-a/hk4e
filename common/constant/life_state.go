package constant

var LifeStateConst *LifeState

type LifeState struct {
	LIFE_NONE   uint16
	LIFE_ALIVE  uint16
	LIFE_DEAD   uint16
	LIFE_REVIVE uint16
}

func InitLifeStateConst() {
	LifeStateConst = new(LifeState)

	LifeStateConst.LIFE_NONE = 0
	LifeStateConst.LIFE_ALIVE = 1
	LifeStateConst.LIFE_DEAD = 2
	LifeStateConst.LIFE_REVIVE = 3
}
