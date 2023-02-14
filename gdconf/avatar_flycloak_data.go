package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// AvatarFlycloakData 角色风之翼配置表
type AvatarFlycloakData struct {
	FlycloakID int32 `csv:"FlycloakID"`       // 风之翼ID
	ItemID     int32 `csv:"ItemID,omitempty"` // 道具ID
}

func (g *GameDataConfig) loadAvatarFlycloakData() {
	g.AvatarFlycloakDataMap = make(map[int32]*AvatarFlycloakData)
	data := g.readCsvFileData("AvatarFlycloakData.csv")
	var avatarFlycloakDataList []*AvatarFlycloakData
	err := csvutil.Unmarshal(data, &avatarFlycloakDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, avatarFlycloakData := range avatarFlycloakDataList {
		// list -> map
		g.AvatarFlycloakDataMap[avatarFlycloakData.FlycloakID] = avatarFlycloakData
	}
	logger.Info("AvatarFlycloakData count: %v", len(g.AvatarFlycloakDataMap))
}

func GetAvatarFlycloakDataById(flycloakId int32) *AvatarFlycloakData {
	return CONF.AvatarFlycloakDataMap[flycloakId]
}

func GetAvatarFlycloakDataByItemId(itemId int32) *AvatarFlycloakData {
	for _, data := range CONF.AvatarFlycloakDataMap {
		if data.ItemID == itemId {
			return data
		}
	}
	return nil
}

func GetAvatarFlycloakDataMap() map[int32]*AvatarFlycloakData {
	return CONF.AvatarFlycloakDataMap
}
