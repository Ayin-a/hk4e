package gdconf

import (
	"bytes"
	"encoding/csv"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"runtime"
	"strconv"
	"strings"
	"time"

	"hk4e/common/config"
	"hk4e/common/constant"
	"hk4e/pkg/logger"

	"github.com/jszwec/csvutil"
	lua "github.com/yuin/gopher-lua"
)

// 游戏数据配置表

var CONF *GameDataConfig = nil
var CONF_RELOAD *GameDataConfig = nil

type GameDataConfig struct {
	// 配置表路径前缀
	txtPrefix  string
	jsonPrefix string
	luaPrefix  string
	extPrefix  string
	// 配置表数据
	SceneDataMap            map[int32]*SceneData                    // 场景
	SceneLuaConfigMap       map[int32]*SceneLuaConfig               // 场景LUA配置
	GroupMap                map[int32]*Group                        // 场景LUA区块group索引
	LuaStateLruMap          map[int32]*LuaStateLru                  // 场景LUA虚拟机LRU内存淘汰
	TriggerDataMap          map[int32]*TriggerData                  // 场景LUA触发器
	ScenePointMap           map[int32]*ScenePoint                   // 场景传送点
	SceneTagDataMap         map[int32]*SceneTagData                 // 场景标签
	GatherDataMap           map[int32]*GatherData                   // 采集物
	GatherDataPointTypeMap  map[int32]*GatherData                   // 采集物场景节点索引
	WorldAreaDataMap        map[int32]*WorldAreaData                // 世界区域
	AvatarDataMap           map[int32]*AvatarData                   // 角色
	AvatarSkillDataMap      map[int32]*AvatarSkillData              // 角色技能
	AvatarSkillDepotDataMap map[int32]*AvatarSkillDepotData         // 角色技能库
	FetterDataMap           map[int32]*FetterData                   // 角色资料解锁
	FetterDataAvatarIdMap   map[int32][]int32                       // 角色资料解锁角色id索引
	ItemDataMap             map[int32]*ItemData                     // 统一道具
	AvatarLevelDataMap      map[int32]*AvatarLevelData              // 角色等级
	AvatarPromoteDataMap    map[int32]map[int32]*AvatarPromoteData  // 角色突破
	PlayerLevelDataMap      map[int32]*PlayerLevelData              // 玩家等级
	WeaponLevelDataMap      map[int32]*WeaponLevelData              // 武器等级
	WeaponPromoteDataMap    map[int32]map[int32]*WeaponPromoteData  // 角色突破
	RewardDataMap           map[int32]*RewardData                   // 奖励
	AvatarCostumeDataMap    map[int32]*AvatarCostumeData            // 角色时装
	AvatarFlycloakDataMap   map[int32]*AvatarFlycloakData           // 角色风之翼
	ReliquaryMainDataMap    map[int32]map[int32]*ReliquaryMainData  // 圣遗物主属性
	ReliquaryAffixDataMap   map[int32]map[int32]*ReliquaryAffixData // 圣遗物追加属性
	QuestDataMap            map[int32]*QuestData                    // 任务
	ParentQuestMap          map[int32]map[int32]*QuestData          // 父任务索引
	DropDataMap             map[int32]*DropData                     // 掉落
	MonsterDropDataMap      map[string]map[int32]*MonsterDropData   // 怪物掉落
	ChestDropDataMap        map[string]map[int32]*ChestDropData     // 宝箱掉落
	DungeonDataMap          map[int32]*DungeonData                  // 地牢
	GadgetDataMap           map[int32]*GadgetData                   // 物件
	GCGCharDataMap          map[int32]*GCGCharData                  // 七圣召唤角色卡牌
	GCGSkillDataMap         map[int32]*GCGSkillData                 // 七圣召唤卡牌技能
	GachaDropGroupDataMap   map[int32]*GachaDropGroupData           // 卡池掉落组 临时的
	SkillStaminaDataMap     map[int32]*SkillStaminaData             // 角色技能消耗体力 临时的
}

