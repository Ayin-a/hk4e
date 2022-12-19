package gdconf

import (
	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
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
		data := g.readCsvFileData("ext/" + fileName)
		var dropList []*Drop
		err := csvutil.Unmarshal(data, &dropList)
		if err != nil {
			logger.Error("parse file error: %v", err)
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
	logger.Info("load %v DropGroupData", len(g.DropGroupDataMap))
}
