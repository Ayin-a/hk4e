package config

import (
	"encoding/json"
	"os"

	"hk4e/common/constant"
	"hk4e/pkg/logger"
)

type GadgetData struct {
	Id              int32    `json:"id"`
	Type            string   `json:"type"`
	JsonName        string   `json:"jsonName"`
	IsInteractive   bool     `json:"isInteractive"`
	Tags            []string `json:"tags"`
	ItemJsonName    string   `json:"itemJsonName"`
	InteeIconName   string   `json:"inteeIconName"`
	NameTextMapHash int64    `json:"nameTextMapHash"`
	CampID          int32    `json:"campID"`
	LODPatternName  string   `json:"LODPatternName"`

	// 计算属性
	TypeX uint16 `json:"-"`
}

func (g *GameDataConfig) loadGadgetData() {
	g.GadgetDataMap = make(map[int32]*GadgetData)
	fileNameList := []string{"GadgetExcelConfigData.json"}
	for _, fileName := range fileNameList {
		fileData, err := os.ReadFile(g.excelBinPrefix + fileName)
		if err != nil {
			logger.Error("open file error: %v", err)
			continue
		}
		list := make([]map[string]any, 0)
		err = json.Unmarshal(fileData, &list)
		if err != nil {
			logger.Error("parse file error: %v", err)
			continue
		}
		for _, v := range list {
			i, err := json.Marshal(v)
			if err != nil {
				logger.Error("parse file error: %v", err)
				continue
			}
			gadgetData := new(GadgetData)
			err = json.Unmarshal(i, gadgetData)
			if err != nil {
				logger.Error("parse file error: %v", err)
				continue
			}
			g.GadgetDataMap[gadgetData.Id] = gadgetData
		}
	}
	logger.Info("load %v GadgetData", len(g.GadgetDataMap))
	for _, v := range g.GadgetDataMap {
		v.TypeX = constant.EntityTypeConst.STRING_MAP[v.Type]
	}
}
