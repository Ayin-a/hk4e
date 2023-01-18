package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

type GatherData struct {
	PointType int32 `csv:"PointType"` // 挂节点类型
	GatherId  int32 `csv:"GatherId"`  // ID
	GadgetId  int32 `csv:"GadgetId"`  // 采集物ID
	ItemId    int32 `csv:"ItemId"`    // 获得物品ID
}

func (g *GameDataConfig) loadGatherData() {
	g.GatherDataMap = make(map[int32]*GatherData)
	data := g.readCsvFileData("GatherData.csv")
	var gatherDataList []*GatherData
	err := csvutil.Unmarshal(data, &gatherDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	g.GatherDataPointTypeMap = make(map[int32]*GatherData)
	for _, gatherData := range gatherDataList {
		// list -> map
		g.GatherDataMap[gatherData.GatherId] = gatherData
		g.GatherDataPointTypeMap[gatherData.PointType] = gatherData
	}
	logger.Info("GatherData count: %v", len(g.GatherDataMap))
}
