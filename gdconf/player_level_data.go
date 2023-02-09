package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// PlayerLevelData 玩家等级配置表
type PlayerLevelData struct {
	Level int32 `csv:"Level"`         // 等级
	Exp   int32 `csv:"Exp,omitempty"` // 升到下一级所需经验
}

func (g *GameDataConfig) loadPlayerLevelData() {
	g.PlayerLevelDataMap = make(map[int32]*PlayerLevelData)
	data := g.readCsvFileData("PlayerLevelData.csv")
	var playerLevelDataList []*PlayerLevelData
	err := csvutil.Unmarshal(data, &playerLevelDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, playerLevelData := range playerLevelDataList {
		// list -> map
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
