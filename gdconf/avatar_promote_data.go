package gdconf

import (
	"hk4e/pkg/logger"
)

// AvatarPromoteData 角色突破配置表
type AvatarPromoteData struct {
	PromoteId      int32 `csv:"角色突破ID"`
	PromoteLevel   int32 `csv:"突破等级,omitempty"`
	CostCoin       int32 `csv:"消耗金币,omitempty"`
	CostItemId1    int32 `csv:"[消耗物品]1ID,omitempty"`
	CostItemCount1 int32 `csv:"[消耗物品]1数量,omitempty"`
	CostItemId2    int32 `csv:"[消耗物品]2ID,omitempty"`
	CostItemCount2 int32 `csv:"[消耗物品]2数量,omitempty"`
	CostItemId3    int32 `csv:"[消耗物品]3ID,omitempty"`
	CostItemCount3 int32 `csv:"[消耗物品]3数量,omitempty"`
	CostItemId4    int32 `csv:"[消耗物品]4ID,omitempty"`
	CostItemCount4 int32 `csv:"[消耗物品]4数量,omitempty"`
	LevelLimit     int32 `csv:"解锁等级上限,omitempty"`
	MinPlayerLevel int32 `csv:"冒险等级要求,omitempty"`

	CostItemMap map[uint32]uint32 // 消耗物品列表
}

func (g *GameDataConfig) loadAvatarPromoteData() {
	g.AvatarPromoteDataMap = make(map[int32]map[int32]*AvatarPromoteData)
	avatarPromoteDataList := make([]*AvatarPromoteData, 0)
	readTable[AvatarPromoteData](g.txtPrefix+"AvatarPromoteData.txt", &avatarPromoteDataList)
	for _, avatarPromoteData := range avatarPromoteDataList {
		_, ok := g.AvatarPromoteDataMap[avatarPromoteData.PromoteId]
		if !ok {
			g.AvatarPromoteDataMap[avatarPromoteData.PromoteId] = make(map[int32]*AvatarPromoteData)
		}
		avatarPromoteData.CostItemMap = map[uint32]uint32{
			uint32(avatarPromoteData.CostItemId1): uint32(avatarPromoteData.CostItemCount1),
			uint32(avatarPromoteData.CostItemId2): uint32(avatarPromoteData.CostItemCount2),
			uint32(avatarPromoteData.CostItemId3): uint32(avatarPromoteData.CostItemCount3),
			uint32(avatarPromoteData.CostItemId4): uint32(avatarPromoteData.CostItemCount4),
		}
		for itemId, count := range avatarPromoteData.CostItemMap {
			// 两个值都不能为0
			if itemId == 0 || count == 0 {
				delete(avatarPromoteData.CostItemMap, itemId)
			}
		}
		// 通过突破等级找到突破数据
		g.AvatarPromoteDataMap[avatarPromoteData.PromoteId][avatarPromoteData.PromoteLevel] = avatarPromoteData
	}
	logger.Info("AvatarPromoteData count: %v", len(g.AvatarPromoteDataMap))
}

func GetAvatarPromoteDataByIdAndLevel(promoteId int32, promoteLevel int32) *AvatarPromoteData {
	value, exist := CONF.AvatarPromoteDataMap[promoteId]
	if !exist {
		return nil
	}
	return value[promoteLevel]
}
