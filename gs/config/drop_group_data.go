package config

import (
	"github.com/jszwec/csvutil"
	"hk4e/logger"
	"os"
	"strings"
)

type Drop struct {
	DropId int32 `csv:"DropId"`
	Weight int32 `csv:"Weight"`
	Result int32 `csv:"Result"`
	IsEnd  bool  `csv:"IsEnd"`
}

type DropGroupData struct {
	DropId     int32
	WeightAll  int32
	DropConfig []*Drop
}

func (g *GameDataConfig) loadDropGroupData() {
	g.DropGroupDataMap = make(map[int32]*DropGroupData)
	fileNameList := []string{"DropGachaAvatarUp.csv", "DropGachaWeaponUp.csv", "DropGachaNormal.csv"}
	for _, fileName := range fileNameList {
		fileData, err := os.ReadFile(g.csvPrefix + fileName)
		if err != nil {
			logger.LOG.Error("open file error: %v", err)
			return
		}
		// 去除第二三行的内容变成标准格式的csv
		index1 := strings.Index(string(fileData), "\n")
		index2 := strings.Index(string(fileData[(index1+1):]), "\n")
		index3 := strings.Index(string(fileData[(index2+1)+(index1+1):]), "\n")
		standardCsvData := make([]byte, 0)
		standardCsvData = append(standardCsvData, fileData[:index1]...)
		standardCsvData = append(standardCsvData, fileData[index3+(index2+1)+(index1+1):]...)
		var dropList []*Drop
		err = csvutil.Unmarshal(standardCsvData, &dropList)
		if err != nil {
			logger.LOG.Error("parse file error: %v", err)
			return
		}
		for _, drop := range dropList {
			dropGroupData, exist := g.DropGroupDataMap[drop.DropId]
			if !exist {
				dropGroupData = new(DropGroupData)
				dropGroupData.DropId = drop.DropId
				dropGroupData.WeightAll = 0
				dropGroupData.DropConfig = make([]*Drop, 0)
				g.DropGroupDataMap[drop.DropId] = dropGroupData
			}
			dropGroupData.WeightAll += drop.Weight
			dropGroupData.DropConfig = append(dropGroupData.DropConfig, drop)
		}
	}
	logger.LOG.Info("load %v DropGroupData", len(g.DropGroupDataMap))
}
