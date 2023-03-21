package gdconf

import (
	"hk4e/pkg/logger"
)

// MonsterDropData 怪物掉落配置表
type MonsterDropData struct {
	Level     int32  `csv:"最小等级"`
	DropTag   string `csv:"总索引"`
	DropId    int32  `csv:"掉落ID,omitempty"`
	DropCount int32  `csv:"掉落次数,omitempty"`
}

func (g *GameDataConfig) loadMonsterDropData() {
	g.MonsterDropDataMap = make(map[string]map[int32]*MonsterDropData)
	monsterDropDataList := make([]*MonsterDropData, 0)
	readTable[MonsterDropData](g.txtPrefix+"MonsterDropData.txt", &monsterDropDataList)
	for _, monsterDropData := range monsterDropDataList {
		_, exist := g.MonsterDropDataMap[monsterDropData.DropTag]
		if !exist {
			g.MonsterDropDataMap[monsterDropData.DropTag] = make(map[int32]*MonsterDropData)
		}
		g.MonsterDropDataMap[monsterDropData.DropTag][monsterDropData.Level] = monsterDropData
	}
	logger.Info("MonsterDropData count: %v", len(g.MonsterDropDataMap))
}

func GetMonsterDropDataByDropTagAndLevel(dropTag string, level int32) *MonsterDropData {
	value, exist := CONF.MonsterDropDataMap[dropTag]
	if !exist {
		return nil
	}
	return value[level]
}

func GetMonsterDropDataMap() map[string]map[int32]*MonsterDropData {
	return CONF.MonsterDropDataMap
}
