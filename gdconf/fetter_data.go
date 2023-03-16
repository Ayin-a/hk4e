package gdconf

import (
	"hk4e/pkg/logger"
)

// FetterData 角色资料解锁配置表
type FetterData struct {
	FetterId int32 `csv:"ID"`
	AvatarId int32 `csv:"角色ID"`
}

func (g *GameDataConfig) loadFetterData() {
	g.FetterDataMap = make(map[int32]*FetterData)
	g.FetterDataAvatarIdMap = make(map[int32][]int32)
	fileNameList := []string{"FettersData.txt", "FetterDataStory.txt", "FetterDataIformation.txt", "PhotographExpressionName.txt", "PhotographPoseName.txt"}
	for _, fileName := range fileNameList {
		fetterDataList := make([]*FetterData, 0)
		readTable[FetterData](g.tablePrefix+fileName, &fetterDataList)
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

func GetFetterDataByFetterId(fetterId int32) *FetterData {
	return CONF.FetterDataMap[fetterId]
}

func GetFetterIdListByAvatarId(avatarId int32) []int32 {
	return CONF.FetterDataAvatarIdMap[avatarId]
}

func GetFetterDataMap() map[int32]*FetterData {
	return CONF.FetterDataMap
}
