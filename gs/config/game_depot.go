package config

import (
	"encoding/json"
	"os"

	"hk4e/pkg/logger"
)

type GameDepot struct {
	PlayerAbilities map[string]*AvatarConfig
}

func (g *GameDataConfig) loadGameDepot() {
	g.GameDepot = new(GameDepot)
	playerElementsFilePath := g.binPrefix + "AbilityGroup/AbilityGroup_Other_PlayerElementAbility.json"
	playerElementsFile, err := os.ReadFile(playerElementsFilePath)
	if err != nil {
		logger.Error("open file error: %v", err)
		return
	}
	playerAbilities := make(map[string]*AvatarConfig)
	err = json.Unmarshal(playerElementsFile, &playerAbilities)
	if err != nil {
		logger.Error("parse file error: %v", err)
		return
	}
	g.GameDepot.PlayerAbilities = playerAbilities
	logger.Info("load %v PlayerAbilities", len(g.GameDepot.PlayerAbilities))
}
