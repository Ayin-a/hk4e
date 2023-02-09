package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// WeaponLevelData 武器等级配置表
type WeaponLevelData struct {
	Level      int32 `csv:"Level"`                // 等级
	ExpByStar1 int32 `csv:"ExpByStar1,omitempty"` // 武器升级经验1
	ExpByStar2 int32 `csv:"ExpByStar2,omitempty"` // 武器升级经验2
	ExpByStar3 int32 `csv:"ExpByStar3,omitempty"` // 武器升级经验3
	ExpByStar4 int32 `csv:"ExpByStar4,omitempty"` // 武器升级经验4
	ExpByStar5 int32 `csv:"ExpByStar5,omitempty"` // 武器升级经验5

	ExpByStarMap map[uint32]uint32 // 星级对应武器升级经验
}

func (g *GameDataConfig) loadWeaponLevelData() {
	g.WeaponLevelDataMap = make(map[int32]*WeaponLevelData)
	data := g.readCsvFileData("WeaponLevelData.csv")
	var weaponLevelDataList []*WeaponLevelData
	err := csvutil.Unmarshal(data, &weaponLevelDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
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
