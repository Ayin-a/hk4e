package gdconf

import (
	"fmt"
	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// 角色突破配置表

type AvatarPromoteData struct {
	PromoteId    int32 `csv:"PromoteId"`              // 角色突破ID
	PromoteLevel int32 `csv:"PromoteLevel,omitempty"` // 突破等级
	LevelLimit   int32 `csv:"LevelLimit,omitempty"`   // 解锁等级上限
}

func (g *GameDataConfig) loadAvatarPromoteData() {
	g.AvatarPromoteDataMap = make(map[int32]*AvatarPromoteData)
	data := g.readCsvFileData("AvatarPromoteData.csv")
	var avatarPromoteDataList []*AvatarPromoteData
	err := csvutil.Unmarshal(data, &avatarPromoteDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, avatarPromoteData := range avatarPromoteDataList {
		// list -> map
		g.AvatarPromoteDataMap[avatarPromoteData.PromoteLevel] = avatarPromoteData
	}
	logger.Info("AvatarPromoteData count: %v", len(g.AvatarPromoteDataMap))
}
