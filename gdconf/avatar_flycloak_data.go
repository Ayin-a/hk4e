package gdconf

import (
	"hk4e/pkg/logger"
)

// AvatarFlycloakData 角色风之翼配置表
type AvatarFlycloakData struct {
	FlycloakID int32 `csv:"风之翼ID"`
	ItemID     int32 `csv:"道具ID,omitempty"`
}

func (g *GameDataConfig) loadAvatarFlycloakData() {
	g.AvatarFlycloakDataMap = make(map[int32]*AvatarFlycloakData)
	avatarFlycloakDataList := make([]*AvatarFlycloakData, 0)
	readTable[AvatarFlycloakData](g.tablePrefix+"AvatarFlycloakData.txt", &avatarFlycloakDataList)
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
