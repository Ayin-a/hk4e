package gdconf

import (
	"hk4e/pkg/logger"
)

// 当初写卡池算法的时候临时建立的表 以后再做迁移吧

type GachaDrop struct {
	DropId int32 `csv:"DropId"`
	Weight int32 `csv:"Weight"`
	Result int32 `csv:"Result"`
	IsEnd  bool  `csv:"IsEnd"`
}

type GachaDropGroupData struct {
	DropId     int32
	WeightAll  int32
	DropConfig []*GachaDrop
}

func (g *GameDataConfig) loadGachaDropGroupData() {
	g.GachaDropGroupDataMap = make(map[int32]*GachaDropGroupData)
	fileNameList := []string{"GachaDropAvatarUp.csv", "GachaDropWeaponUp.csv", "GachaDropNormal.csv"}
	for _, fileName := range fileNameList {
		gachaDropList := make([]*GachaDrop, 0)
		readExtCsv[GachaDrop](g.extPrefix+fileName, &gachaDropList)
		for _, gachaDrop := range gachaDropList {
			gachaDropGroupData, exist := g.GachaDropGroupDataMap[gachaDrop.DropId]
			if !exist {
				gachaDropGroupData = new(GachaDropGroupData)
				gachaDropGroupData.DropId = gachaDrop.DropId
				gachaDropGroupData.WeightAll = 0
				gachaDropGroupData.DropConfig = make([]*GachaDrop, 0)
				g.GachaDropGroupDataMap[gachaDrop.DropId] = gachaDropGroupData
			}
			gachaDropGroupData.WeightAll += gachaDrop.Weight
			gachaDropGroupData.DropConfig = append(gachaDropGroupData.DropConfig, gachaDrop)
		}
	}
	logger.Info("GachaDropGroupData count: %v", len(g.GachaDropGroupDataMap))
}

func GetGachaDropGroupDataByDropId(dropId int32) *GachaDropGroupData {
	return CONF.GachaDropGroupDataMap[dropId]
}
