package gdconf

import (
	"hk4e/pkg/logger"
)

// ChestDropData 宝箱掉落配置表
type ChestDropData struct {
	Level     int32  `csv:"最小等级"`
	DropTag   string `csv:"总索引"`
	DropId    int32  `csv:"掉落ID,omitempty"`
	DropCount int32  `csv:"掉落次数,omitempty"`
}

func (g *GameDataConfig) loadChestDropData() {
	g.ChestDropDataMap = make(map[string]map[int32]*ChestDropData)
	chestDropDataList := make([]*ChestDropData, 0)
	readTable[ChestDropData](g.txtPrefix+"ChestDropData.txt", &chestDropDataList)
	for _, chestDropData := range chestDropDataList {
		_, exist := g.ChestDropDataMap[chestDropData.DropTag]
		if !exist {
			g.ChestDropDataMap[chestDropData.DropTag] = make(map[int32]*ChestDropData)
		}
		g.ChestDropDataMap[chestDropData.DropTag][chestDropData.Level] = chestDropData
	}
	logger.Info("ChestDropData count: %v", len(g.ChestDropDataMap))
}

func GetChestDropDataByDropTagAndLevel(dropTag string, level int32) *ChestDropData {
	value, exist := CONF.ChestDropDataMap[dropTag]
	if !exist {
		return nil
	}
	return value[level]
}

func GetChestDropDataMap() map[string]map[int32]*ChestDropData {
	return CONF.ChestDropDataMap
}
