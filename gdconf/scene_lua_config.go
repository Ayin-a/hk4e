package gdconf

import (
	"os"
	"sort"
	"strconv"
	"sync"
	"time"

	"hk4e/common/config"
	"hk4e/pkg/logger"

	lua "github.com/yuin/gopher-lua"
)

// 场景详情配置数据

const (
	SceneGroupLoaderLimit = 4 // 加载文件的并发数 此操作很耗内存 调大之前请确保你的机器内存足够
)

type SceneLuaConfig struct {
	Id          int32
	SceneConfig *SceneConfig     // 地图配置
	BlockMap    map[int32]*Block // 所有的区块
}

type Vector struct {
	X float32 `json:"x"`
	Y float32 `json:"y"`
	Z float32 `json:"z"`
}

type SceneConfig struct {
	BeginPos     *Vector `json:"begin_pos"`
	Size         *Vector `json:"size"`
	BornPos      *Vector `json:"born_pos"`
	BornRot      *Vector `json:"born_rot"`
	DieY         float32 `json:"die_y"`
	VisionAnchor *Vector `json:"vision_anchor"`
}

type Block struct {
	Id               int32
	BlockRange       *BlockRange      // 区块范围坐标
	GroupMap         map[int32]*Group // 所有的group
	groupMapLoadLock sync.Mutex
}

type BlockRange struct {
	Min *Vector `json:"min"`
	Max *Vector `json:"max"`
}

type Group struct {
	Id              int32               `json:"id"`
	RefreshId       int32               `json:"refresh_id"`
	Area            int32               `json:"area"`
	Pos             *Vector             `json:"pos"`
	DynamicLoad     bool                `json:"dynamic_load"`
	IsReplaceable   *Replaceable        `json:"is_replaceable"`
	MonsterMap      map[int32]*Monster  `json:"-"` // 怪物
	NpcMap          map[int32]*Npc      `json:"-"` // NPC
	GadgetMap       map[int32]*Gadget   `json:"-"` // 物件
	RegionMap       map[int32]*Region   `json:"-"` // 区域
	TriggerMap      map[string]*Trigger `json:"-"` // 触发器
	GroupInitConfig *GroupInitConfig    `json:"-"` // 初始化配置
	SuiteMap        map[int32]*Suite    `json:"-"` // 小组配置
	LuaStr          string              `json:"-"` // LUA原始字符串缓存
	LuaState        *lua.LState         `json:"-"` // LUA虚拟机实例
}

type GroupInitConfig struct {
	Suite     int32 `json:"suite"`
	EndSuite  int32 `json:"end_suite"`
	RandSuite bool  `json:"rand_suite"`
}

type Replaceable struct {
	Value      bool  `json:"value"`
	Version    int32 `json:"version"`
	NewBinOnly bool  `json:"new_bin_only"`
}

type Monster struct {
	ConfigId  int32   `json:"config_id"`
	MonsterId int32   `json:"monster_id"`
	Pos       *Vector `json:"pos"`
	Rot       *Vector `json:"rot"`
	Level     int32   `json:"level"`
	AreaId    int32   `json:"area_id"`
	DropTag   string  `json:"drop_tag"` // 关联MonsterDropData表
}

type Npc struct {
	ConfigId int32   `json:"config_id"`
	NpcId    int32   `json:"npc_id"`
	Pos      *Vector `json:"pos"`
	Rot      *Vector `json:"rot"`
	AreaId   int32   `json:"area_id"`
}

type Gadget struct {
	ConfigId    int32   `json:"config_id"`
	GadgetId    int32   `json:"gadget_id"`
	Pos         *Vector `json:"pos"`
	Rot         *Vector `json:"rot"`
	Level       int32   `json:"level"`
	AreaId      int32   `json:"area_id"`
	PointType   int32   `json:"point_type"` // 关联GatherData表
	State       int32   `json:"state"`
	VisionLevel int32   `json:"vision_level"`
	DropTag     string  `json:"drop_tag"`
}

type Region struct {
	ConfigId   int32     `json:"config_id"`
	Shape      int32     `json:"shape"`
	Radius     float32   `json:"radius"`
	Size       *Vector   `json:"size"`
	Pos        *Vector   `json:"pos"`
	Height     float32   `json:"height"`
	PointArray []*Vector `json:"point_array"`
	AreaId     int32     `json:"area_id"`
}

