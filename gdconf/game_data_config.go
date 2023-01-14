package gdconf

import (
	"encoding/json"
	"fmt"
	"os"
	"strings"

	"hk4e/common/config"
	"hk4e/pkg/logger"

	lua "github.com/yuin/gopher-lua"
)

// 游戏数据配置表

var CONF *GameDataConfig = nil

type GameDataConfig struct {
	// 配置表路径前缀
	csvPrefix  string
	jsonPrefix string
	luaPrefix  string
	// 配置表数据
	AvatarDataMap           map[int32]*AvatarData           // 角色
	AvatarSkillDataMap      map[int32]*AvatarSkillData      // 角色技能
	AvatarSkillDepotDataMap map[int32]*AvatarSkillDepotData // 角色技能库
	DropGroupDataMap        map[int32]*DropGroupData        // 掉落组
	GCGCharDataMap          map[int32]*GCGCharData          // 角色卡牌
	GCGSkillDataMap         map[int32]*GCGSkillData         // 卡牌技能
	SceneDataMap            map[int32]*SceneData            // 场景
	SceneMap                map[int32]*Scene                // 场景详情
}

func InitGameDataConfig() {
	CONF = new(GameDataConfig)
	CONF.loadAll()
	logger.Info("load all game data config finish")
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

	g.luaPrefix = pathPrefix + "/lua"
	dirInfo, err = os.Stat(g.luaPrefix)
	if err != nil || !dirInfo.IsDir() {
		info := fmt.Sprintf("open game data config lua dir error: %v", err)
		panic(info)
	}
	g.luaPrefix += "/"

	g.load()
}

func (g *GameDataConfig) load() {
	g.loadAvatarData()           // 角色
	g.loadAvatarSkillData()      // 角色技能
	g.loadAvatarSkillDepotData() // 角色技能库
	g.loadDropGroupData()        // 掉落组
	g.loadGCGCharData()          // 角色卡牌
	g.loadGCGSkillData()         // 卡牌技能
	g.loadSceneData()            // 场景
	g.loadScene()                // 场景详情
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

func fixLuaState(luaStr string) *lua.LState {
	fixLua := ""
	fixLua += "GadgetState = {}"
	fixLua += "EventType = {}"
	fixLua += "RegionShape = {}"
	fixLua += "VisionLevelType = {}"
	luaLineList := strings.Split(luaStr, "\n")
	luaStr = ""
	for _, luaLine := range luaLineList {
		line := strings.TrimSpace(luaLine)
		if len(line) != 0 && line[0] == '[' && strings.Contains(line, "]") && strings.Contains(line, "=") {
			luaStr += luaLine[strings.Index(luaLine, "=")+1:] + "\n"
		} else {
			luaStr += luaLine + "\n"
		}
	}
	luaStr = fixLua + luaStr
	luaState := lua.NewState()
	err := luaState.DoString(luaStr)
	if err != nil {
		if !strings.Contains(err.Error(), "module") {
			logger.Error("lua parse error: %v", err)
		}
	}
	return luaState
}

func parseLuaTableToObject[T any](luaState *lua.LState, tableName string, object T) bool {
	luaValue := luaState.GetGlobal(tableName)
	table, ok := luaValue.(*lua.LTable)
	if !ok {
		logger.Info("get lua table error, table name: %v, lua type: %v", tableName, luaValue.Type().String())
		return false
	}
	tableObject := convLuaValueToGo(table)
	jsonData, err := json.Marshal(tableObject)
	if err != nil {
		logger.Error("build json error: %v", err)
		return false
	}
	if string(jsonData) == "{}" {
		return true
	}
	err = json.Unmarshal(jsonData, object)
	if err != nil {
		logger.Error("parse json error: %v", err)
		return false
	}
	return true
}

func convLuaValueToGo(lv lua.LValue) any {
	switch v := lv.(type) {
	case *lua.LNilType:
		return nil
	case lua.LBool:
		return bool(v)
	case lua.LString:
		return string(v)
	case lua.LNumber:
		return float64(v)
	case *lua.LTable:
		maxn := v.MaxN()
		if maxn == 0 {
			// table
			ret := make(map[string]any)
			v.ForEach(func(key, value lua.LValue) {
				keystr := fmt.Sprint(convLuaValueToGo(key))
				ret[keystr] = convLuaValueToGo(value)
			})
			return ret
		} else {
			// array
			ret := make([]any, 0, maxn)
			for i := 1; i <= maxn; i++ {
				ret = append(ret, convLuaValueToGo(v.RawGetInt(i)))
			}
			return ret
		}
	default:
		return v
	}
}
