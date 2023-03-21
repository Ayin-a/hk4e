package gdconf

import (
	"hk4e/pkg/logger"
)

// AvatarCostumeData 角色时装配置表
type AvatarCostumeData struct {
	CostumeID int32 `csv:"时装ID"`
	ItemID    int32 `csv:"道具ID,omitempty"`
}

func (g *GameDataConfig) loadAvatarCostumeData() {
	g.AvatarCostumeDataMap = make(map[int32]*AvatarCostumeData)
	avatarCostumeDataList := make([]*AvatarCostumeData, 0)
	readTable[AvatarCostumeData](g.txtPrefix+"AvatarCostumeData.txt", &avatarCostumeDataList)
	for _, avatarCostumeData := range avatarCostumeDataList {
		// 屏蔽默认时装
		if avatarCostumeData.ItemID == 0 {
			continue
		}
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
