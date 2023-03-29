package gdconf

import (
	"fmt"

	"hk4e/pkg/logger"
)

type SubDrop struct {
	Id         int32    // 子掉落ID
	CountRange [2]int32 // 子掉落数量区间
	Weight     int32    // 子掉落权重
}

const (
	RandomTypeChoose      = 0
	RandomTypeIndep       = 1
	RandomTypeIndepWeight = 10000
)

// DropData 掉落配置表
type DropData struct {
	DropId              int32      `csv:"掉落ID"`
	RandomType          int32      `csv:"随机方式,omitempty"` // 0:轮盘赌选择法掉落单个权重项 1:每个权重项独立随机(分母为10000)
	DropLayer           int32      `csv:"掉落层级,omitempty"`
	SubDrop1Id          int32      `csv:"子掉落1ID,omitempty"`
	SubDrop1CountRange  FloatArray `csv:"子掉落1数量区间,omitempty"`
	SubDrop1Weight      int32      `csv:"子掉落1权重,omitempty"`
	SubDrop2Id          int32      `csv:"子掉落2ID,omitempty"`
	SubDrop2CountRange  FloatArray `csv:"子掉落2数量区间,omitempty"`
	SubDrop2Weight      int32      `csv:"子掉落2权重,omitempty"`
	SubDrop3Id          int32      `csv:"子掉落3ID,omitempty"`
	SubDrop3CountRange  FloatArray `csv:"子掉落3数量区间,omitempty"`
	SubDrop3Weight      int32      `csv:"子掉落3权重,omitempty"`
	SubDrop4Id          int32      `csv:"子掉落4ID,omitempty"`
	SubDrop4CountRange  FloatArray `csv:"子掉落4数量区间,omitempty"`
	SubDrop4Weight      int32      `csv:"子掉落4权重,omitempty"`
	SubDrop5Id          int32      `csv:"子掉落5ID,omitempty"`
	SubDrop5CountRange  FloatArray `csv:"子掉落5数量区间,omitempty"`
	SubDrop5Weight      int32      `csv:"子掉落5权重,omitempty"`
	SubDrop6Id          int32      `csv:"子掉落6ID,omitempty"`
	SubDrop6CountRange  FloatArray `csv:"子掉落6数量区间,omitempty"`
	SubDrop6Weight      int32      `csv:"子掉落6权重,omitempty"`
	SubDrop7Id          int32      `csv:"子掉落7ID,omitempty"`
	SubDrop7CountRange  FloatArray `csv:"子掉落7数量区间,omitempty"`
	SubDrop7Weight      int32      `csv:"子掉落7权重,omitempty"`
	SubDrop8Id          int32      `csv:"子掉落8ID,omitempty"`
	SubDrop8CountRange  FloatArray `csv:"子掉落8数量区间,omitempty"`
	SubDrop8Weight      int32      `csv:"子掉落8权重,omitempty"`
	SubDrop9Id          int32      `csv:"子掉落9ID,omitempty"`
	SubDrop9CountRange  FloatArray `csv:"子掉落9数量区间,omitempty"`
	SubDrop9Weight      int32      `csv:"子掉落9权重,omitempty"`
	SubDrop10Id         int32      `csv:"子掉落10ID,omitempty"`
	SubDrop10CountRange FloatArray `csv:"子掉落10数量区间,omitempty"`
	SubDrop10Weight     int32      `csv:"子掉落10权重,omitempty"`
	SubDrop11Id         int32      `csv:"子掉落11ID,omitempty"`
	SubDrop11CountRange FloatArray `csv:"子掉落11数量区间,omitempty"`
	SubDrop11Weight     int32      `csv:"子掉落11权重,omitempty"`
	SubDrop12Id         int32      `csv:"子掉落12ID,omitempty"`
	SubDrop12CountRange FloatArray `csv:"子掉落12数量区间,omitempty"`
	SubDrop12Weight     int32      `csv:"子掉落12权重,omitempty"`

	SubDropList        []*SubDrop // 子掉落列表
	SubDropTotalWeight int32      // 总权重
}

