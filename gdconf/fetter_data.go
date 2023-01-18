package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

type FetterData struct {
	FetterId int32 `csv:"FetterId"` // ID
	AvatarId int32 `csv:"AvatarId"` // 角色ID
}

func (g *GameDataConfig) loadFetterData() {
	g.FetterDataMap = make(map[int32]*FetterData)
	g.FetterDataAvatarIdMap = make(map[int32][]int32)
	fileNameList := []string{"FettersData.csv", "FetterDataStory.csv", "FetterDataIformation.csv", "PhotographExpressionName.csv", "PhotographPoseName.csv"}
	for _, fileName := range fileNameList {
		data := g.readCsvFileData(fileName)
		var fetterDataList []*FetterData
		err := csvutil.Unmarshal(data, &fetterDataList)
		if err != nil {
			info := fmt.Sprintf("parse file error: %v", err)
			panic(info)
		}
		for _, fetterData := range fetterDataList {
			// list -> map
			g.FetterDataMap[fetterData.FetterId] = fetterData
			fetterIdList := g.FetterDataAvatarIdMap[fetterData.AvatarId]
			if fetterIdList == nil {
				fetterIdList = make([]int32, 0)
			}
			fetterIdList = append(fetterIdList, fetterData.FetterId)
			g.FetterDataAvatarIdMap[fetterData.AvatarId] = fetterIdList
		}
	}
	logger.Info("FetterData count: %v", len(g.FetterDataMap))
}
