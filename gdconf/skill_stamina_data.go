package gdconf

import (
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
)

// 体力应该由ability来做 但是现在我捋不清所以摆烂了 改了一下表暂时先这么用着

type SkillStaminaData struct {
	AvatarSkillId int32  `csv:"AvatarSkillId"`
	AbilityName   string `csv:"AbilityName"`
	CostStamina   int32  `csv:"CostStamina"`
}

func (g *GameDataConfig) loadSkillStaminaData() {
	g.SkillStaminaDataMap = make(map[int32]*SkillStaminaData)
	skillStaminaDataList := make([]*SkillStaminaData, 0)
	readExtCsv[SkillStaminaData](g.extPrefix+"SkillStaminaData.csv", &skillStaminaDataList)
	for _, skillStaminaData := range skillStaminaDataList {
		g.SkillStaminaDataMap[endec.Hk4eAbilityHashCode(skillStaminaData.AbilityName)] = skillStaminaData
	}
	logger.Info("SkillStaminaData count: %v", len(g.SkillStaminaDataMap))
}

func GetSkillStaminaDataByAbilityHashCode(abilityHashCode int32) *SkillStaminaData {
	return CONF.SkillStaminaDataMap[abilityHashCode]
}
