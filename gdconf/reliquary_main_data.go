package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
	"github.com/mroth/weightedrand"
)

// ReliquaryMainData 圣遗物主属性配置表
type ReliquaryMainData struct {
	MainPropId      int32 `csv:"MainPropId"`                // 主属性ID
	MainPropDepotId int32 `csv:"MainPropDepotId,omitempty"` // 主属性库ID
	PropType        int32 `csv:"PropType,omitempty"`        // 属性类别
	Weight          int32 `csv:"Weight,omitempty"`          // 随机权重
}

func (g *GameDataConfig) loadReliquaryMainData() {
	g.ReliquaryMainDataMap = make(map[int32]map[int32]*ReliquaryMainData)
	data := g.readCsvFileData("ReliquaryMainData.csv")
	var reliquaryMainDataList []*ReliquaryMainData
	err := csvutil.Unmarshal(data, &reliquaryMainDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, reliquaryMainData := range reliquaryMainDataList {
		// 通过主属性库ID找到
		_, ok := g.ReliquaryMainDataMap[reliquaryMainData.MainPropDepotId]
		if !ok {
			g.ReliquaryMainDataMap[reliquaryMainData.MainPropDepotId] = make(map[int32]*ReliquaryMainData)
		}
		// list -> map
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

func GetReliquaryMainDataRandomByDepotId(mainPropDepotId int32) *ReliquaryMainData {
	mainPropMap, exist := CONF.ReliquaryMainDataMap[mainPropDepotId]
	if !exist {
		return nil
	}
	choices := make([]weightedrand.Choice, 0, len(mainPropMap))
	for _, data := range mainPropMap {
		choices = append(choices, weightedrand.NewChoice(data, uint(data.Weight)))
	}
	chooser, err := weightedrand.NewChooser(choices...)
	if err != nil {
		logger.Error("reliquary main error: %v", err)
		return nil
	}
	result := chooser.Pick()
	return result.(*ReliquaryMainData)
}

func GetReliquaryMainDataMap() map[int32]map[int32]*ReliquaryMainData {
	return CONF.ReliquaryMainDataMap
}
