package gdconf

import (
	"hk4e/pkg/logger"
)

// WorldAreaData 世界区域配置表
type WorldAreaData struct {
	WorldAreaId int32 `csv:"条目ID"`
	SceneId     int32 `csv:"场景ID,omitempty"`
	AreaId1     int32 `csv:"一级区域ID,omitempty"`
	AreaId2     int32 `csv:"二级区域ID,omitempty"`
}

func (g *GameDataConfig) loadWorldAreaData() {
	g.WorldAreaDataMap = make(map[int32]*WorldAreaData)
	worldAreaDataList := make([]*WorldAreaData, 0)
	readTable[WorldAreaData](g.txtPrefix+"WorldAreaData.txt", &worldAreaDataList)
	for _, worldAreaData := range worldAreaDataList {
		g.WorldAreaDataMap[worldAreaData.WorldAreaId] = worldAreaData
	}
	logger.Info("WorldAreaData count: %v", len(g.WorldAreaDataMap))
}

func GetWorldAreaDataById(worldAreaId int32) *WorldAreaData {
	return CONF.WorldAreaDataMap[worldAreaId]
}

func GetWorldAreaDataMap() map[int32]*WorldAreaData {
	return CONF.WorldAreaDataMap
}
