package gdconf

import (
	"hk4e/pkg/logger"
)

// ReliquaryMainData 圣遗物主属性配置表
type ReliquaryMainData struct {
	MainPropId      int32 `csv:"主属性ID"`
	MainPropDepotId int32 `csv:"主属性库ID,omitempty"`
	PropType        int32 `csv:"属性类别,omitempty"`
	RandomWeight    int32 `csv:"随机权重,omitempty"`
}

func (g *GameDataConfig) loadReliquaryMainData() {
	g.ReliquaryMainDataMap = make(map[int32]map[int32]*ReliquaryMainData)
	reliquaryMainDataList := make([]*ReliquaryMainData, 0)
	readTable[ReliquaryMainData](g.txtPrefix+"ReliquaryMainData.txt", &reliquaryMainDataList)
	for _, reliquaryMainData := range reliquaryMainDataList {
		// 通过主属性库ID找到
		_, ok := g.ReliquaryMainDataMap[reliquaryMainData.MainPropDepotId]
		if !ok {
			g.ReliquaryMainDataMap[reliquaryMainData.MainPropDepotId] = make(map[int32]*ReliquaryMainData)
		}
		g.ReliquaryMainDataMap[reliquaryMainData.MainPropDepotId][reliquaryMainData.MainPropId] = reliquaryMainData
	}
	logger.Info("ReliquaryMainData count: %v", len(g.ReliquaryMainDataMap))
}

func GetReliquaryMainDataByDepotIdAndPropId(mainPropDepotId int32, mainPropId int32) *ReliquaryMainData {
	value, exist := CONF.ReliquaryMainDataMap[mainPropDepotId]
	if !exist {
		return nil
	}
	return value[mainPropId]
}

func GetReliquaryMainDataMap() map[int32]map[int32]*ReliquaryMainData {
	return CONF.ReliquaryMainDataMap
}
