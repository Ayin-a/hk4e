package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// RewardData 奖励配置表
type RewardData struct {
	RewardID         int32 `csv:"RewardID"`                   // 奖励ID
	RewardItem1ID    int32 `csv:"RewardItem1ID,omitempty"`    // Reward道具1ID
	RewardItem1Count int32 `csv:"RewardItem1Count,omitempty"` // Reward道具1数量
	RewardItem2ID    int32 `csv:"RewardItem2ID,omitempty"`    // Reward道具2ID
	RewardItem2Count int32 `csv:"RewardItem2Count,omitempty"` // Reward道具2数量
	RewardItem3ID    int32 `csv:"RewardItem3ID,omitempty"`    // Reward道具3ID
	RewardItem3Count int32 `csv:"RewardItem3Count,omitempty"` // Reward道具3数量
	RewardItem4ID    int32 `csv:"RewardItem4ID,omitempty"`    // Reward道具4ID
	RewardItem4Count int32 `csv:"RewardItem4Count,omitempty"` // Reward道具4数量
	RewardItem5ID    int32 `csv:"RewardItem5ID,omitempty"`    // Reward道具5ID
	RewardItem5Count int32 `csv:"RewardItem5Count,omitempty"` // Reward道具5数量
	RewardItem6ID    int32 `csv:"RewardItem6ID,omitempty"`    // Reward道具6ID
	RewardItem6Count int32 `csv:"RewardItem6Count,omitempty"` // Reward道具6数量
	RewardItem7ID    int32 `csv:"RewardItem7ID,omitempty"`    // Reward道具7ID
	RewardItem7Count int32 `csv:"RewardItem7Count,omitempty"` // Reward道具7数量
	RewardItem8ID    int32 `csv:"RewardItem8ID,omitempty"`    // Reward道具8ID
	RewardItem8Count int32 `csv:"RewardItem8Count,omitempty"` // Reward道具8数量
	RewardItem9ID    int32 `csv:"RewardItem9ID,omitempty"`    // Reward道具9ID
	RewardItem9Count int32 `csv:"RewardItem9Count,omitempty"` // Reward道具9数量

	RewardItemMap map[uint32]uint32
}

func (g *GameDataConfig) loadRewardData() {
	g.RewardDataMap = make(map[int32]*RewardData)
	data := g.readCsvFileData("RewardData.csv")
	var rewardDataList []*RewardData
	err := csvutil.Unmarshal(data, &rewardDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, rewardData := range rewardDataList {
		// list -> map
		// 奖励物品整合
		rewardData.RewardItemMap = map[uint32]uint32{
			uint32(rewardData.RewardItem1ID): uint32(rewardData.RewardItem1Count),
			uint32(rewardData.RewardItem2ID): uint32(rewardData.RewardItem2Count),
			uint32(rewardData.RewardItem3ID): uint32(rewardData.RewardItem3Count),
			uint32(rewardData.RewardItem4ID): uint32(rewardData.RewardItem4Count),
			uint32(rewardData.RewardItem5ID): uint32(rewardData.RewardItem5Count),
			uint32(rewardData.RewardItem6ID): uint32(rewardData.RewardItem6Count),
			uint32(rewardData.RewardItem7ID): uint32(rewardData.RewardItem7Count),
			uint32(rewardData.RewardItem8ID): uint32(rewardData.RewardItem8Count),
			uint32(rewardData.RewardItem9ID): uint32(rewardData.RewardItem9Count),
		}
		for itemId, count := range rewardData.RewardItemMap {
			// 两个值都不能为0
			if itemId == 0 || count == 0 {
				delete(rewardData.RewardItemMap, itemId)
			}
		}
		g.RewardDataMap[rewardData.RewardID] = rewardData
	}
	logger.Info("RewardData count: %v", len(g.RewardDataMap))
}

func GetRewardDataById(rewardID int32) *RewardData {
	return CONF.RewardDataMap[rewardID]
}

func GetRewardDataMap() map[int32]*RewardData {
	return CONF.RewardDataMap
}
