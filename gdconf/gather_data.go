package gdconf

import (
	"hk4e/pkg/logger"
)

// GatherData 采集物配置表
type GatherData struct {
	PointType int32 `csv:"挂节点类型"`
	GatherId  int32 `csv:"ID"`
	GadgetId  int32 `csv:"采集物ID,omitempty"`
	ItemId    int32 `csv:"获得物品ID,omitempty"`
}

func (g *GameDataConfig) loadGatherData() {
	g.GatherDataMap = make(map[int32]*GatherData)
	gatherDataList := make([]*GatherData, 0)
	readTable[GatherData](g.txtPrefix+"GatherData.txt", &gatherDataList)
	g.GatherDataPointTypeMap = make(map[int32]*GatherData)
	for _, gatherData := range gatherDataList {
		g.GatherDataMap[gatherData.GatherId] = gatherData
		g.GatherDataPointTypeMap[gatherData.PointType] = gatherData
	}
	logger.Info("GatherData count: %v", len(g.GatherDataMap))
}

func GetGatherDataById(gatherId int32) *GatherData {
	return CONF.GatherDataMap[gatherId]
}

func GetGatherDataByPointType(pointType int32) *GatherData {
	return CONF.GatherDataPointTypeMap[pointType]
}

func GetGatherDataMap() map[int32]*GatherData {
	return CONF.GatherDataMap
}
