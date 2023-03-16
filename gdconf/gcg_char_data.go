package gdconf

import (
	"hk4e/pkg/logger"
)

// GCGCharData 角色卡牌配置表
type GCGCharData struct {
	CharId     int32    `csv:"ID"`
	TagId1     int32    `csv:"[卡牌标签列表]1,omitempty"`
	TagId2     int32    `csv:"[卡牌标签列表]2,omitempty"`
	TagId3     int32    `csv:"[卡牌标签列表]3,omitempty"`
	TagId4     int32    `csv:"[卡牌标签列表]4,omitempty"`
	TagId5     int32    `csv:"[卡牌标签列表]5,omitempty"`
	SkillList  IntArray `csv:"卡牌技能列表,omitempty"`
	HPBase     int32    `csv:"角色生命值,omitempty"`
	MaxElemVal int32    `csv:"角色充能上限,omitempty"`

	TagList []uint32 // 卡牌标签列表
}

func (g *GameDataConfig) loadGCGCharData() {
	g.GCGCharDataMap = make(map[int32]*GCGCharData)
	gcgCharDataList := make([]*GCGCharData, 0)
	readTable[GCGCharData](g.tablePrefix+"GCGCharData.txt", &gcgCharDataList)
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
