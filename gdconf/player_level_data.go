package gdconf

import (
	"hk4e/pkg/logger"
)

// PlayerLevelData 玩家等级配置表
type PlayerLevelData struct {
	Level int32 `csv:"等级"`
	Exp   int32 `csv:"升到下一级所需经验,omitempty"`
}

func (g *GameDataConfig) loadPlayerLevelData() {
	g.PlayerLevelDataMap = make(map[int32]*PlayerLevelData)
	playerLevelDataList := make([]*PlayerLevelData, 0)
	readTable[PlayerLevelData](g.txtPrefix+"PlayerLevelData.txt", &playerLevelDataList)
	for _, playerLevelData := range playerLevelDataList {
		g.PlayerLevelDataMap[playerLevelData.Level] = playerLevelData
	}
	logger.Info("PlayerLevelData count: %v", len(g.PlayerLevelDataMap))
}

func GetPlayerLevelDataById(level int32) *PlayerLevelData {
	return CONF.PlayerLevelDataMap[level]
}

func GetPlayerLevelDataMap() map[int32]*PlayerLevelData {
	return CONF.PlayerLevelDataMap
}
