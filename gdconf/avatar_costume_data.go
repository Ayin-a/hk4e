package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// AvatarCostumeData 角色时装配置表
type AvatarCostumeData struct {
	CostumeID int32 `csv:"CostumeID"`        // 时装ID
	ItemID    int32 `csv:"ItemID,omitempty"` // 道具ID
}

func (g *GameDataConfig) loadAvatarCostumeData() {
	g.AvatarCostumeDataMap = make(map[int32]*AvatarCostumeData)
	data := g.readCsvFileData("AvatarCostumeData.csv")
	var avatarCostumeDataList []*AvatarCostumeData
	err := csvutil.Unmarshal(data, &avatarCostumeDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, avatarCostumeData := range avatarCostumeDataList {
		// 屏蔽默认时装
		if avatarCostumeData.ItemID == 0 {
			continue
		}
		// list -> map
		g.AvatarCostumeDataMap[avatarCostumeData.CostumeID] = avatarCostumeData
	}
	logger.Info("AvatarCostumeData count: %v", len(g.AvatarCostumeDataMap))
}

func GetAvatarCostumeDataById(costumeId int32) *AvatarCostumeData {
	return CONF.AvatarCostumeDataMap[costumeId]
}

func GetAvatarCostumeDataByItemId(itemId int32) *AvatarCostumeData {
	for _, data := range CONF.AvatarCostumeDataMap {
		if data.ItemID == itemId {
			return data
		}
	}
	return nil
}

func GetAvatarCostumeDataMap() map[int32]*AvatarCostumeData {
	return CONF.AvatarCostumeDataMap
}