func InitGameDataConfig() {
	CONF = new(GameDataConfig)
	startTime := time.Now().Unix()
	CONF.loadAll()
	endTime := time.Now().Unix()
	runtime.GC()
	logger.Info("load all game data config finish, cost: %v(s)", endTime-startTime)
}

func ReloadGameDataConfig() {
	CONF_RELOAD = new(GameDataConfig)
	startTime := time.Now().Unix()
	CONF_RELOAD.loadAll()
	endTime := time.Now().Unix()
	runtime.GC()
	logger.Info("reload all game data config finish, cost: %v(s)", endTime-startTime)
}

func ReplaceGameDataConfig() {
	CONF = CONF_RELOAD
}

func (g *GameDataConfig) loadAll() {
	pathPrefix := config.GetConfig().Hk4e.GameDataConfigPath

	dirInfo, err := os.Stat(pathPrefix)
	if err != nil || !dirInfo.IsDir() {
		info := fmt.Sprintf("open game data config dir error: %v", err)
		panic(info)
	}

	g.txtPrefix = pathPrefix + "/txt"
	dirInfo, err = os.Stat(g.txtPrefix)
	if err != nil || !dirInfo.IsDir() {
		info := fmt.Sprintf("open game data config txt dir error: %v", err)
		panic(info)
	}
	g.txtPrefix += "/"

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

	g.extPrefix = pathPrefix + "/ext"
	dirInfo, err = os.Stat(g.extPrefix)
	if err != nil || !dirInfo.IsDir() {
		info := fmt.Sprintf("open game data config ext dir error: %v", err)
		panic(info)
	}
	g.extPrefix += "/"

	g.load()
}

func (g *GameDataConfig) load() {
	g.loadSceneData()            // 场景
	g.loadSceneLuaConfig()       // 场景LUA配置
	g.loadTriggerData()          // 场景LUA触发器
	g.loadScenePoint()           // 场景传送点
	g.loadSceneTagData()         // 场景标签
	g.loadGatherData()           // 采集物
	g.loadWorldAreaData()        // 世界区域
	g.loadAvatarData()           // 角色
	g.loadAvatarSkillData()      // 角色技能
	g.loadAvatarSkillDepotData() // 角色技能库
	g.loadFetterData()           // 角色资料解锁
	g.loadItemData()             // 统一道具
	g.loadAvatarLevelData()      // 角色等级
	g.loadAvatarPromoteData()    // 角色突破
	g.loadPlayerLevelData()      // 玩家等级
	g.loadWeaponLevelData()      // 武器等级
	g.loadWeaponPromoteData()    // 武器突破
	g.loadRewardData()           // 奖励
	g.loadAvatarCostumeData()    // 角色时装
	g.loadAvatarFlycloakData()   // 角色风之翼
	g.loadReliquaryMainData()    // 圣遗物主属性
	g.loadReliquaryAffixData()   // 圣遗物追加属性
	g.loadQuestData()            // 任务
	g.loadDropData()             // 掉落
	g.loadMonsterDropData()      // 怪物掉落
	g.loadChestDropData()        // 宝箱掉落
	g.loadDungeonData()          // 地牢
	g.loadGadgetData()           // 物件
	g.loadGCGCharData()          // 七圣召唤角色卡牌
	g.loadGCGSkillData()         // 七圣召唤卡牌技能
	g.loadGachaDropGroupData()   // 卡池掉落组 临时的
	g.loadSkillStaminaData()     // 角色技能消耗体力 临时的
}

// CSV相关

func splitStringArray(str string) []string {
	if str == "" {
		return make([]string, 0)
	} else if strings.Contains(str, ";") {
		return strings.Split(str, ";")
	} else if strings.Contains(str, ",") {
		return strings.Split(str, ",")
	} else {
		return []string{str}
	}
}

type IntArray []int32

func (a *IntArray) UnmarshalCSV(data []byte) error {
	str := string(data)
	str = strings.ReplaceAll(str, " ", "")
	intStrList := splitStringArray(str)
	for _, intStr := range intStrList {
		v, err := strconv.ParseInt(intStr, 10, 32)
		if err != nil {
			panic(err)
		}
		*a = append(*a, int32(v))
	}
	return nil
}

