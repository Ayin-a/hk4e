package config

import (
	"encoding/json"
	"os"

	"hk4e/gs/constant"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
)

type InherentProudSkillOpens struct {
	ProudSkillGroupId      int32 `json:"proudSkillGroupId"`
	NeedAvatarPromoteLevel int32 `json:"needAvatarPromoteLevel"`
}

type AvatarSkillDepotData struct {
	Id              int32 `json:"id"`
	EnergySkill     int32 `json:"energySkill"`
	AttackModeSkill int32 `json:"attackModeSkill"`

	Skills                  []int32                    `json:"skills"`
	SubSkills               []int32                    `json:"subSkills"`
	ExtraAbilities          []string                   `json:"extraAbilities"`
	Talents                 []int32                    `json:"talents"`
	InherentProudSkillOpens []*InherentProudSkillOpens `json:"inherentProudSkillOpens"`
	TalentStarName          string                     `json:"talentStarName"`
	SkillDepotAbilityGroup  string                     `json:"skillDepotAbilityGroup"`

	// 计算属性
	EnergySkillData *AvatarSkillData           `json:"-"`
	ElementType     *constant.ElementTypeValue `json:"-"`
	Abilities       []int32                    `json:"-"`
}

func (g *GameDataConfig) loadAvatarSkillDepotData() {
	g.AvatarSkillDepotDataMap = make(map[int32]*AvatarSkillDepotData)
	fileNameList := []string{"AvatarSkillDepotExcelConfigData.json"}
	for _, fileName := range fileNameList {
		fileData, err := os.ReadFile(g.excelBinPrefix + fileName)
		if err != nil {
			logger.LOG.Error("open file error: %v", err)
			continue
		}
		list := make([]map[string]any, 0)
		err = json.Unmarshal(fileData, &list)
		if err != nil {
			logger.LOG.Error("parse file error: %v", err)
			continue
		}
		for _, v := range list {
			i, err := json.Marshal(v)
			if err != nil {
				logger.LOG.Error("parse file error: %v", err)
				continue
			}
			avatarSkillDepotData := new(AvatarSkillDepotData)
			err = json.Unmarshal(i, avatarSkillDepotData)
			if err != nil {
				logger.LOG.Error("parse file error: %v", err)
				continue
			}
			g.AvatarSkillDepotDataMap[avatarSkillDepotData.Id] = avatarSkillDepotData
		}
	}
	logger.LOG.Info("load %v AvatarSkillDepotData", len(g.AvatarSkillDepotDataMap))
	for _, v := range g.AvatarSkillDepotDataMap {
		// set energy skill data
		v.EnergySkillData = g.AvatarSkillDataMap[v.EnergySkill]
		if v.EnergySkillData != nil {
			v.ElementType = v.EnergySkillData.CostElemTypeX
		} else {
			v.ElementType = constant.ElementTypeConst.None
		}
		// set embryo abilities if player skill depot
		if v.SkillDepotAbilityGroup != "" {
			config := g.GameDepot.PlayerAbilities[v.SkillDepotAbilityGroup]
			if config != nil {
				for _, targetAbility := range config.TargetAbilities {
					v.Abilities = append(v.Abilities, endec.Hk4eAbilityHashCode(targetAbility.AbilityName))
				}
			}
		}
	}
}
