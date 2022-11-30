package gdconf

import (
	"fmt"
	"github.com/hjson/hjson-go/v4"
	"github.com/jszwec/csvutil"
	"hk4e/pkg/endec"
	"hk4e/pkg/logger"
	"os"
)

type AvatarData struct {
	AvatarId      int32   `csv:"AvatarId"`      // ID
	HpBase        float64 `csv:"HpBase"`        // 基础生命值
	AttackBase    float64 `csv:"AttackBase"`    // 基础攻击力
	DefenseBase   float64 `csv:"DefenseBase"`   // 基础防御力
	Critical      float64 `csv:"Critical"`      // 暴击率
	CriticalHurt  float64 `csv:"CriticalHurt"`  // 暴击伤害
	QualityType   int32   `csv:"QualityType"`   // 角色品质
	ConfigJson    string  `csv:"ConfigJson"`    // 战斗config
	InitialWeapon int32   `csv:"InitialWeapon"` // 初始武器
	SkillDepotId  int32   `csv:"SkillDepotId"`  // 技能库ID

	AbilityHashCodeList []int32
}

type ConfigAvatar struct {
	Abilities []*ConfigAvatarAbility `json:"abilities"`
}

type ConfigAvatarAbility struct {
	AbilityName string `json:"abilityName"`
}

func (g *GameDataConfig) loadAvatarData() {
	g.AvatarDataMap = make(map[int32]*AvatarData)
	data := g.readCsvFileData("AvatarData.csv")
	var avatarDataList []*AvatarData
	err := csvutil.Unmarshal(data, &avatarDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, avatarData := range avatarDataList {
		// 读取战斗config解析技能并转化为哈希码
		fileData, err := os.ReadFile(g.jsonPrefix + "avatar/" + avatarData.ConfigJson + ".json")
		if err != nil {
			info := fmt.Sprintf("open file error: %v, AvatarId: %v", err, avatarData.AvatarId)
			panic(info)
		}
		configAvatar := new(ConfigAvatar)
		err = hjson.Unmarshal(fileData, configAvatar)
		if err != nil {
			info := fmt.Sprintf("parse file error: %v, AvatarId: %v", err, avatarData.AvatarId)
			panic(info)
		}
		if len(configAvatar.Abilities) == 0 {
			logger.LOG.Error("configAvatar Abilities len is 0, AvatarId: %v", avatarData.AvatarId)
		}
		for _, configAvatarAbility := range configAvatar.Abilities {
			abilityHashCode := endec.Hk4eAbilityHashCode(configAvatarAbility.AbilityName)
			avatarData.AbilityHashCodeList = append(avatarData.AbilityHashCodeList, abilityHashCode)
		}

		g.AvatarDataMap[avatarData.AvatarId] = avatarData
	}
	logger.LOG.Info("AvatarData count: %v", len(g.AvatarDataMap))
}