type FloatArray []float32

func (a *FloatArray) UnmarshalCSV(data []byte) error {
	str := string(data)
	str = strings.ReplaceAll(str, " ", "")
	floatStrList := splitStringArray(str)
	for _, floatStr := range floatStrList {
		v, err := strconv.ParseFloat(floatStr, 32)
		if err != nil {
			panic(err)
		}
		*a = append(*a, float32(v))
	}
	return nil
}

func readExtCsv[T any](tablePath string, table *[]*T) {
	fileData, err := os.ReadFile(tablePath)
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
	err = csvutil.Unmarshal(standardCsvData, table)
	if err != nil {
		info := fmt.Sprintf("parse file error: %v", err)
		panic(info)
	}
}

func readTable[T any](tablePath string, table *[]*T) {
	fileData, err := os.ReadFile(tablePath)
	if err != nil {
		info := fmt.Sprintf("open file error: %v", err)
		panic(info)
	}
	reader := csv.NewReader(bytes.NewBuffer(fileData))
	reader.Comma = '\t'
	reader.LazyQuotes = true
	dec, err := csvutil.NewDecoder(reader)
	if err != nil {
		info := fmt.Sprintf("create decoder error: %v", err)
		panic(info)
	}
	for {
		t := new(T)
		err := dec.Decode(t)
		if err == io.EOF {
			break
		}
		if err != nil {
			info := fmt.Sprintf("decode file error: %v", err)
			panic(info)
		}
		*table = append(*table, t)
	}
}

// LUA相关

type ScriptLibFunc struct {
	fnName string
	fn     lua.LGFunction
}

var SCRIPT_LIB_FUNC_LIST = make([]*ScriptLibFunc, 0)

func RegScriptLibFunc(fnName string, fn lua.LGFunction) {
	SCRIPT_LIB_FUNC_LIST = append(SCRIPT_LIB_FUNC_LIST, &ScriptLibFunc{
		fnName: fnName,
		fn:     fn,
	})
}

