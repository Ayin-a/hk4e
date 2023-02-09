package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// AvatarLevelData 角色等级配置表
type AvatarLevelData struct {
	Level int32 `csv:"Level"`         // 等级
	Exp   int32 `csv:"Exp,omitempty"` // 升到下一级所需经验
}

func (g *GameDataConfig) loadAvatarLevelData() {
	g.AvatarLevelDataMap = make(map[int32]*AvatarLevelData)
	data := g.readCsvFileData("AvatarLevelData.csv")
	var avatarLevelDataList []*AvatarLevelData
	err := csvutil.Unmarshal(data, &avatarLevelDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
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
