package config

import (
	"encoding/json"
	"os"

	"hk4e/gs/constant"
	"hk4e/pkg/logger"
)

type AvatarSkillData struct {
	Id                 int32     `json:"id"`
	CdTime             float64   `json:"cdTime"`
	CostElemVal        int32     `json:"costElemVal"`
	MaxChargeNum       int32     `json:"maxChargeNum"`
	TriggerID          int32     `json:"triggerID"`
	IsAttackCameraLock bool      `json:"isAttackCameraLock"`
	ProudSkillGroupId  int32     `json:"proudSkillGroupId"`
	CostElemType       string    `json:"costElemType"`
	LockWeightParams   []float64 `json:"lockWeightParams"`

	NameTextMapHash int64 `json:"nameTextMapHash"`

	AbilityName    string `json:"abilityName"`
	LockShape      string `json:"lockShape"`
	GlobalValueKey string `json:"globalValueKey"`

	// 计算属性
	CostElemTypeX *constant.ElementTypeValue `json:"-"`
}

func (g *GameDataConfig) loadAvatarSkillData() {
	g.AvatarSkillDataMap = make(map[int32]*AvatarSkillData)
	fileNameList := []string{"AvatarSkillExcelConfigData.json"}
	for _, fileName := range fileNameList {
		fileData, err := os.ReadFile(g.excelBinPrefix + fileName)
		if err != nil {
			logger.LOG.Error("open file error: %v", err)
			continue
		}
		list := make([]map[string]any, 0)
		err = json.Unmarshal(fileData, &list)
		if err != nil {
			logger.LOG.Error("parse file error: %v", err)
			continue
		}
		for _, v := range list {
			i, err := json.Marshal(v)
			if err != nil {
				logger.LOG.Error("parse file error: %v", err)
				continue
			}
			avatarSkillData := new(AvatarSkillData)
			err = json.Unmarshal(i, avatarSkillData)
			if err != nil {
				logger.LOG.Error("parse file error: %v", err)
				continue
			}
			g.AvatarSkillDataMap[avatarSkillData.Id] = avatarSkillData
		}
	}
	logger.LOG.Info("load %v AvatarSkillData", len(g.AvatarSkillDataMap))
	for _, v := range g.AvatarSkillDataMap {
		v.CostElemTypeX = constant.ElementTypeConst.STRING_MAP[v.CostElemType]
	}
}
