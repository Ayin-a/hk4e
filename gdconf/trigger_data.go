package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// TriggerData 场景LUA触发器配置表
type TriggerData struct {
	TriggerId   int32  `csv:"TriggerId"`             // ID
	SceneId     int32  `csv:"SceneId,omitempty"`     // 场景ID
	GroupId     int32  `csv:"GroupId,omitempty"`     // 组ID
	TriggerName string `csv:"TriggerName,omitempty"` // 触发器
}

func (g *GameDataConfig) loadTriggerData() {
	g.TriggerDataMap = make(map[int32]*TriggerData)
	data := g.readCsvFileData("TriggerData.csv")
	var triggerDataList []*TriggerData
	err := csvutil.Unmarshal(data, &triggerDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, triggerData := range triggerDataList {
		g.TriggerDataMap[triggerData.TriggerId] = triggerData
	}
	logger.Info("TriggerData count: %v", len(g.TriggerDataMap))
}

func GetTriggerDataById(triggerId int32) *TriggerData {
	return CONF.TriggerDataMap[triggerId]
}

func GetTriggerDataMap() map[int32]*TriggerData {
	return CONF.TriggerDataMap
}
