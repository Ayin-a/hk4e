package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// ReliquaryAffixData 圣遗物追加属性配置表
type ReliquaryAffixData struct {
	AppendPropId      int32 `csv:"AppendPropId"`                // 追加属性ID
	AppendPropDepotId int32 `csv:"AppendPropDepotId,omitempty"` // 追加属性库ID
	PropType          int32 `csv:"PropType,omitempty"`          // 属性类别
	RandomWeight      int32 `csv:"RandomWeight,omitempty"`      // 随机权重
}

func (g *GameDataConfig) loadReliquaryAffixData() {
	g.ReliquaryAffixDataMap = make(map[int32]map[int32]*ReliquaryAffixData)
	data := g.readCsvFileData("ReliquaryAffixData.csv")
	var reliquaryAffixDataList []*ReliquaryAffixData
	err := csvutil.Unmarshal(data, &reliquaryAffixDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
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
