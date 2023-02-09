package gdconf

import (
	"fmt"
	"os"

	"hk4e/pkg/endec"
	"hk4e/pkg/logger"

	"github.com/hjson/hjson-go/v4"
	"github.com/jszwec/csvutil"
)

// AvatarSkillDepotData 角色技能库配置表
type AvatarSkillDepotData struct {
	AvatarSkillDepotId                int32  `csv:"AvatarSkillDepotId"`                          // ID
	EnergySkill                       int32  `csv:"EnergySkill,omitempty"`                       // 充能技能
	Skill1                            int32  `csv:"Skill1,omitempty"`                            // 技能1
	Skill2                            int32  `csv:"Skill2,omitempty"`                            // 技能2
	Skill3                            int32  `csv:"Skill3,omitempty"`                            // 技能3
	Skill4                            int32  `csv:"Skill4,omitempty"`                            // 技能4
	ProudSkill1GroupId                int32  `csv:"ProudSkill1GroupId,omitempty"`                // 固有得意技组1ID
	ProudSkill1NeedAvatarPromoteLevel int32  `csv:"ProudSkill1NeedAvatarPromoteLevel,omitempty"` // 固有得意技组1激活所需角色突破等级
	ProudSkill2GroupId                int32  `csv:"ProudSkill2GroupId,omitempty"`                // 固有得意技组2ID
	ProudSkill2NeedAvatarPromoteLevel int32  `csv:"ProudSkill2NeedAvatarPromoteLevel,omitempty"` // 固有得意技组2激活所需角色突破等级
	ProudSkill3GroupId                int32  `csv:"ProudSkill3GroupId,omitempty"`                // 固有得意技组3ID
	ProudSkill3NeedAvatarPromoteLevel int32  `csv:"ProudSkill3NeedAvatarPromoteLevel,omitempty"` // 固有得意技组3激活所需角色突破等级
	ProudSkill4GroupId                int32  `csv:"ProudSkill4GroupId,omitempty"`                // 固有得意技组4ID
	ProudSkill4NeedAvatarPromoteLevel int32  `csv:"ProudSkill4NeedAvatarPromoteLevel,omitempty"` // 固有得意技组4激活所需角色突破等级
	ProudSkill5GroupId                int32  `csv:"ProudSkill5GroupId,omitempty"`                // 固有得意技组5ID
	ProudSkill5NeedAvatarPromoteLevel int32  `csv:"ProudSkill5NeedAvatarPromoteLevel,omitempty"` // 固有得意技组5激活所需角色突破等级
	SkillDepotAbilityGroup            string `csv:"SkillDepotAbilityGroup,omitempty"`            // AbilityGroup

	Skills                  []int32
	InherentProudSkillOpens []*InherentProudSkillOpens
	AbilityHashCodeList     []int32
}

type InherentProudSkillOpens struct {
	ProudSkillGroupId      int32 `json:"proudSkillGroupId"`      // 固有得意技组ID
	NeedAvatarPromoteLevel int32 `json:"needAvatarPromoteLevel"` // 固有得意技组激活所需角色突破等级
}

