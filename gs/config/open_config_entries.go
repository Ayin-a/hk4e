package config

import (
	"encoding/json"
	"hk4e/logger"
	"io/ioutil"
	"os"
	"strings"
)

type SkillPointModifier struct {
	SkillId int32
	Delta   int32
}

type OpenConfigEntry struct {
	Name                string
	AddAbilities        []string
	ExtraTalentIndex    int32
	SkillPointModifiers []*SkillPointModifier
}

func NewOpenConfigEntry(name string, data []*OpenConfigData) (r *OpenConfigEntry) {
	r = new(OpenConfigEntry)
	r.Name = name
	abilityList := make([]string, 0)
	modList := make([]*SkillPointModifier, 0)
	for _, v := range data {
		if strings.Contains(v.DollarType, "AddAbility") {
			abilityList = append(abilityList, v.AbilityName)
		} else if v.TalentIndex > 0 {
			r.ExtraTalentIndex = v.TalentIndex
		} else if strings.Contains(v.DollarType, "ModifySkillPoint") {
			modList = append(modList, &SkillPointModifier{
				SkillId: v.SkillID,
				Delta:   v.PointDelta,
			})
		}
	}
	r.AddAbilities = abilityList
	r.SkillPointModifiers = modList
	return r
}

type OpenConfigData struct {
	DollarType  string `json:"$type"`
	AbilityName string `json:"abilityName"`
	TalentIndex int32  `json:"talentIndex"`
	SkillID     int32  `json:"skillID"`
	PointDelta  int32  `json:"pointDelta"`
}

func (g *GameDataConfig) loadOpenConfig() {
	list := make([]*OpenConfigEntry, 0)
	folderNames := []string{"Talent/EquipTalents", "Talent/AvatarTalents"}
	for _, v := range folderNames {
		dirPath := g.binPrefix + v
		fileList, err := ioutil.ReadDir(dirPath)
		if err != nil {
			logger.LOG.Error("open dir error: %v", err)
			return
		}
		for _, file := range fileList {
			fileName := file.Name()
			if !strings.Contains(fileName, ".json") {
				continue
			}
			config := make(map[string][]*OpenConfigData)
			fileData, err := os.ReadFile(dirPath + "/" + fileName)
			if err != nil {
				logger.LOG.Error("open file error: %v", err)
				continue
			}
			err = json.Unmarshal(fileData, &config)
			if err != nil {
				logger.LOG.Error("parse file error: %v", err)
				continue
			}
			for kk, vv := range config {
				entry := NewOpenConfigEntry(kk, vv)
				list = append(list, entry)
			}
		}
	}
	if len(list) == 0 {
		logger.LOG.Error("no open config entries load")
	}
	g.OpenConfigEntries = make(map[string]*OpenConfigEntry)
	for _, v := range list {
		g.OpenConfigEntries[v.Name] = v
	}
	logger.LOG.Info("load %v OpenConfig", len(g.OpenConfigEntries))
}
