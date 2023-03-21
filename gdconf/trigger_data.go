package gdconf

import (
	"hk4e/pkg/logger"
)

// TriggerData 场景LUA触发器配置表
type TriggerData struct {
	TriggerId   int32  `csv:"ID"`
	SceneId     int32  `csv:"场景ID,omitempty"`
	GroupId     int32  `csv:"组ID,omitempty"`
	TriggerName string `csv:"触发器,omitempty"`
}

func (g *GameDataConfig) loadTriggerData() {
	g.TriggerDataMap = make(map[int32]*TriggerData)
	triggerDataList := make([]*TriggerData, 0)
	readTable[TriggerData](g.txtPrefix+"TriggerData.txt", &triggerDataList)
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
