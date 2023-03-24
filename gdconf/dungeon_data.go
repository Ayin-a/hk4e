package gdconf

import (
	"hk4e/pkg/logger"
)

// DungeonData 地牢配置表
type DungeonData struct {
	DungeonId int32 `csv:"ID"`
	SceneId   int32 `csv:"场景ID,omitempty"`
}

func (g *GameDataConfig) loadDungeonData() {
	g.DungeonDataMap = make(map[int32]*DungeonData)
	dungeonDataList := make([]*DungeonData, 0)
	readTable[DungeonData](g.txtPrefix+"DungeonData.txt", &dungeonDataList)
	for _, dungeonData := range dungeonDataList {
		g.DungeonDataMap[dungeonData.DungeonId] = dungeonData
	}
	logger.Info("DungeonData count: %v", len(g.DungeonDataMap))
}

func GetDungeonDataById(dungeonId int32) *DungeonData {
	return CONF.DungeonDataMap[dungeonId]
}

func GetDungeonDataMap() map[int32]*DungeonData {
	return CONF.DungeonDataMap
}
