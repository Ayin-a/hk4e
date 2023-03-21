package gdconf

import (
	"fmt"
	"os"

	"hk4e/pkg/logger"

	"github.com/hjson/hjson-go/v4"
)

// GCGSkillData 卡牌技能配置表
type GCGSkillData struct {
	SkillId    int32  `csv:"ID"`
	ConfigJson string `csv:"效果JSON文件,omitempty"`
	CostType1  int32  `csv:"[技能费用]1类型,omitempty"`
	CostValue1 int32  `csv:"[技能费用]1值,omitempty"`
	CostType2  int32  `csv:"[技能费用]2类型,omitempty"`
	CostValue2 int32  `csv:"[技能费用]2值,omitempty"`

	CostMap     map[uint32]uint32 // 技能骰子消耗列表
	Damage      uint32            // 技能伤害
	ElementType uint32            // 技能元素类型
}

type ConfigSkillEffect struct {
	DeclaredValueMap map[string]*ConfigSkillEffectValue `json:"declaredValueMap"`
}

type ConfigSkillEffectValue struct {
	Type  string `json:"type"`
	Value any    `json:"value"`
}

func (g *GameDataConfig) loadGCGSkillData() {
	g.GCGSkillDataMap = make(map[int32]*GCGSkillData)
	gcgSkillDataList := make([]*GCGSkillData, 0)
	readTable[GCGSkillData](g.txtPrefix+"GCGSkillData.txt", &gcgSkillDataList)
	for _, gcgSkillData := range gcgSkillDataList {
		// 技能消耗整合进CostMap
		gcgSkillData.CostMap = map[uint32]uint32{
			uint32(gcgSkillData.CostType1): uint32(gcgSkillData.CostValue1),
			uint32(gcgSkillData.CostType2): uint32(gcgSkillData.CostValue2),
		}
		for costType, costValue := range gcgSkillData.CostMap {
			// 两个值都不能为0
			if costType == 0 || costValue == 0 {
				delete(gcgSkillData.CostMap, costType)
			}
		}
		// 技能效果Config
		fileData, err := os.ReadFile(g.jsonPrefix + "gcg_card_skill/" + gcgSkillData.ConfigJson + ".json")
		if err != nil {
			info := fmt.Sprintf("open file error: %v, SkillId: %v", err, gcgSkillData.SkillId)
			panic(info)
		}
		configSkillEffect := new(ConfigSkillEffect)
		err = hjson.Unmarshal(fileData, configSkillEffect)
		if err != nil {
			info := fmt.Sprintf("parse file error: %v, SkillId: %v", err, gcgSkillData.SkillId)
			panic(info)
		}
		for key, value := range configSkillEffect.DeclaredValueMap {
			switch key {
			case "__KEY__DAMAGE":
				// 技能伤害
				if value.Type == "Damage" {
					gcgSkillData.Damage = uint32(value.Value.(float64))
				}
			case "__KEY__ELEMENT":
				// 技能元素类型
				switch value.Value.(string) {
				case "GCG_ELEMENT_CRYO":
					// 冰
					gcgSkillData.ElementType = 1
				case "GCG_ELEMENT_HYDRO":
					// 水
					gcgSkillData.ElementType = 2
				case "GCG_ELEMENT_PYRO":
					// 火
					gcgSkillData.ElementType = 3
				case "GCG_ELEMENT_ELECTRO":
					// 雷
					gcgSkillData.ElementType = 4
				case "GCG_ELEMENT_GEO":
					// 岩
					gcgSkillData.ElementType = 5
				case "GCG_ELEMENT_DENDRO":
					// 草
					gcgSkillData.ElementType = 6
				case "GCG_ELEMENT_ANEMO":
					// 风
					gcgSkillData.ElementType = 7
				case "GCG_ELEMENT_PHYSIC":
					// 物理
					gcgSkillData.ElementType = 8
				}
			}
		}
		g.GCGSkillDataMap[gcgSkillData.SkillId] = gcgSkillData
	}
	logger.Info("GCGSkillData count: %v", len(g.GCGSkillDataMap))
}

func GetGCGSkillDataById(skillId int32) *GCGSkillData {
	return CONF.GCGSkillDataMap[skillId]
}

func GetGCGSkillDataMap() map[int32]*GCGSkillData {
	return CONF.GCGSkillDataMap
}
