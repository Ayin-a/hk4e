package gdconf

import (
	"fmt"
	"os"

	"hk4e/pkg/endec"
	"hk4e/pkg/logger"

	"github.com/hjson/hjson-go/v4"
)

// AvatarData 角色配置表
type AvatarData struct {
	AvatarId           int32    `csv:"ID"`
	HpBase             float32  `csv:"基础生命值,omitempty"`
	AttackBase         float32  `csv:"基础攻击力,omitempty"`
	DefenseBase        float32  `csv:"基础防御力,omitempty"`
	Critical           float32  `csv:"暴击率,omitempty"`
	CriticalHurt       float32  `csv:"暴击伤害,omitempty"`
	QualityType        int32    `csv:"角色品质,omitempty"`
	ConfigJson         string   `csv:"战斗config,omitempty"`
	InitialWeapon      int32    `csv:"初始武器,omitempty"`
	WeaponType         int32    `csv:"武器种类,omitempty"`
	SkillDepotId       int32    `csv:"技能库ID,omitempty"`
	PromoteId          int32    `csv:"角色突破ID,omitempty"`
	PromoteRewardLevel IntArray `csv:"角色突破奖励获取等阶,omitempty"`
	PromoteReward      IntArray `csv:"角色突破奖励,omitempty"`

	AbilityHashCodeList []int32
	PromoteRewardMap    map[uint32]uint32
}

type ConfigAvatar struct {
	Abilities       []*ConfigAvatarAbility `json:"abilities"`
	TargetAbilities []*ConfigAvatarAbility `json:"targetAbilities"`
}

type ConfigAvatarAbility struct {
	AbilityName string `json:"abilityName"`
}

func (g *GameDataConfig) loadAvatarData() {
	g.AvatarDataMap = make(map[int32]*AvatarData)
	avatarDataList := make([]*AvatarData, 0)
	readTable[AvatarData](g.tablePrefix+"AvatarData.txt", &avatarDataList)
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
		// 突破奖励转换列表
		if len(avatarData.PromoteRewardLevel) != 0 && len(avatarData.PromoteReward) != 0 {
			avatarData.PromoteRewardMap = make(map[uint32]uint32, len(avatarData.PromoteReward))
			for index, rewardId := range avatarData.PromoteReward {
				promoteLevel := avatarData.PromoteRewardLevel[index]
				avatarData.PromoteRewardMap[uint32(promoteLevel)] = uint32(rewardId)
			}
		}
		// list -> map
		g.AvatarDataMap[avatarData.AvatarId] = avatarData
	}
	logger.Info("AvatarData count: %v", len(g.AvatarDataMap))
}

func GetAvatarDataById(avatarId int32) *AvatarData {
	return CONF.AvatarDataMap[avatarId]
}

func GetAvatarDataMap() map[int32]*AvatarData {
	return CONF.AvatarDataMap
}

// TODO 成长属性要读表

func (a *AvatarData) GetBaseHpByLevel(level uint8) float32 {
	return a.HpBase * float32(level)
}

func (a *AvatarData) GetBaseAttackByLevel(level uint8) float32 {
	return a.AttackBase * float32(level)
}

func (a *AvatarData) GetBaseDefenseByLevel(level uint8) float32 {
	return a.DefenseBase * float32(level)
}
