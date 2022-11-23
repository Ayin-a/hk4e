package constant

var FetterStateConst *FetterState

type FetterState struct {
	NONE     uint16
	NOT_OPEN uint16
	OPEN     uint16
	FINISH   uint16
}

func InitFetterStateConst() {
	FetterStateConst = new(FetterState)

	FetterStateConst.NONE = 0
	FetterStateConst.NOT_OPEN = 1
	FetterStateConst.OPEN = 1
	FetterStateConst.FINISH = 3
}
