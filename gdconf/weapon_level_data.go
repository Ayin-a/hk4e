package gdconf

import (
	"hk4e/pkg/logger"
)

// WeaponLevelData 武器等级配置表
type WeaponLevelData struct {
	Level      int32 `csv:"等级"`
	ExpByStar1 int32 `csv:"武器升级经验1,omitempty"`
	ExpByStar2 int32 `csv:"武器升级经验2,omitempty"`
	ExpByStar3 int32 `csv:"武器升级经验3,omitempty"`
	ExpByStar4 int32 `csv:"武器升级经验4,omitempty"`
	ExpByStar5 int32 `csv:"武器升级经验5,omitempty"`

	ExpByStarMap map[uint32]uint32 // 星级对应武器升级经验
}

func (g *GameDataConfig) loadWeaponLevelData() {
	g.WeaponLevelDataMap = make(map[int32]*WeaponLevelData)
	weaponLevelDataList := make([]*WeaponLevelData, 0)
	readTable[WeaponLevelData](g.tablePrefix+"WeaponLevelData.txt", &weaponLevelDataList)
	for _, weaponLevelData := range weaponLevelDataList {
		// list -> map
		weaponLevelData.ExpByStarMap = map[uint32]uint32{
			1: uint32(weaponLevelData.ExpByStar1),
			2: uint32(weaponLevelData.ExpByStar2),
			3: uint32(weaponLevelData.ExpByStar3),
			4: uint32(weaponLevelData.ExpByStar4),
			5: uint32(weaponLevelData.ExpByStar5),
		}
		g.WeaponLevelDataMap[weaponLevelData.Level] = weaponLevelData
	}
	logger.Info("WeaponLevelData count: %v", len(g.WeaponLevelDataMap))
}

func GetWeaponLevelDataByLevel(level int32) *WeaponLevelData {
	return CONF.WeaponLevelDataMap[level]
}

func GetWeaponLevelDataMap() map[int32]*WeaponLevelData {
	return CONF.WeaponLevelDataMap
}
