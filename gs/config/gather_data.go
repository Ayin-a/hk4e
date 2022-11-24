package config

import (
	"encoding/json"
	"os"

	"hk4e/pkg/logger"
)

type GatherData struct {
	Id                  int32 `json:"id"`
	PointType           int32 `json:"pointType"`
	GadgetId            int32 `json:"gadgetId"`
	ItemId              int32 `json:"itemId"`
	Cd                  int32 `json:"cd"`
	IsForbidGuest       bool  `json:"isForbidGuest"`
	InitDisableInteract bool  `json:"initDisableInteract"`
}

func (g *GameDataConfig) loadGatherData() {
	g.GatherDataMap = make(map[int32]*GatherData)
	fileNameList := []string{"GatherExcelConfigData.json"}
	for _, fileName := range fileNameList {
		fileData, err := os.ReadFile(g.excelBinPrefix + fileName)
		if err != nil {
			logger.LOG.Error("open file error: %v", err)
			continue
		}
		list := make([]map[string]any, 0)
		err = json.Unmarshal(fileData, &list)
		if err != nil {
			logger.LOG.Error("parse file error: %v", err)
			continue
		}
		for _, v := range list {
			i, err := json.Marshal(v)
			if err != nil {
				logger.LOG.Error("parse file error: %v", err)
				continue
			}
			gatherData := new(GatherData)
			err = json.Unmarshal(i, gatherData)
			if err != nil {
				logger.LOG.Error("parse file error: %v", err)
				continue
			}
			g.GatherDataMap[gatherData.Id] = gatherData
		}
	}
	logger.LOG.Info("load %v GatherData", len(g.GatherDataMap))
}
