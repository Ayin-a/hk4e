package config

import (
	"encoding/json"
	"hk4e/common/utils/endec"
	"hk4e/logger"
	"os"
	"strings"
)

type AvatarData struct {
	IconName                     string  `json:"iconName"`
	BodyType                     string  `json:"bodyType"`
	QualityType                  string  `json:"qualityType"`
	ChargeEfficiency             int32   `json:"chargeEfficiency"`
	InitialWeapon                int32   `json:"initialWeapon"`
	WeaponType                   string  `json:"weaponType"`
	ImageName                    string  `json:"imageName"`
	AvatarPromoteId              int32   `json:"avatarPromoteId"`
	CutsceneShow                 string  `json:"cutsceneShow"`
	SkillDepotId                 int32   `json:"skillDepotId"`
	StaminaRecoverSpeed          int32   `json:"staminaRecoverSpeed"`
	CandSkillDepotIds            []int32 `json:"candSkillDepotIds"`
	AvatarIdentityType           string  `json:"avatarIdentityType"`
	AvatarPromoteRewardLevelList []int32 `json:"avatarPromoteRewardLevelList"`
	AvatarPromoteRewardIdList    []int32 `json:"avatarPromoteRewardIdList"`

	NameTextMapHash int64 `json:"nameTextMapHash"`

	HpBase       float64 `json:"hpBase"`
	AttackBase   float64 `json:"attackBase"`
	DefenseBase  float64 `json:"defenseBase"`
	Critical     float64 `json:"critical"`
	CriticalHurt float64 `json:"criticalHurt"`

	PropGrowCurves []*PropGrowCurve `json:"propGrowCurves"`
	Id             int32            `json:"id"`

	// 计算数据
	Name      string  `json:"-"`
	Abilities []int32 `json:"-"`
}

func (g *GameDataConfig) loadAvatarData() {
	g.AvatarDataMap = make(map[int32]*AvatarData)
	fileNameList := []string{"AvatarExcelConfigData.json"}
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
			avatarData := new(AvatarData)
			err = json.Unmarshal(i, avatarData)
			if err != nil {
				logger.LOG.Error("parse file error: %v", err)
				continue
			}
			g.AvatarDataMap[avatarData.Id] = avatarData
		}
	}
	logger.LOG.Info("load %v AvatarData", len(g.AvatarDataMap))
	for _, v := range g.AvatarDataMap {
		split := strings.Split(v.IconName, "_")
		if len(split) > 0 {
			v.Name = split[len(split)-1]
			info := g.AbilityEmbryos[v.Name]
			if info != nil {
				v.Abilities = make([]int32, 0)
				for _, ability := range info.Abilities {
					v.Abilities = append(v.Abilities, endec.Hk4eAbilityHashCode(ability))
				}
			}
		}
	}
}

// TODO 成长属性要读表

func (a *AvatarData) GetBaseHpByLevel(level uint8) float64 {
	return a.HpBase * float64(level)
}

func (a *AvatarData) GetBaseAttackByLevel(level uint8) float64 {
	return a.AttackBase * float64(level)
}

func (a *AvatarData) GetBaseDefenseByLevel(level uint8) float64 {
	return a.DefenseBase * float64(level)
}
