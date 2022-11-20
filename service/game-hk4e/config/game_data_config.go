package config

import (
	appConfig "flswld.com/common/config"
	"flswld.com/logger"
	"io/ioutil"
	"os"
	"runtime"
)

var CONF *GameDataConfig = nil

type GameDataConfig struct {
	binPrefix      string
	excelBinPrefix string
	csvPrefix      string
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
	// 掉落组配置表
	DropGroupDataMap map[int32]*DropGroupData
	// GG
	GadgetDataMap map[int32]*GadgetData
	// 采集物
	GatherDataMap map[int32]*GatherData
}

func InitGameDataConfig() {
	CONF = new(GameDataConfig)
	CONF.binPrefix = ""
	CONF.excelBinPrefix = ""
	CONF.csvPrefix = ""
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
	// 掉落组配置表
	g.loadDropGroupData()
	// GG
	g.loadGadgetData()
	// 采集物
	g.loadGatherData()
}

func (g *GameDataConfig) getResourcePathPrefix() string {
	resourcePath := appConfig.CONF.Hk4e.ResourcePath
	// for dev
	if runtime.GOOS == "windows" {
		resourcePath = "C:/Users/FlourishingWorld/Desktop/GI/GameDataConfigTable"
	}
	return resourcePath
}

func (g *GameDataConfig) loadAll() {
	resourcePath := g.getResourcePathPrefix()
	dirInfo, err := os.Stat(resourcePath)
	if err != nil || !dirInfo.IsDir() {
		logger.LOG.Error("open game data config dir error: %v", err)
		return
	}
	g.binPrefix = resourcePath + "/BinOutput"
	g.excelBinPrefix = resourcePath + "/ExcelBinOutput"
	g.csvPrefix = resourcePath + "/Csv"
	dirInfo, err = os.Stat(g.binPrefix)
	if err != nil || !dirInfo.IsDir() {
		logger.LOG.Error("open game data bin output config dir error: %v", err)
		return
	}
	dirInfo, err = os.Stat(g.excelBinPrefix)
	if err != nil || !dirInfo.IsDir() {
		logger.LOG.Error("open game data excel bin output config dir error: %v", err)
		return
	}
	dirInfo, err = os.Stat(g.csvPrefix)
	if err != nil || !dirInfo.IsDir() {
		logger.LOG.Error("open game data csv config dir error: %v", err)
		return
	}
	g.binPrefix += "/"
	g.excelBinPrefix += "/"
	g.csvPrefix += "/"
	g.load()
}

func (g *GameDataConfig) ReadWorldTerrain() []byte {
	resourcePath := g.getResourcePathPrefix()
	dirInfo, err := os.Stat(resourcePath)
	if err != nil || !dirInfo.IsDir() {
		logger.LOG.Error("open game data config dir error: %v", err)
		return nil
	}
	dirInfo, err = os.Stat(resourcePath + "/WorldStatic")
	if err != nil || !dirInfo.IsDir() {
		logger.LOG.Error("open game data world static dir error: %v", err)
		return nil
	}
	data, err := ioutil.ReadFile(resourcePath + "/WorldStatic/world_terrain.bin")
	if err != nil {
		logger.LOG.Error("read world terrain file error: %v", err)
		return nil
	}
	return data
}

func (g *GameDataConfig) WriteWorldTerrain(data []byte) {
	resourcePath := g.getResourcePathPrefix()
	dirInfo, err := os.Stat(resourcePath)
	if err != nil || !dirInfo.IsDir() {
		logger.LOG.Error("open game data config dir error: %v", err)
		return
	}
	dirInfo, err = os.Stat(resourcePath + "/WorldStatic")
	if err != nil || !dirInfo.IsDir() {
		logger.LOG.Error("open game data world static dir error: %v", err)
		return
	}
	err = ioutil.WriteFile(resourcePath+"/WorldStatic/world_terrain.bin", data, 0644)
	if err != nil {
		logger.LOG.Error("write world terrain file error: %v", err)
		return
	}
}
