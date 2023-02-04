package gdconf

import (
	"fmt"
	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// 武器突破配置表

type WeaponPromoteData struct {
	PromoteId      int32 `csv:"PromoteId"`                // 武器突破ID
	PromoteLevel   int32 `csv:"PromoteLevel,omitempty"`   // 突破等级
	CostItemId1    int32 `csv:"CostItemId1,omitempty"`    // [消耗物品]1ID
	CostItemCount1 int32 `csv:"CostItemCount1,omitempty"` // [消耗物品]1数量
	CostItemId2    int32 `csv:"CostItemId2,omitempty"`    // [消耗物品]2ID
	CostItemCount2 int32 `csv:"CostItemCount2,omitempty"` // [消耗物品]2数量
	CostItemId3    int32 `csv:"CostItemId3,omitempty"`    // [消耗物品]3ID
	CostItemCount3 int32 `csv:"CostItemCount3,omitempty"` // [消耗物品]3数量
	CostCoin       int32 `csv:"CostCoin,omitempty"`       // 突破消耗金币
	LevelLimit     int32 `csv:"LevelLimit,omitempty"`     // 突破后解锁等级上限
	MinPlayerLevel int32 `csv:"MinPlayerLevel,omitempty"` // 冒险等级要求

	CostItemMap map[uint32]uint32 // 消耗物品列表
}

func (g *GameDataConfig) loadWeaponPromoteData() {
	g.WeaponPromoteDataMap = make(map[int32]map[int32]*WeaponPromoteData)
	data := g.readCsvFileData("WeaponPromoteData.csv")
	var weaponPromoteDataList []*WeaponPromoteData
	err := csvutil.Unmarshal(data, &weaponPromoteDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, weaponPromoteData := range weaponPromoteDataList {
		// list -> map
		_, ok := g.WeaponPromoteDataMap[weaponPromoteData.PromoteId]
		if !ok {
			g.WeaponPromoteDataMap[weaponPromoteData.PromoteId] = make(map[int32]*WeaponPromoteData)
		}
		weaponPromoteData.CostItemMap = map[uint32]uint32{
			uint32(weaponPromoteData.CostItemId1): uint32(weaponPromoteData.CostItemCount1),
			uint32(weaponPromoteData.CostItemId2): uint32(weaponPromoteData.CostItemCount2),
			uint32(weaponPromoteData.CostItemId3): uint32(weaponPromoteData.CostItemCount3),
		}
		for itemId, count := range weaponPromoteData.CostItemMap {
			// 两个值都不能为0
			if itemId == 0 || count == 0 {
				delete(weaponPromoteData.CostItemMap, itemId)
			}
		}
		// 通过突破等级找到突破数据
		g.WeaponPromoteDataMap[weaponPromoteData.PromoteId][weaponPromoteData.PromoteLevel] = weaponPromoteData
	}
	logger.Info("WeaponPromoteData count: %v", len(g.WeaponPromoteDataMap))
}
