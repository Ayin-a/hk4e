package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// 角色技能配置表

type AvatarSkillData struct {
	AvatarSkillId int32  `csv:"AvatarSkillId"`         // ID
	AbilityName   string `csv:"AbilityName,omitempty"` // Ability名称
	// TODO 这个字段实际上并不是拿来直接扣体力的 体力应该由ability来做 但是现在我捋不清所以摆烂了 改了一下表暂时先这么用着
	CostStamina  int32 `csv:"CostStamina,omitempty"`  // 消耗体力
	CostElemType int32 `csv:"CostElemType,omitempty"` // 消耗能量类型
	CostElemVal  int32 `csv:"CostElemVal,omitempty"`  // 消耗能量值
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
	logger.Info("AvatarSkillData count: %v", len(g.AvatarSkillDataMap))
}