type Trigger struct {
	ConfigId     int32  `json:"config_id"`
	Name         string `json:"name"`
	Event        int32  `json:"event"`
	Source       string `json:"source"`
	Condition    string `json:"condition"`
	Action       string `json:"action"`
	TriggerCount int32  `json:"trigger_count"`
}

type SuiteLuaTable struct {
	MonsterConfigIdList any   `json:"monsters"` // 怪物
	GadgetConfigIdList  any   `json:"gadgets"`  // 物件
	RegionConfigIdList  any   `json:"regions"`  // 区域
	TriggerNameList     any   `json:"triggers"` // 触发器
	RandWeight          int32 `json:"rand_weight"`
}

type Suite struct {
	MonsterConfigIdList []int32
	GadgetConfigIdList  []int32
	RegionConfigIdList  []int32
	TriggerNameList     []string
	RandWeight          int32
}

func (g *GameDataConfig) loadGroup(group *Group, block *Block, sceneId int32, blockId int32) {
	sceneLuaPrefix := g.luaPrefix + "scene/"
	sceneIdStr := strconv.Itoa(int(sceneId))
	groupId := group.Id
	groupIdStr := strconv.Itoa(int(groupId))
	groupLuaData, err := os.ReadFile(sceneLuaPrefix + sceneIdStr + "/scene" + sceneIdStr + "_group" + groupIdStr + ".lua")
	if err != nil {
		logger.Error("open file error: %v, sceneId: %v, blockId: %v, groupId: %v", err, sceneId, blockId, groupId)
		return
	}
	group.LuaStr = string(groupLuaData)
	luaState := newLuaState(group.LuaStr)
	// init_config
	group.GroupInitConfig = new(GroupInitConfig)
	ok := getSceneLuaConfigTable[*GroupInitConfig](luaState, "init_config", group.GroupInitConfig)
	if !ok {
		logger.Error("get init_config object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		luaState.Close()
		return
	}
	// monsters
	monsterList := make([]*Monster, 0)
	ok = getSceneLuaConfigTable[*[]*Monster](luaState, "monsters", &monsterList)
	if !ok {
		logger.Error("get monsters object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		luaState.Close()
		return
	}
	group.MonsterMap = make(map[int32]*Monster)
	for _, monster := range monsterList {
		group.MonsterMap[monster.ConfigId] = monster
	}
	// npcs
	npcList := make([]*Npc, 0)
	ok = getSceneLuaConfigTable[*[]*Npc](luaState, "npcs", &npcList)
	if !ok {
		logger.Error("get npcs object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		luaState.Close()
		return
	}
	group.NpcMap = make(map[int32]*Npc)
	for _, npc := range npcList {
		group.NpcMap[npc.ConfigId] = npc
	}
	// gadgets
	gadgetList := make([]*Gadget, 0)
	ok = getSceneLuaConfigTable[*[]*Gadget](luaState, "gadgets", &gadgetList)
	if !ok {
		logger.Error("get gadgets object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		luaState.Close()
		return
	}
	group.GadgetMap = make(map[int32]*Gadget)
	for _, gadget := range gadgetList {
		group.GadgetMap[gadget.ConfigId] = gadget
	}
	// regions
	regionList := make([]*Region, 0)
	ok = getSceneLuaConfigTable[*[]*Region](luaState, "regions", &regionList)
	if !ok {
		logger.Error("get regions object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		luaState.Close()
		return
	}
	group.RegionMap = make(map[int32]*Region)
	for _, region := range regionList {
		group.RegionMap[region.ConfigId] = region
	}
	// triggers
	triggerList := make([]*Trigger, 0)
	ok = getSceneLuaConfigTable[*[]*Trigger](luaState, "triggers", &triggerList)
	if !ok {
		logger.Error("get triggers object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		luaState.Close()
		return
	}
	group.TriggerMap = make(map[string]*Trigger)
	for _, trigger := range triggerList {
		group.TriggerMap[trigger.Name] = trigger
	}
	// suites
	suiteLuaTableList := make([]*SuiteLuaTable, 0)
	ok = getSceneLuaConfigTable[*[]*SuiteLuaTable](luaState, "suites", &suiteLuaTableList)
	if !ok {
		logger.Error("get suites object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		luaState.Close()
		return
	}
	if len(suiteLuaTableList) == 0 {
		// logger.Debug("get suites object is nil, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
	}
	group.SuiteMap = make(map[int32]*Suite)
	for index, suiteLuaTable := range suiteLuaTableList {
		suite := &Suite{
			MonsterConfigIdList: make([]int32, 0),
			GadgetConfigIdList:  make([]int32, 0),
			RegionConfigIdList:  make([]int32, 0),
			TriggerNameList:     make([]string, 0),
			RandWeight:          suiteLuaTable.RandWeight,
		}
		idAnyList, ok := suiteLuaTable.MonsterConfigIdList.([]any)
		if ok {
			for _, idAny := range idAnyList {
				suite.MonsterConfigIdList = append(suite.MonsterConfigIdList, int32(idAny.(float64)))
			}
		}
		idAnyList, ok = suiteLuaTable.GadgetConfigIdList.([]any)
		if ok {
			for _, idAny := range idAnyList {
				suite.GadgetConfigIdList = append(suite.GadgetConfigIdList, int32(idAny.(float64)))
			}
		}
		idAnyList, ok = suiteLuaTable.RegionConfigIdList.([]any)
		if ok {
			for _, idAny := range idAnyList {
				suite.RegionConfigIdList = append(suite.RegionConfigIdList, int32(idAny.(float64)))
			}
		}
		nameAnyList, ok := suiteLuaTable.TriggerNameList.([]any)
		if ok {
			for _, nameAny := range nameAnyList {
				suite.TriggerNameList = append(suite.TriggerNameList, nameAny.(string))
			}
		}
		group.SuiteMap[int32(len(suiteLuaTableList)-index)] = suite
	}
	luaState.Close()
	block.groupMapLoadLock.Lock()
	block.GroupMap[group.Id] = group
	block.groupMapLoadLock.Unlock()
}

func (g *GameDataConfig) loadSceneLuaConfig() {
	g.SceneLuaConfigMap = make(map[int32]*SceneLuaConfig)
	g.GroupMap = make(map[int32]*Group)
	g.LuaStateLruMap = make(map[int32]*LuaStateLru)
	if !config.GetConfig().Hk4e.LoadSceneLuaConfig {
		return
	}
	sceneLuaPrefix := g.luaPrefix + "scene/"
	for _, sceneData := range g.SceneDataMap {
		sceneId := sceneData.SceneId
		sceneIdStr := strconv.Itoa(int(sceneId))
		mainLuaData, err := os.ReadFile(sceneLuaPrefix + sceneIdStr + "/scene" + sceneIdStr + ".lua")
		if err != nil {
			logger.Info("open file error: %v, sceneId: %v", err, sceneId)
			continue
		}
		luaState := newLuaState(string(mainLuaData))
		sceneLuaConfig := new(SceneLuaConfig)
		sceneLuaConfig.Id = sceneId
		// scene_config
		sceneLuaConfig.SceneConfig = new(SceneConfig)
		ok := getSceneLuaConfigTable[*SceneConfig](luaState, "scene_config", sceneLuaConfig.SceneConfig)
		if !ok {
			logger.Error("get scene_config object error, sceneId: %v", sceneId)
			luaState.Close()
			continue
		}
		sceneLuaConfig.BlockMap = make(map[int32]*Block)
		// blocks
		blockIdList := make([]int32, 0)
		ok = getSceneLuaConfigTable[*[]int32](luaState, "blocks", &blockIdList)
		if !ok {
			logger.Error("get blocks object error, sceneId: %v", sceneId)
			luaState.Close()
			continue
		}
		// block_rects
		blockRectList := make([]*BlockRange, 0)
		ok = getSceneLuaConfigTable[*[]*BlockRange](luaState, "block_rects", &blockRectList)
		luaState.Close()
		if !ok {
			logger.Error("get block_rects object error, sceneId: %v", sceneId)
			continue
		}
		for index, blockId := range blockIdList {
			block := new(Block)
			block.Id = blockId
			if index >= len(blockRectList) {
				continue
			}
			block.BlockRange = blockRectList[index]
			blockIdStr := strconv.Itoa(int(block.Id))
			blockLuaData, err := os.ReadFile(sceneLuaPrefix + sceneIdStr + "/scene" + sceneIdStr + "_block" + blockIdStr + ".lua")
			if err != nil {
				logger.Error("open file error: %v, sceneId: %v, blockId: %v", err, sceneId, blockId)
				continue
			}
			luaState = newLuaState(string(blockLuaData))
			// groups
			block.GroupMap = make(map[int32]*Group)
			groupList := make([]*Group, 0)
			ok = getSceneLuaConfigTable[*[]*Group](luaState, "groups", &groupList)
			luaState.Close()
			if !ok {
				logger.Error("get groups object error, sceneId: %v, blockId: %v", sceneId, blockId)
				continue
			}
			// 因为group文件实在是太多了 有好几万个 所以这里并发同时加载
			wc := make(chan bool, SceneGroupLoaderLimit)
			wg := sync.WaitGroup{}
			for i := 0; i < len(groupList); i++ {
				group := groupList[i]
				wc <- true
				wg.Add(1)
				go func() {
					g.loadGroup(group, block, sceneId, blockId)
					<-wc
					wg.Done()
				}()
				g.GroupMap[group.Id] = group
			}
			wg.Wait()
			sceneLuaConfig.BlockMap[block.Id] = block
		}
		g.SceneLuaConfigMap[sceneId] = sceneLuaConfig
	}
	sceneCount := 0
	blockCount := 0
	groupCount := 0
	monsterCount := 0
	npcCount := 0
	gadgetCount := 0
	for _, scene := range g.SceneLuaConfigMap {
		for _, block := range scene.BlockMap {
			for _, group := range block.GroupMap {
				monsterCount += len(group.MonsterMap)
				npcCount += len(group.NpcMap)
				gadgetCount += len(group.GadgetMap)
				groupCount++
			}
			blockCount++
		}
		sceneCount++
	}
	logger.Info("Scene count: %v, Block count: %v, Group count: %v, Monster count: %v, Npc count: %v, Gadget count: %v",
		sceneCount, blockCount, groupCount, monsterCount, npcCount, gadgetCount)
}

func GetSceneLuaConfigById(sceneId int32) *SceneLuaConfig {
	return CONF.SceneLuaConfigMap[sceneId]
}

func GetSceneLuaConfigMap() map[int32]*SceneLuaConfig {
	return CONF.SceneLuaConfigMap
}

func GetSceneGroup(groupId int32) *Group {
	groupConfig, exist := CONF.GroupMap[groupId]
	if !exist {
		return nil
	}
	return groupConfig
}

const (
	LuaStateLruKeepNum = 10
)

type LuaStateLru struct {
	GroupId    int32
	AccessTime int64
}

type LuaStateLruList []*LuaStateLru

func (l LuaStateLruList) Len() int {
	return len(l)
}

func (l LuaStateLruList) Less(i, j int) bool {
	return l[i].AccessTime < l[j].AccessTime
}

func (l LuaStateLruList) Swap(i, j int) {
	l[i], l[j] = l[j], l[i]
}

func LuaStateLruRemove() {
	removeNum := len(CONF.LuaStateLruMap) - LuaStateLruKeepNum
	if removeNum <= 0 {
		return
	}
	luaStateLruList := make(LuaStateLruList, 0)
	for _, luaStateLru := range CONF.LuaStateLruMap {
		luaStateLruList = append(luaStateLruList, luaStateLru)
	}
	sort.Stable(luaStateLruList)
	for i := 0; i < removeNum; i++ {
		luaStateLru := luaStateLruList[i]
		group := GetSceneGroup(luaStateLru.GroupId)
		group.LuaState = nil
		delete(CONF.LuaStateLruMap, luaStateLru.GroupId)
	}
	logger.Info("lua state lru remove finish, remove num: %v", removeNum)
}

func (g *Group) GetLuaState() *lua.LState {
	CONF.LuaStateLruMap[g.Id] = &LuaStateLru{
		GroupId:    g.Id,
		AccessTime: time.Now().UnixMilli(),
	}
	if g.LuaState == nil {
		g.LuaState = newLuaState(g.LuaStr)
		scriptLib := g.LuaState.NewTable()
		g.LuaState.SetGlobal("ScriptLib", scriptLib)
		for _, scriptLibFunc := range SCRIPT_LIB_FUNC_LIST {
			g.LuaState.SetField(scriptLib, scriptLibFunc.fnName, g.LuaState.NewFunction(scriptLibFunc.fn))
		}
	}
	return g.LuaState
}
