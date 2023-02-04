package gdconf

import (
	"fmt"
	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// 角色突破配置表

type AvatarPromoteData struct {
	PromoteId      int32 `csv:"PromoteId"`                // 角色突破ID
	PromoteLevel   int32 `csv:"PromoteLevel,omitempty"`   // 突破等级
	CostCoin       int32 `csv:"CostCoin,omitempty"`       // 消耗金币
	CostItemId1    int32 `csv:"CostItemId1,omitempty"`    // [消耗物品]1ID
	CostItemCount1 int32 `csv:"CostItemCount1,omitempty"` // [消耗物品]1数量
	CostItemId2    int32 `csv:"CostItemId2,omitempty"`    // [消耗物品]2ID
	CostItemCount2 int32 `csv:"CostItemCount2,omitempty"` // [消耗物品]2数量
	CostItemId3    int32 `csv:"CostItemId3,omitempty"`    // [消耗物品]3ID
	CostItemCount3 int32 `csv:"CostItemCount3,omitempty"` // [消耗物品]3数量
	CostItemId4    int32 `csv:"CostItemId4,omitempty"`    // [消耗物品]4ID
	CostItemCount4 int32 `csv:"CostItemCount4,omitempty"` // [消耗物品]4数量
	LevelLimit     int32 `csv:"LevelLimit,omitempty"`     // 解锁等级上限
	MinPlayerLevel int32 `csv:"MinPlayerLevel,omitempty"` // 冒险等级要求

	CostItemMap map[uint32]uint32 // 消耗物品列表
}

func (g *GameDataConfig) loadAvatarPromoteData() {
	g.AvatarPromoteDataMap = make(map[int32]map[int32]*AvatarPromoteData)
	data := g.readCsvFileData("AvatarPromoteData.csv")
	var avatarPromoteDataList []*AvatarPromoteData
	err := csvutil.Unmarshal(data, &avatarPromoteDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, avatarPromoteData := range avatarPromoteDataList {
		// list -> map
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