func (g *GameDataConfig) loadAvatarSkillDepotData() {
	g.AvatarSkillDepotDataMap = make(map[int32]*AvatarSkillDepotData)
	data := g.readCsvFileData("AvatarSkillDepotData.csv")
	var avatarSkillDepotDataList []*AvatarSkillDepotData
	err := csvutil.Unmarshal(data, &avatarSkillDepotDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}

	playerElementsFilePath := g.jsonPrefix + "ability_group/AbilityGroup_Other_PlayerElementAbility.json"
	playerElementsFile, err := os.ReadFile(playerElementsFilePath)
	if err != nil {
		info := fmt.Sprintf("open file error: %v", err)
		panic(info)
	}
	playerAbilities := make(map[string]*ConfigAvatar)
	err = hjson.Unmarshal(playerElementsFile, &playerAbilities)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	logger.Info("load %v PlayerAbilities", len(playerAbilities))

	for _, avatarSkillDepotData := range avatarSkillDepotDataList {
		// 把全部技能数据放进一个列表里 以后要是没用到或者不需要的话就可以删了
		avatarSkillDepotData.Skills = make([]int32, 0)
		if avatarSkillDepotData.Skill1 != 0 {
			avatarSkillDepotData.Skills = append(avatarSkillDepotData.Skills, avatarSkillDepotData.Skill1)
		}
		if avatarSkillDepotData.Skill2 != 0 {
			avatarSkillDepotData.Skills = append(avatarSkillDepotData.Skills, avatarSkillDepotData.Skill2)
		}
		if avatarSkillDepotData.Skill3 != 0 {
			avatarSkillDepotData.Skills = append(avatarSkillDepotData.Skills, avatarSkillDepotData.Skill3)
		}
		if avatarSkillDepotData.Skill4 != 0 {
			avatarSkillDepotData.Skills = append(avatarSkillDepotData.Skills, avatarSkillDepotData.Skill4)
		}
		avatarSkillDepotData.InherentProudSkillOpens = make([]*InherentProudSkillOpens, 0)
		if avatarSkillDepotData.ProudSkill1GroupId != 0 {
			avatarSkillDepotData.InherentProudSkillOpens = append(avatarSkillDepotData.InherentProudSkillOpens, &InherentProudSkillOpens{
				ProudSkillGroupId:      avatarSkillDepotData.ProudSkill1GroupId,
				NeedAvatarPromoteLevel: avatarSkillDepotData.ProudSkill1NeedAvatarPromoteLevel,
			})
		}
		if avatarSkillDepotData.ProudSkill2GroupId != 0 {
			avatarSkillDepotData.InherentProudSkillOpens = append(avatarSkillDepotData.InherentProudSkillOpens, &InherentProudSkillOpens{
				ProudSkillGroupId:      avatarSkillDepotData.ProudSkill2GroupId,
				NeedAvatarPromoteLevel: avatarSkillDepotData.ProudSkill2NeedAvatarPromoteLevel,
			})
		}
		if avatarSkillDepotData.ProudSkill3GroupId != 0 {
			avatarSkillDepotData.InherentProudSkillOpens = append(avatarSkillDepotData.InherentProudSkillOpens, &InherentProudSkillOpens{
				ProudSkillGroupId:      avatarSkillDepotData.ProudSkill3GroupId,
				NeedAvatarPromoteLevel: avatarSkillDepotData.ProudSkill3NeedAvatarPromoteLevel,
			})
		}
		if avatarSkillDepotData.ProudSkill4GroupId != 0 {
			avatarSkillDepotData.InherentProudSkillOpens = append(avatarSkillDepotData.InherentProudSkillOpens, &InherentProudSkillOpens{
				ProudSkillGroupId:      avatarSkillDepotData.ProudSkill4GroupId,
				NeedAvatarPromoteLevel: avatarSkillDepotData.ProudSkill4NeedAvatarPromoteLevel,
			})
		}
		if avatarSkillDepotData.ProudSkill5GroupId != 0 {
			avatarSkillDepotData.InherentProudSkillOpens = append(avatarSkillDepotData.InherentProudSkillOpens, &InherentProudSkillOpens{
				ProudSkillGroupId:      avatarSkillDepotData.ProudSkill5GroupId,
				NeedAvatarPromoteLevel: avatarSkillDepotData.ProudSkill5NeedAvatarPromoteLevel,
			})
		}
		avatarSkillDepotData.AbilityHashCodeList = make([]int32, 0)
		if avatarSkillDepotData.SkillDepotAbilityGroup != "" {
			config := playerAbilities[avatarSkillDepotData.SkillDepotAbilityGroup]
			if config != nil {
				for _, targetAbility := range config.TargetAbilities {
					avatarSkillDepotData.AbilityHashCodeList = append(avatarSkillDepotData.AbilityHashCodeList, endec.Hk4eAbilityHashCode(targetAbility.AbilityName))
				}
			}
		}
		// list -> map
		g.AvatarSkillDepotDataMap[avatarSkillDepotData.AvatarSkillDepotId] = avatarSkillDepotData
	}
	logger.Info("AvatarSkillDepotData count: %v", len(g.AvatarSkillDepotDataMap))
}

func GetAvatarSkillDepotDataById(avatarSkillDepotId int32) *AvatarSkillDepotData {
	return CONF.AvatarSkillDepotDataMap[avatarSkillDepotId]
}

func GetAvatarSkillDepotDataMap() map[int32]*AvatarSkillDepotData {
	return CONF.AvatarSkillDepotDataMap
}

func GetAvatarEnergySkillConfig(avatarId uint32) *AvatarSkillData {
	if avatarId == 10000005 || avatarId == 10000007 {
		return nil
	}
	// 角色配置
	avatarDataConfig, exist := CONF.AvatarDataMap[int32(avatarId)]
	if !exist {
		return nil
	}
	// 角色技能库配置
	avatarSkillDepotDataConfig, exist := CONF.AvatarSkillDepotDataMap[avatarDataConfig.SkillDepotId]
	if !exist {
		return nil
	}
	// 角色充能技配置
	avatarSkillDataConfig, exist := CONF.AvatarSkillDataMap[avatarSkillDepotDataConfig.EnergySkill]
	if !exist {
		return nil
	}
	return avatarSkillDataConfig
}
