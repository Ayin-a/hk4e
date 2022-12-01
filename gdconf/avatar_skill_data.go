package gdconf

import (
	"fmt"
	"github.com/jszwec/csvutil"
	"hk4e/pkg/logger"
)

// 角色技能配置表

type AvatarSkillData struct {
	AvatarSkillId int32 `csv:"AvatarSkillId"`          // ID
	CostElemType  int32 `csv:"CostElemType,omitempty"` // 消耗能量类型
	CostElemVal   int32 `csv:"CostElemVal,omitempty"`  // 消耗能量值
}

func (g *GameDataConfig) loadAvatarSkillData() {
	g.AvatarSkillDataMap = make(map[int32]*AvatarSkillData)
	data := g.readCsvFileData("AvatarSkillData.csv")
	var avatarSkillDataList []*AvatarSkillData
	err := csvutil.Unmarshal(data, &avatarSkillDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, avatarSkillData := range avatarSkillDataList {
		// list -> map
		g.AvatarSkillDataMap[avatarSkillData.AvatarSkillId] = avatarSkillData
	}
	logger.LOG.Info("AvatarSkillData count: %v", len(g.AvatarSkillDataMap))
}
