package config

import (
	"encoding/json"
	"os"

	"hk4e/common/constant"
	"hk4e/pkg/logger"
)

type ItemUseData struct {
	UseOp    string   `json:"useOp"`
	UseParam []string `json:"useParam"`
}

type WeaponProperty struct {
	PropType  string  `json:"propType"`
	InitValue float64 `json:"initValue"`
	Type      string  `json:"type"`
	FightProp uint16  `json:"-"`
}

type ItemData struct {
	Id                         int32          `json:"id"`
	StackLimit                 int32          `json:"stackLimit"`
	MaxUseCount                int32          `json:"maxUseCount"`
	RankLevel                  int32          `json:"rankLevel"`
	EffectName                 string         `json:"effectName"`
	SatiationParams            []int32        `json:"satiationParams"`
	Rank                       int32          `json:"rank"`
	Weight                     int32          `json:"weight"`
	GadgetId                   int32          `json:"gadgetId"`
	DestroyReturnMaterial      []int32        `json:"destroyReturnMaterial"`
	DestroyReturnMaterialCount []int32        `json:"destroyReturnMaterialCount"`
	ItemUse                    []*ItemUseData `json:"itemUse"`

	// food
	FoodQuality string   `json:"foodQuality"`
	UseTarget   string   `json:"useTarget"`
	IseParam    []string `json:"iseParam"`

	// string enums
	ItemType     string `json:"itemType"`
	MaterialType string `json:"materialType"`
	EquipType    string `json:"equipType"`
	EffectType   string `json:"effectType"`
	DestroyRule  string `json:"destroyRule"`

	// post load enum forms of above
	MaterialEnumType uint16 `json:"-"`
	ItemEnumType     uint16 `json:"-"`
	EquipEnumType    uint16 `json:"-"`

	// relic
	MainPropDepotId   int32   `json:"mainPropDepotId"`
	AppendPropDepotId int32   `json:"appendPropDepotId"`
	AppendPropNum     int32   `json:"appendPropNum"`
	SetId             int32   `json:"setId"`
	AddPropLevels     []int32 `json:"addPropLevels"`
	BaseConvExp       int32   `json:"baseConvExp"`
	MaxLevel          int32   `json:"maxLevel"`

	// weapon
	WeaponPromoteId int32             `json:"weaponPromoteId"`
	WeaponBaseExp   int32             `json:"weaponBaseExp"`
	StoryId         int32             `json:"storyId"`
	AvatarPromoteId int32             `json:"avatarPromoteId"`
	AwakenMaterial  int32             `json:"awakenMaterial"`
	AwakenCosts     []int32           `json:"awakenCosts"`
	SkillAffix      []int32           `json:"skillAffix"`
	WeaponProp      []*WeaponProperty `json:"weaponProp"`

	// hash
	Icon            string `json:"icon"`
	NameTextMapHash int64  `json:"nameTextMapHash"`

	AddPropLevelSet map[int32]bool `json:"-"`

	// furniture
	Comfort           int32   `json:"comfort"`
	FurnType          []int32 `json:"furnType"`
	FurnitureGadgetID []int32 `json:"furnitureGadgetID"`
	RoomSceneId       int32   `json:"roomSceneId"`
}

func (g *GameDataConfig) loadItemData() {
	g.ItemDataMap = make(map[int32]*ItemData)
	fileNameList := []string{"MaterialExcelConfigData.json", "WeaponExcelConfigData.json", "ReliquaryExcelConfigData.json", "HomeWorldFurnitureExcelConfigData.json"}
	for _, fileName := range fileNameList {
		fileData, err := os.ReadFile(g.excelBinPrefix + fileName)
		if err != nil {
			logger.Error("open file error: %v", err)
			continue
		}
		list := make([]map[string]any, 0)
		err = json.Unmarshal(fileData, &list)
		if err != nil {
			logger.Error("parse file error: %v", err)
			continue
		}
		for _, v := range list {
			i, err := json.Marshal(v)
			if err != nil {
				logger.Error("parse file error: %v", err)
				continue
			}
			itemData := new(ItemData)
			err = json.Unmarshal(i, itemData)
			if err != nil {
				logger.Error("parse file error: %v", err)
				continue
			}
			g.ItemDataMap[itemData.Id] = itemData
		}
	}
	logger.Info("load %v ItemData", len(g.ItemDataMap))

	for _, itemData := range g.ItemDataMap {
		itemData.ItemEnumType = constant.ItemTypeConst.STRING_MAP[itemData.ItemType]
		itemData.MaterialEnumType = constant.MaterialTypeConst.STRING_MAP[itemData.MaterialType]

		if itemData.ItemEnumType == constant.ItemTypeConst.ITEM_RELIQUARY {
			itemData.EquipEnumType = constant.EquipTypeConst.STRING_MAP[itemData.EquipType]
			if itemData.AddPropLevels != nil || len(itemData.AddPropLevels) > 0 {
				itemData.AddPropLevelSet = make(map[int32]bool)
				for _, v := range itemData.AddPropLevels {
					itemData.AddPropLevelSet[v] = true
				}
			}
		} else if itemData.ItemEnumType == constant.ItemTypeConst.ITEM_WEAPON {
			itemData.EquipEnumType = constant.EquipTypeConst.EQUIP_WEAPON
		} else {
			itemData.EquipEnumType = constant.EquipTypeConst.EQUIP_NONE
		}

		if itemData.WeaponProp != nil {
			for i, v := range itemData.WeaponProp {
				v.FightProp = constant.FightPropertyConst.STRING_MAP[v.PropType]
				itemData.WeaponProp[i] = v
			}
		}

		if itemData.FurnType != nil {
			furnType := make([]int32, 0)
			for _, v := range itemData.FurnType {
				if v > 0 {
					furnType = append(furnType, v)
				}
			}
			itemData.FurnType = furnType
		}
		if itemData.FurnitureGadgetID != nil {
			furnitureGadgetID := make([]int32, 0)
			for _, v := range itemData.FurnitureGadgetID {
				if v > 0 {
					furnitureGadgetID = append(furnitureGadgetID, v)
				}
			}
			itemData.FurnitureGadgetID = furnitureGadgetID
		}
	}
}
