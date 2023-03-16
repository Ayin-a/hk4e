package gdconf

import (
	"hk4e/pkg/logger"
)

// ItemData 道具分类分表整合配置表
type ItemData struct {
	// 公共表头字段
	ItemId    int32  `csv:"ID"`
	Type      int32  `csv:"类型,omitempty"`
	Weight    int32  `csv:"重量,omitempty"`
	RankLevel int32  `csv:"排序权重,omitempty"`
	GadgetId  int32  `csv:"物件ID,omitempty"`
	Name      string `csv:"数值用类型,omitempty"`
	// 材料
	MaterialType int32  `csv:"材料类型,omitempty"`
	Use1Param1   string `csv:"[使用]1参数1,omitempty"`
	// 武器
	EquipType      int32    `csv:"武器种类,omitempty"`
	EquipLevel     int32    `csv:"武器阶数,omitempty"`
	SkillAffix1    int32    `csv:"初始技能词缀1,omitempty"`
	SkillAffix2    int32    `csv:"初始技能词缀2,omitempty"`
	PromoteId      int32    `csv:"武器突破ID,omitempty"`
	EquipBaseExp   int32    `csv:"武器初始经验,omitempty"`
	AwakenMaterial int32    `csv:"精炼道具,omitempty"`
	AwakenCoinCost IntArray `csv:"精炼摩拉消耗,omitempty"`
	SkillAffix     []int32
	// 圣遗物
	ReliquaryType     int32 `csv:"圣遗物类别,omitempty"`
	MainPropDepotId   int32 `csv:"主属性库ID,omitempty"`
	AppendPropDepotId int32 `csv:"追加属性库ID,omitempty"`
	AppendPropCount   int32 `csv:"追加属性初始条数,omitempty"`
}

func (g *GameDataConfig) loadItemData() {
	g.ItemDataMap = make(map[int32]*ItemData)
	fileNameList := []string{"MaterialData.txt", "WeaponData.txt", "ReliquaryData.txt", "FurnitureExcelData.txt"}
	for _, fileName := range fileNameList {
		itemDataList := make([]*ItemData, 0)
		readTable[ItemData](g.tablePrefix+fileName, &itemDataList)
		for _, itemData := range itemDataList {
			// list -> map
			itemData.SkillAffix = make([]int32, 0)
			if itemData.SkillAffix1 != 0 {
				itemData.SkillAffix = append(itemData.SkillAffix, itemData.SkillAffix1)
			}
			if itemData.SkillAffix2 != 0 {
				itemData.SkillAffix = append(itemData.SkillAffix, itemData.SkillAffix2)
			}
			g.ItemDataMap[itemData.ItemId] = itemData
		}
	}
	logger.Info("ItemData count: %v", len(g.ItemDataMap))
}

func GetItemDataById(itemId int32) *ItemData {
	return CONF.ItemDataMap[itemId]
}

func GetItemDataMap() map[int32]*ItemData {
	return CONF.ItemDataMap
}
