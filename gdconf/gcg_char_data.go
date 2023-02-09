package gdconf

import (
	"fmt"
	"strconv"
	"strings"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

// GCGCharData 角色卡牌配置表
type GCGCharData struct {
	CharId       int32  `csv:"CharId"`                 // ID
	TagId1       int32  `csv:"TagId1,omitempty"`       // 卡牌标签列表1
	TagId2       int32  `csv:"TagId2,omitempty"`       // 卡牌标签列表2
	TagId3       int32  `csv:"TagId3,omitempty"`       // 卡牌标签列表3
	TagId4       int32  `csv:"TagId4,omitempty"`       // 卡牌标签列表4
	TagId5       int32  `csv:"TagId5,omitempty"`       // 卡牌标签列表5
	SkillListStr string `csv:"SkillListStr,omitempty"` // 卡牌技能列表文本
	HPBase       int32  `csv:"HPBase,omitempty"`       // 角色生命值
	MaxElemVal   int32  `csv:"MaxElemVal,omitempty"`   // 角色充能上限

	TagList   []uint32 // 卡牌标签列表
	SkillList []uint32 // 卡牌技能列表
}

func (g *GameDataConfig) loadGCGCharData() {
	g.GCGCharDataMap = make(map[int32]*GCGCharData)
	data := g.readCsvFileData("GCGCharData.csv")
	var gcgCharDataList []*GCGCharData
	err := csvutil.Unmarshal(data, &gcgCharDataList)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
	for _, gcgCharData := range gcgCharDataList {
		// 将TagId整合进TagList
		gcgCharData.TagList = make([]uint32, 0, 5)
		tempTagList := make([]int32, 0, 5)
		tempTagList = append(tempTagList, gcgCharData.TagId1, gcgCharData.TagId2, gcgCharData.TagId3, gcgCharData.TagId4, gcgCharData.TagId5)
		for _, tagId := range tempTagList {
			// 跳过为0的tag
			if tagId == 0 {
				continue
			}
			gcgCharData.TagList = append(gcgCharData.TagList, uint32(tagId))
		}
		// 技能列表读取转换
		tempSkillList := strings.Split(strings.ReplaceAll(gcgCharData.SkillListStr, " ", ""), "#")
		gcgCharData.SkillList = make([]uint32, 0, len(tempSkillList))
		for _, s := range tempSkillList {
			skillId, err := strconv.Atoi(s)
			if err != nil {
				logger.Error("skill id to i err, %v", err)
				return
			}
			gcgCharData.SkillList = append(gcgCharData.SkillList, uint32(skillId))
		}
		// list -> map
		g.GCGCharDataMap[gcgCharData.CharId] = gcgCharData
	}
	logger.Info("GCGCharData count: %v", len(g.GCGCharDataMap))
}

func GetGCGCharDataById(charId int32) *GCGCharData {
	return CONF.GCGCharDataMap[charId]
}

func GetGCGCharDataMap() map[int32]*GCGCharData {
	return CONF.GCGCharDataMap
}
