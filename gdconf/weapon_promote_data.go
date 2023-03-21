package gdconf

import (
	"hk4e/pkg/logger"
)

// WeaponPromoteData 武器突破配置表
type WeaponPromoteData struct {
	PromoteId      int32 `csv:"武器突破ID"`
	PromoteLevel   int32 `csv:"突破等级,omitempty"`
	CostItemId1    int32 `csv:"[消耗物品]1ID,omitempty"`
	CostItemCount1 int32 `csv:"[消耗物品]1数量,omitempty"`
	CostItemId2    int32 `csv:"[消耗物品]2ID,omitempty"`
	CostItemCount2 int32 `csv:"[消耗物品]2数量,omitempty"`
	CostItemId3    int32 `csv:"[消耗物品]3ID,omitempty"`
	CostItemCount3 int32 `csv:"[消耗物品]3数量,omitempty"`
	CostCoin       int32 `csv:"突破消耗金币,omitempty"`
	LevelLimit     int32 `csv:"突破后解锁等级上限,omitempty"`
	MinPlayerLevel int32 `csv:"冒险等级要求,omitempty"`

	CostItemMap map[uint32]uint32 // 消耗物品列表
}

func (g *GameDataConfig) loadWeaponPromoteData() {
	g.WeaponPromoteDataMap = make(map[int32]map[int32]*WeaponPromoteData)
	weaponPromoteDataList := make([]*WeaponPromoteData, 0)
	readTable[WeaponPromoteData](g.txtPrefix+"WeaponPromoteData.txt", &weaponPromoteDataList)
	for _, weaponPromoteData := range weaponPromoteDataList {
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

func GetWeaponPromoteDataByIdAndLevel(promoteId int32, promoteLevel int32) *WeaponPromoteData {
	value, exist := CONF.WeaponPromoteDataMap[promoteId]
	if !exist {
		return nil
	}
	return value[promoteLevel]
}
