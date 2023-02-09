package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// WorldAreaData 世界区域配置表
type WorldAreaData struct {
	WorldAreaId int32 `csv:"WorldAreaId"`       // 条目ID
	SceneId     int32 `csv:"SceneId,omitempty"` // 场景ID
	AreaId1     int32 `csv:"AreaId1,omitempty"` // 一级区域ID
	AreaId2     int32 `csv:"AreaId2,omitempty"` // 二级区域ID
}

func (g *GameDataConfig) loadWorldAreaData() {
	g.WorldAreaDataMap = make(map[int32]*WorldAreaData)
	data := g.readCsvFileData("WorldAreaData.csv")
	var worldAreaDataList []*WorldAreaData
	err := csvutil.Unmarshal(data, &worldAreaDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, worldAreaData := range worldAreaDataList {
		// list -> map
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
