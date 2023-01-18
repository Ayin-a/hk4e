package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
)

type ItemData struct {
	// 公共字段
	ItemId    int32  `csv:"ItemId"`              // ID
	Type      int32  `csv:"Type,omitempty"`      // 类型
	Weight    int32  `csv:"Weight,omitempty"`    // 重量
	RankLevel int32  `csv:"RankLevel,omitempty"` // 排序权重
	GadgetId  int32  `csv:"GadgetId,omitempty"`  // 物件ID
	Name      string `csv:"Name,omitempty"`      // 数值用类型
	// 材料
	MaterialType int32 `csv:"MaterialType,omitempty"` // 材料类型
	// 武器
	EquipType   int32 `csv:"EquipType,omitempty"`   // 武器种类
	EquipLevel  int32 `csv:"EquipLevel,omitempty"`  // 武器阶数
	SkillAffix1 int32 `csv:"SkillAffix1,omitempty"` // 初始技能词缀1
	SkillAffix2 int32 `csv:"SkillAffix2,omitempty"` // 初始技能词缀2
	SkillAffix  []int32
	// 圣遗物
	ReliquaryType int32 `csv:"ReliquaryType,omitempty"` // 圣遗物类别
}

func (g *GameDataConfig) loadItemData() {
	g.ItemDataMap = make(map[int32]*ItemData)
	fileNameList := []string{"MaterialData.csv", "WeaponData.csv", "ReliquaryData.csv", "FurnitureExcelData.csv"}
	for _, fileName := range fileNameList {
		data := g.readCsvFileData(fileName)
		var itemDataList []*ItemData
		err := csvutil.Unmarshal(data, &itemDataList)
		if err != nil {
			info := fmt.Sprintf("parse file error: %v", err)
			panic(info)
		}
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
