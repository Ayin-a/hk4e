package config

import (
	"encoding/json"
	"os"
	"strings"

	"hk4e/pkg/logger"
)

type AvatarConfigAbility struct {
	AbilityName string `json:"abilityName"`
}

type AvatarConfig struct {
	Abilities       []*AvatarConfigAbility `json:"abilities"`
	TargetAbilities []*AvatarConfigAbility `json:"targetAbilities"`
}

type AbilityEmbryoEntry struct {
	Name      string
	Abilities []string
}

func (g *GameDataConfig) loadAbilityEmbryos() {
	dirPath := g.binPrefix + "Avatar"
	fileList, err := os.ReadDir(dirPath)
	if err != nil {
		logger.LOG.Error("open dir error: %v", err)
		return
	}
	embryoList := make([]*AbilityEmbryoEntry, 0)
	for _, file := range fileList {
		fileName := file.Name()
		if !strings.Contains(fileName, "ConfigAvatar_") {
			continue
		}
		startIndex := strings.Index(fileName, "ConfigAvatar_")
		endIndex := strings.Index(fileName, ".json")
		if startIndex == -1 || endIndex == -1 || startIndex+13 > endIndex {
			logger.LOG.Error("file name format error: %v", fileName)
			continue
		}
		avatarName := fileName[startIndex+13 : endIndex]
		fileData, err := os.ReadFile(dirPath + "/" + fileName)
		if err != nil {
			logger.LOG.Error("open file error: %v", err)
			continue
		}
		avatarConfig := new(AvatarConfig)
		err = json.Unmarshal(fileData, avatarConfig)
		if err != nil {
			logger.LOG.Error("parse file error: %v", err)
			continue
		}
		if len(avatarConfig.Abilities) == 0 {
			continue
		}
		abilityEmbryoEntry := new(AbilityEmbryoEntry)
		abilityEmbryoEntry.Name = avatarName
		for _, v := range avatarConfig.Abilities {
			abilityEmbryoEntry.Abilities = append(abilityEmbryoEntry.Abilities, v.AbilityName)
		}
		embryoList = append(embryoList, abilityEmbryoEntry)
	}
	if len(embryoList) == 0 {
		logger.LOG.Error("no embryo load")
	}
	g.AbilityEmbryos = make(map[string]*AbilityEmbryoEntry)
	for _, v := range embryoList {
		g.AbilityEmbryos[v.Name] = v
	}
	logger.LOG.Info("load %v AbilityEmbryos", len(g.AbilityEmbryos))
}
