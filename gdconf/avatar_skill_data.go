package gdconf

import (
	"hk4e/pkg/logger"
)

// AvatarSkillData 角色技能配置表
type AvatarSkillData struct {
	AvatarSkillId int32  `csv:"ID"`
	AbilityName   string `csv:"Ability名称,omitempty"`
	// TODO 这个字段实际上并不是拿来直接扣体力的 体力应该由ability来做 但是现在我捋不清所以摆烂了 改了一下表暂时先这么用着
	CostStamina  int32 `csv:"消耗体力,omitempty"`
	CostElemType int32 `csv:"消耗能量类型,omitempty"`
	CostElemVal  int32 `csv:"消耗能量值,omitempty"`
}

func (g *GameDataConfig) loadAvatarSkillData() {
	g.AvatarSkillDataMap = make(map[int32]*AvatarSkillData)
	avatarSkillDataList := make([]*AvatarSkillData, 0)
	readTable[AvatarSkillData](g.tablePrefix+"AvatarSkillData.txt", &avatarSkillDataList)
	for _, avatarSkillData := range avatarSkillDataList {
		// list -> map
		g.AvatarSkillDataMap[avatarSkillData.AvatarSkillId] = avatarSkillData
	}
	logger.Info("AvatarSkillData count: %v", len(g.AvatarSkillDataMap))
}

func GetAvatarSkillDataById(avatarSkillId int32) *AvatarSkillData {
	return CONF.AvatarSkillDataMap[avatarSkillId]
}

func GetAvatarSkillDataMap() map[int32]*AvatarSkillData {
	return CONF.AvatarSkillDataMap
}
