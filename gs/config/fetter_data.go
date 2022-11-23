package config

import (
	"encoding/json"
	"hk4e/logger"
	"os"
)

type FetterData struct {
	AvatarId int32 `json:"avatarId"`
	FetterId int32 `json:"fetterId"`
}

func (g *GameDataConfig) loadFetterData() {
	g.FetterDataMap = make(map[int32]*FetterData)
	fileNameList := []string{"FetterInfoExcelConfigData.json", "FettersExcelConfigData.json", "FetterStoryExcelConfigData.json", "PhotographExpressionExcelConfigData.json", "PhotographPosenameExcelConfigData.json"}
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
			fetterData := new(FetterData)
			err = json.Unmarshal(i, fetterData)
			if err != nil {
				logger.LOG.Error("parse file error: %v", err)
				continue
			}
			g.FetterDataMap[fetterData.FetterId] = fetterData
		}
	}
	logger.LOG.Info("load %v FetterData", len(g.FetterDataMap))
	g.AvatarFetterDataMap = make(map[int32][]int32)
	for _, v := range g.FetterDataMap {
		avatarFetterIdList, exist := g.AvatarFetterDataMap[v.AvatarId]
		if !exist {
			avatarFetterIdList = make([]int32, 0)
		}
		avatarFetterIdList = append(avatarFetterIdList, v.FetterId)
		g.AvatarFetterDataMap[v.AvatarId] = avatarFetterIdList
	}
}
