package model

type GachaPoolInfo struct {
	GachaType       uint32 `bson:"gachaType"`       // 卡池类型
	OrangeTimes     uint32 `bson:"orangeTimes"`     // 5星保底计数
	PurpleTimes     uint32 `bson:"purpleTimes"`     // 4星保底计数
	MustGetUpOrange bool   `bson:"mustGetUpOrange"` // 是否5星大保底
	MustGetUpPurple bool   `bson:"mustGetUpPurple"` // 是否4星大保底
}

type DropInfo struct {
	GachaPoolInfo map[uint32]*GachaPoolInfo `bson:"gachaPoolInfo"`
}

func NewDropInfo() (r *DropInfo) {
	r = new(DropInfo)
	r.GachaPoolInfo = make(map[uint32]*GachaPoolInfo)
	r.GachaPoolInfo[300] = &GachaPoolInfo{
		// 温迪
		GachaType:       300,
		OrangeTimes:     0,
		PurpleTimes:     0,
		MustGetUpOrange: false,
		MustGetUpPurple: false,
	}
	r.GachaPoolInfo[400] = &GachaPoolInfo{
		// 可莉
		GachaType:       400,
		OrangeTimes:     0,
		PurpleTimes:     0,
		MustGetUpOrange: false,
		MustGetUpPurple: false,
	}
	r.GachaPoolInfo[431] = &GachaPoolInfo{
		// 阿莫斯之弓&天空之傲
		GachaType:       431,
		OrangeTimes:     0,
		PurpleTimes:     0,
		MustGetUpOrange: false,
		MustGetUpPurple: false,
	}
	r.GachaPoolInfo[201] = &GachaPoolInfo{
		// 常驻
		GachaType:       201,
		OrangeTimes:     0,
		PurpleTimes:     0,
		MustGetUpOrange: false,
		MustGetUpPurple: false,
	}
	return r
}
