package gdconf

import (
	"fmt"
	"github.com/hjson/hjson-go/v4"
	"hk4e/pkg/logger"
	"os"

	"github.com/jszwec/csvutil"
)

// 卡牌技能配置表

type GCGSkillData struct {
	SkillId    int32  `csv:"SkillId"`              // ID
	ConfigJson string `csv:"ConfigJson,omitempty"` // 效果config
	CostType1  int32  `csv:"CostType1,omitempty"`  // 消耗的元素骰子类型1
	CostValue1 int32  `csv:"CostValue1,omitempty"` // 消耗的元素骰子数量1
	CostType2  int32  `csv:"CostType2,omitempty"`  // 消耗的元素骰子类型2
	CostValue2 int32  `csv:"CostValue2,omitempty"` // 消耗的元素骰子数量2

	CostMap     map[uint32]uint32 // 技能骰子消耗列表
	SkillDamage uint32            // 技能伤害
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
	data := g.readCsvFileData("GCGSkillData.csv")
	var gcgSkillDataList []*GCGSkillData
	err := csvutil.Unmarshal(data, &gcgSkillDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, gcgSkillData := range gcgSkillDataList {
		// 技能消耗整合进CostMap
		gcgSkillData.CostMap = make(map[uint32]uint32, 2)
		gcgSkillData.CostMap[uint32(gcgSkillData.CostType1)] = uint32(gcgSkillData.CostValue1)
		gcgSkillData.CostMap[uint32(gcgSkillData.CostType2)] = uint32(gcgSkillData.CostValue2)
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
		// 技能伤害
		for key, value := range configSkillEffect.DeclaredValueMap {
			if key != "__KEY__DAMAGE" {
				continue
			}
			if value.Type == "Damage" {
				gcgSkillData.SkillDamage = uint32(value.Value.(float64))
			}
		}
		// list -> map
		g.GCGSkillDataMap[gcgSkillData.SkillId] = gcgSkillData
	}
	logger.Info("GCGSkillData count: %v", len(g.GCGSkillDataMap))
}
