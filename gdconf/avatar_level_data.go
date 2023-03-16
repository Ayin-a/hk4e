package gdconf

import (
	"hk4e/pkg/logger"
)

// AvatarLevelData 角色等级配置表
type AvatarLevelData struct {
	Level int32 `csv:"等级"`
	Exp   int32 `csv:"升到下一级所需经验,omitempty"`
}

func (g *GameDataConfig) loadAvatarLevelData() {
	g.AvatarLevelDataMap = make(map[int32]*AvatarLevelData)
	avatarLevelDataList := make([]*AvatarLevelData, 0)
	readTable[AvatarLevelData](g.tablePrefix+"AvatarLevelData.txt", &avatarLevelDataList)
	for _, avatarLevelData := range avatarLevelDataList {
		// list -> map
		g.AvatarLevelDataMap[avatarLevelData.Level] = avatarLevelData
	}
	logger.Info("AvatarLevelData count: %v", len(g.AvatarLevelDataMap))
}

func GetAvatarLevelDataByLevel(level int32) *AvatarLevelData {
	return CONF.AvatarLevelDataMap[level]
}

func GetAvatarLevelDataMap() map[int32]*AvatarLevelData {
	return CONF.AvatarLevelDataMap
}