func (g *GameDataConfig) loadDropData() {
	g.DropDataMap = make(map[int32]*DropData)
	fileNameList := []string{"DropLeafData.txt", "DropTreeData.txt"}
	for _, fileName := range fileNameList {
		dropDataList := make([]*DropData, 0)
		readTable[DropData](g.txtPrefix+fileName, &dropDataList)
		for _, dropData := range dropDataList {
			// 子掉落列合并
			dropData.SubDropList = make([]*SubDrop, 0)
			if dropData.SubDrop1Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop1CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop1CountRange[0]), int32(dropData.SubDrop1CountRange[0])}
				} else if len(dropData.SubDrop1CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop1CountRange[0]), int32(dropData.SubDrop1CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop1Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop1Weight,
				})
			}
			if dropData.SubDrop2Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop2CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop2CountRange[0]), int32(dropData.SubDrop2CountRange[0])}
				} else if len(dropData.SubDrop2CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop2CountRange[0]), int32(dropData.SubDrop2CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop2Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop2Weight,
				})
			}
			if dropData.SubDrop3Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop3CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop3CountRange[0]), int32(dropData.SubDrop3CountRange[0])}
				} else if len(dropData.SubDrop3CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop3CountRange[0]), int32(dropData.SubDrop3CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop3Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop3Weight,
				})
			}
			if dropData.SubDrop4Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop4CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop4CountRange[0]), int32(dropData.SubDrop4CountRange[0])}
				} else if len(dropData.SubDrop4CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop4CountRange[0]), int32(dropData.SubDrop4CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop4Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop4Weight,
				})
			}
			if dropData.SubDrop5Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop5CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop5CountRange[0]), int32(dropData.SubDrop5CountRange[0])}
				} else if len(dropData.SubDrop5CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop5CountRange[0]), int32(dropData.SubDrop5CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop5Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop5Weight,
				})
			}
			if dropData.SubDrop6Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop6CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop6CountRange[0]), int32(dropData.SubDrop6CountRange[0])}
				} else if len(dropData.SubDrop6CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop6CountRange[0]), int32(dropData.SubDrop6CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop6Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop6Weight,
				})
			}
			if dropData.SubDrop7Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop7CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop7CountRange[0]), int32(dropData.SubDrop7CountRange[0])}
				} else if len(dropData.SubDrop7CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop7CountRange[0]), int32(dropData.SubDrop7CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop7Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop7Weight,
				})
			}
			if dropData.SubDrop8Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop8CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop8CountRange[0]), int32(dropData.SubDrop8CountRange[0])}
				} else if len(dropData.SubDrop8CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop8CountRange[0]), int32(dropData.SubDrop8CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop8Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop8Weight,
				})
			}
			if dropData.SubDrop9Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop9CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop9CountRange[0]), int32(dropData.SubDrop9CountRange[0])}
				} else if len(dropData.SubDrop9CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop9CountRange[0]), int32(dropData.SubDrop9CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop9Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop9Weight,
				})
			}
			if dropData.SubDrop10Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop10CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop10CountRange[0]), int32(dropData.SubDrop10CountRange[0])}
				} else if len(dropData.SubDrop10CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop10CountRange[0]), int32(dropData.SubDrop10CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop10Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop10Weight,
				})
			}
			if dropData.SubDrop11Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop11CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop11CountRange[0]), int32(dropData.SubDrop11CountRange[0])}
				} else if len(dropData.SubDrop11CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop11CountRange[0]), int32(dropData.SubDrop11CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop11Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop11Weight,
				})
			}
			if dropData.SubDrop12Id != 0 {
				countRange := [2]int32{0, 0}
				if len(dropData.SubDrop12CountRange) == 1 {
					countRange = [2]int32{int32(dropData.SubDrop12CountRange[0]), int32(dropData.SubDrop12CountRange[0])}
				} else if len(dropData.SubDrop12CountRange) == 2 {
					countRange = [2]int32{int32(dropData.SubDrop12CountRange[0]), int32(dropData.SubDrop12CountRange[1])}
				}
				dropData.SubDropList = append(dropData.SubDropList, &SubDrop{
					Id:         dropData.SubDrop12Id,
					CountRange: countRange,
					Weight:     dropData.SubDrop12Weight,
				})
			}
			if dropData.RandomType == RandomTypeChoose {
				// 计算轮盘总权重
				for _, subDrop := range dropData.SubDropList {
					dropData.SubDropTotalWeight += subDrop.Weight
				}
			}
			g.DropDataMap[dropData.DropId] = dropData
		}
	}
	// 检查
	for _, dropData := range g.DropDataMap {
		if dropData.RandomType == RandomTypeIndep {
			for _, subDrop := range dropData.SubDropList {
				if subDrop.Weight > RandomTypeIndepWeight {
					info := fmt.Sprintf("invalid weight for indep rand type, weight: %v, dropId: %v", subDrop.Weight, dropData.DropId)
					panic(info)
				}
			}
		}
		for _, subDrop := range dropData.SubDropList {
			// 掉落id优先在掉落表里找 找不到就去道具表里找
			_, exist := g.DropDataMap[subDrop.Id]
			if !exist {
				_, exist := g.ItemDataMap[subDrop.Id]
				if !exist {
					info := fmt.Sprintf("drop item id not exist, itemId: %v, dropId: %v", subDrop.Id, dropData.DropId)
					panic(info)
				}
			}
		}
	}
	logger.Info("DropData count: %v", len(g.DropDataMap))
}

func GetDropDataById(dropId int32) *DropData {
	return CONF.DropDataMap[dropId]
}

func GetDropDataMap() map[int32]*DropData {
	return CONF.DropDataMap
}
