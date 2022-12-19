package gdconf

import (
	"fmt"
	"os"

	"hk4e/pkg/endec"
	"hk4e/pkg/logger"

	"github.com/hjson/hjson-go/v4"
	"github.com/jszwec/csvutil"
)

// 角色配置表

type AvatarData struct {
	AvatarId      int32   `csv:"AvatarId"`                // ID
	HpBase        float64 `csv:"HpBase,omitempty"`        // 基础生命值
	AttackBase    float64 `csv:"AttackBase,omitempty"`    // 基础攻击力
	DefenseBase   float64 `csv:"DefenseBase,omitempty"`   // 基础防御力
	Critical      float64 `csv:"Critical,omitempty"`      // 暴击率
	CriticalHurt  float64 `csv:"CriticalHurt,omitempty"`  // 暴击伤害
	QualityType   int32   `csv:"QualityType,omitempty"`   // 角色品质
	ConfigJson    string  `csv:"ConfigJson,omitempty"`    // 战斗config
	InitialWeapon int32   `csv:"InitialWeapon,omitempty"` // 初始武器
	WeaponType    int32   `csv:"WeaponType,omitempty"`    // 武器种类
	SkillDepotId  int32   `csv:"SkillDepotId,omitempty"`  // 技能库ID

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
			logger.Info("can not find any ability of avatar, AvatarId: %v", avatarData.AvatarId)
		}
		for _, configAvatarAbility := range configAvatar.Abilities {
			abilityHashCode := endec.Hk4eAbilityHashCode(configAvatarAbility.AbilityName)
			avatarData.AbilityHashCodeList = append(avatarData.AbilityHashCodeList, abilityHashCode)
		}
		// list -> map
		g.AvatarDataMap[avatarData.AvatarId] = avatarData
	}
	logger.Info("AvatarData count: %v", len(g.AvatarDataMap))
}
