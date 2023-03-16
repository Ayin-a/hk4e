package gdconf

import (
	"hk4e/pkg/logger"
)

// ReliquaryAffixData 圣遗物追加属性配置表
type ReliquaryAffixData struct {
	AppendPropId      int32 `csv:"追加属性ID"`
	AppendPropDepotId int32 `csv:"追加属性库ID,omitempty"`
	PropType          int32 `csv:"属性类别,omitempty"`
	RandomWeight      int32 `csv:"随机权重,omitempty"`
}

func (g *GameDataConfig) loadReliquaryAffixData() {
	g.ReliquaryAffixDataMap = make(map[int32]map[int32]*ReliquaryAffixData)
	reliquaryAffixDataList := make([]*ReliquaryAffixData, 0)
	readTable[ReliquaryAffixData](g.tablePrefix+"ReliquaryAffixData.txt", &reliquaryAffixDataList)
	for _, reliquaryAffixData := range reliquaryAffixDataList {
		// 通过主属性库ID找到
		_, ok := g.ReliquaryAffixDataMap[reliquaryAffixData.AppendPropDepotId]
		if !ok {
			g.ReliquaryAffixDataMap[reliquaryAffixData.AppendPropDepotId] = make(map[int32]*ReliquaryAffixData)
		}
		// list -> map
		g.ReliquaryAffixDataMap[reliquaryAffixData.AppendPropDepotId][reliquaryAffixData.AppendPropId] = reliquaryAffixData
	}
	logger.Info("ReliquaryAffixData count: %v", len(g.ReliquaryAffixDataMap))
}

func GetReliquaryAffixDataByDepotIdAndPropId(appendPropDepotId int32, appendPropId int32) *ReliquaryAffixData {
	value, exist := CONF.ReliquaryAffixDataMap[appendPropDepotId]
	if !exist {
		return nil
	}
	return value[appendPropId]
}

func GetReliquaryAffixDataMap() map[int32]map[int32]*ReliquaryAffixData {
	return CONF.ReliquaryAffixDataMap
}