func initLuaState(luaState *lua.LState) {
	eventType := luaState.NewTable()
	luaState.SetGlobal("EventType", eventType)
	luaState.SetField(eventType, "EVENT_NONE", lua.LNumber(constant.LUA_EVENT_NONE))
	luaState.SetField(eventType, "EVENT_ENTER_REGION", lua.LNumber(constant.LUA_EVENT_ENTER_REGION))
	luaState.SetField(eventType, "EVENT_LEAVE_REGION", lua.LNumber(constant.LUA_EVENT_LEAVE_REGION))
	luaState.SetField(eventType, "EVENT_ANY_MONSTER_DIE", lua.LNumber(constant.LUA_EVENT_ANY_MONSTER_DIE))
	luaState.SetField(eventType, "EVENT_ANY_MONSTER_LIVE", lua.LNumber(constant.LUA_EVENT_ANY_MONSTER_LIVE))
	luaState.SetField(eventType, "EVENT_QUEST_START", lua.LNumber(constant.LUA_EVENT_QUEST_START))

	entityType := luaState.NewTable()
	luaState.SetGlobal("EntityType", entityType)
	luaState.SetField(entityType, "NONE", lua.LNumber(constant.ENTITY_TYPE_NONE))
	luaState.SetField(entityType, "AVATAR", lua.LNumber(constant.ENTITY_TYPE_AVATAR))
	luaState.SetField(entityType, "MONSTER", lua.LNumber(constant.ENTITY_TYPE_MONSTER))
	luaState.SetField(entityType, "NPC", lua.LNumber(constant.ENTITY_TYPE_NPC))
	luaState.SetField(entityType, "GADGET", lua.LNumber(constant.ENTITY_TYPE_GADGET))

	regionShape := luaState.NewTable()
	luaState.SetGlobal("RegionShape", regionShape)
	luaState.SetField(regionShape, "NONE", lua.LNumber(constant.REGION_SHAPE_NONE))
	luaState.SetField(regionShape, "SPHERE", lua.LNumber(constant.REGION_SHAPE_SPHERE))
	luaState.SetField(regionShape, "CUBIC", lua.LNumber(constant.REGION_SHAPE_CUBIC))
	luaState.SetField(regionShape, "CYLINDER", lua.LNumber(constant.REGION_SHAPE_CYLINDER))
	luaState.SetField(regionShape, "POLYGON", lua.LNumber(constant.REGION_SHAPE_POLYGON))

	questState := luaState.NewTable()
	luaState.SetGlobal("QuestState", questState)
	luaState.SetField(questState, "NONE", lua.LNumber(constant.QUEST_STATE_NONE))
	luaState.SetField(questState, "UNSTARTED", lua.LNumber(constant.QUEST_STATE_UNSTARTED))
	luaState.SetField(questState, "UNFINISHED", lua.LNumber(constant.QUEST_STATE_UNFINISHED))
	luaState.SetField(questState, "FINISHED", lua.LNumber(constant.QUEST_STATE_FINISHED))
	luaState.SetField(questState, "FAILED", lua.LNumber(constant.QUEST_STATE_FAILED))

	gadgetState := luaState.NewTable()
	luaState.SetGlobal("GadgetState", gadgetState)
	luaState.SetField(gadgetState, "Default", lua.LNumber(constant.GADGET_STATE_DEFAULT))
	luaState.SetField(gadgetState, "ChestLocked", lua.LNumber(constant.GADGET_STATE_CHEST_LOCKED))
	luaState.SetField(gadgetState, "GearStart", lua.LNumber(constant.GADGET_STATE_GEAR_START))
	luaState.SetField(gadgetState, "GearStop", lua.LNumber(constant.GADGET_STATE_GEAR_STOP))

	visionLevelType := luaState.NewTable()
	luaState.SetGlobal("VisionLevelType", visionLevelType)
	luaState.SetField(visionLevelType, "VISION_LEVEL_NEARBY", lua.LNumber(1))
	luaState.SetField(visionLevelType, "VISION_LEVEL_NORMAL", lua.LNumber(2))
	luaState.SetField(visionLevelType, "VISION_LEVEL_REMOTE", lua.LNumber(3))
	luaState.SetField(visionLevelType, "VISION_LEVEL_LITTLE_REMOTE", lua.LNumber(4))
}

func newLuaState(luaStr string) *lua.LState {
	luaState := lua.NewState(lua.Options{
		IncludeGoStackTrace: true,
	})
	initLuaState(luaState)
	err := luaState.DoString(luaStr)
	if err != nil {
		if strings.Contains(err.Error(), "module") && strings.Contains(err.Error(), "not found") {
			luaLineList := strings.Split(luaStr, "\n")
			luaStr = ""
			for _, luaLine := range luaLineList {
				if !strings.Contains(luaLine, "require") {
					luaStr += luaLine + "\n"
				}
			}
			err = luaState.DoString(luaStr)
		}
		if err != nil {
			logger.Error("lua parse error: %v", err)
		}
	}
	return luaState
}

func getSceneLuaConfigTable[T any](luaState *lua.LState, tableName string, object T) bool {
	luaValue := luaState.GetGlobal(tableName)
	table, ok := luaValue.(*lua.LTable)
	if !ok {
		// logger.Debug("get lua table error, table name: %v, lua type: %v", tableName, luaValue.Type().String())
		return true
	}
	tableObject := convLuaValueToGo(table)
	switch tableObject.(type) {
	case map[string]any:
	case []any:
		// 去除数组开头的空元素
		rawObjectList := tableObject.([]any)
		objectList := make([]any, 0)
		for i := len(rawObjectList) - 1; i >= 0; i-- {
			if rawObjectList[i] == nil {
				break
			}
			objectList = append(objectList, rawObjectList[i])
		}
		tableObject = objectList
	default:
		logger.Error("not support type")
		return false
	}
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

func ParseLuaTableToObject[T any](table *lua.LTable, object T) bool {
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
