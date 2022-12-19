package gdconf

import (
	"fmt"
	"os"
	"strings"

	"hk4e/common/config"
)

// 游戏数据配置表

var CONF *GameDataConfig = nil

type GameDataConfig struct {
	// 配置表路径前缀
	csvPrefix  string
	jsonPrefix string
	// 配置表数据
	AvatarDataMap           map[int32]*AvatarData           // 角色
	AvatarSkillDataMap      map[int32]*AvatarSkillData      // 角色技能
	AvatarSkillDepotDataMap map[int32]*AvatarSkillDepotData // 角色技能库
	DropGroupDataMap        map[int32]*DropGroupData        // 掉落组
}

func InitGameDataConfig() {
	CONF = new(GameDataConfig)
	CONF.csvPrefix = ""
	CONF.loadAll()
}

func (g *GameDataConfig) loadAll() {
	pathPrefix := config.CONF.Hk4e.GameDataConfigPath

	dirInfo, err := os.Stat(pathPrefix)
	if err != nil || !dirInfo.IsDir() {
		info := fmt.Sprintf("open game data config dir error: %v", err)
		panic(info)
	}

	g.csvPrefix = pathPrefix + "/csv"
	dirInfo, err = os.Stat(g.csvPrefix)
	if err != nil || !dirInfo.IsDir() {
		info := fmt.Sprintf("open game data config csv dir error: %v", err)
		panic(info)
	}
	g.csvPrefix += "/"

	g.jsonPrefix = pathPrefix + "/json"
	dirInfo, err = os.Stat(g.jsonPrefix)
	if err != nil || !dirInfo.IsDir() {
		info := fmt.Sprintf("open game data config json dir error: %v", err)
		panic(info)
	}
	g.jsonPrefix += "/"

	g.load()
}

func (g *GameDataConfig) load() {
	g.loadAvatarData()           // 角色
	g.loadAvatarSkillData()      // 角色技能
	g.loadAvatarSkillDepotData() // 角色技能库
	g.loadDropGroupData()        // 掉落组
}

func (g *GameDataConfig) readCsvFileData(fileName string) []byte {
	fileData, err := os.ReadFile(g.csvPrefix + fileName)
	if err != nil {
		info := fmt.Sprintf("open file error: %v", err)
		panic(info)
	}
	// 去除第二三行的内容变成标准格式的csv
	index1 := strings.Index(string(fileData), "\n")
	index2 := strings.Index(string(fileData[(index1+1):]), "\n")
	index3 := strings.Index(string(fileData[(index2+1)+(index1+1):]), "\n")
	standardCsvData := make([]byte, 0)
	standardCsvData = append(standardCsvData, fileData[:index1]...)
	standardCsvData = append(standardCsvData, fileData[index3+(index2+1)+(index1+1):]...)
	return standardCsvData
}
