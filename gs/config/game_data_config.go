package config

import (
	"os"

	appConfig "hk4e/common/config"
	"hk4e/pkg/logger"
)

var CONF *GameDataConfig = nil

type GameDataConfig struct {
	binPrefix      string
	excelBinPrefix string
	GameDepot      *GameDepot
	// 配置表
	// BinOutput
	// 技能列表
	AbilityEmbryos    map[string]*AbilityEmbryoEntry
	OpenConfigEntries map[string]*OpenConfigEntry
	// ExcelBinOutput
	FetterDataMap       map[int32]*FetterData
	AvatarFetterDataMap map[int32][]int32
	// 资源
	// 场景传送点
	ScenePointEntries map[string]*ScenePointEntry
	ScenePointIdList  []int32
	// 角色
	AvatarDataMap map[int32]*AvatarData
	// 道具
	ItemDataMap map[int32]*ItemData
	// 角色技能
	AvatarSkillDataMap      map[int32]*AvatarSkillData
	AvatarSkillDepotDataMap map[int32]*AvatarSkillDepotData
	// GG
	GadgetDataMap map[int32]*GadgetData
	// 采集物
	GatherDataMap map[int32]*GatherData
}

func InitGameDataConfig() {
	CONF = new(GameDataConfig)
	CONF.binPrefix = ""
	CONF.excelBinPrefix = ""
	CONF.loadAll()
}

func (g *GameDataConfig) load() {
	g.loadGameDepot()
	// 技能列表
	g.loadAbilityEmbryos()
	g.loadOpenConfig()
	// 资源
	g.loadFetterData()
	// 场景传送点
	g.loadScenePoints()
	// 角色
	g.loadAvatarData()
	// 道具
	g.loadItemData()
	// 角色技能
	g.loadAvatarSkillData()
	g.loadAvatarSkillDepotData()
	// GG
	g.loadGadgetData()
	// 采集物
	g.loadGatherData()
}

func (g *GameDataConfig) getResourcePathPrefix() string {
	resourcePath := appConfig.CONF.Hk4e.ResourcePath
	return resourcePath
}

func (g *GameDataConfig) loadAll() {
	resourcePath := g.getResourcePathPrefix()
	dirInfo, err := os.Stat(resourcePath)
	if err != nil || !dirInfo.IsDir() {
		logger.Error("open game data config dir error: %v", err)
		return
	}
	g.binPrefix = resourcePath + "/BinOutput"
	g.excelBinPrefix = resourcePath + "/ExcelBinOutput"
	dirInfo, err = os.Stat(g.binPrefix)
	if err != nil || !dirInfo.IsDir() {
		logger.Error("open game data bin output config dir error: %v", err)
		return
	}
	dirInfo, err = os.Stat(g.excelBinPrefix)
	if err != nil || !dirInfo.IsDir() {
		logger.Error("open game data excel bin output config dir error: %v", err)
		return
	}
	g.binPrefix += "/"
	g.excelBinPrefix += "/"
	g.load()
}
