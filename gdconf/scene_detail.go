package gdconf

import (
	"os"
	"strconv"
	"sync"

	"hk4e/pkg/logger"
)

// 场景详情配置数据

const (
	SceneGroupLoaderLimit = 4 // 加载文件的并发数 此操作很耗内存 调大之前请确保你的机器内存足够
)

type SceneDetail struct {
	Id          int32
	SceneConfig *SceneConfig     // 地图配置
	BlockMap    map[int32]*Block // 所有的区块
}

type Vector struct {
	X float64 `json:"x"`
	Y float64 `json:"y"`
	Z float64 `json:"z"`
}

type SceneConfig struct {
	BeginPos     *Vector `json:"begin_pos"`
	Size         *Vector `json:"size"`
	BornPos      *Vector `json:"born_pos"`
	BornRot      *Vector `json:"born_rot"`
	DieY         float64 `json:"die_y"`
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
	Id            int32        `json:"id"`
	RefreshId     int32        `json:"refresh_id"`
	Area          int32        `json:"area"`
	Pos           *Vector      `json:"pos"`
	IsReplaceable *Replaceable `json:"is_replaceable"`
	MonsterList   []*Monster   `json:"monsters"` // 怪物
	NpcList       []*Npc       `json:"npcs"`     // NPC
	GadgetList    []*Gadget    `json:"gadgets"`  // 装置
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
}

type Npc struct {
	ConfigId int32   `json:"config_id"`
	NpcId    int32   `json:"npc_id"`
	Pos      *Vector `json:"pos"`
	Rot      *Vector `json:"rot"`
	AreaId   int32   `json:"area_id"`
}

type Gadget struct {
	ConfigId  int32   `json:"config_id"`
	GadgetId  int32   `json:"gadget_id"`
	Pos       *Vector `json:"pos"`
	Rot       *Vector `json:"rot"`
	Level     int32   `json:"level"`
	AreaId    int32   `json:"area_id"`
	PointType int32   `json:"point_type"` // 关联GatherData表
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
	luaState := fixLuaState(string(groupLuaData))
	// monsters
	group.MonsterList = make([]*Monster, 0)
	ok := parseLuaTableToObject[*[]*Monster](luaState, "monsters", &group.MonsterList)
	if !ok {
		logger.Error("get monsters object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		luaState.Close()
		return
	}
	// npcs
	group.NpcList = make([]*Npc, 0)
	ok = parseLuaTableToObject[*[]*Npc](luaState, "npcs", &group.NpcList)
	if !ok {
		logger.Error("get npcs object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		luaState.Close()
		return
	}
	// gadgets
	group.GadgetList = make([]*Gadget, 0)
	ok = parseLuaTableToObject[*[]*Gadget](luaState, "gadgets", &group.GadgetList)
	luaState.Close()
	if !ok {
		logger.Error("get gadgets object error, sceneId: %v, blockId: %v, groupId: %v", sceneId, blockId, groupId)
		return
	}
	block.groupMapLoadLock.Lock()
	block.GroupMap[group.Id] = group
	block.groupMapLoadLock.Unlock()
}

func (g *GameDataConfig) loadScene() {
	g.SceneDetailMap = make(map[int32]*SceneDetail)
	sceneLuaPrefix := g.luaPrefix + "scene/"
	for _, sceneData := range g.SceneDataMap {
		sceneId := sceneData.SceneId
		sceneIdStr := strconv.Itoa(int(sceneId))
		mainLuaData, err := os.ReadFile(sceneLuaPrefix + sceneIdStr + "/scene" + sceneIdStr + ".lua")
		if err != nil {
			logger.Info("open file error: %v, sceneId: %v", err, sceneId)
			continue
		}
		luaState := fixLuaState(string(mainLuaData))
		sceneDetail := new(SceneDetail)
		sceneDetail.Id = sceneId
		// scene_config
		sceneDetail.SceneConfig = new(SceneConfig)
		ok := parseLuaTableToObject[*SceneConfig](luaState, "scene_config", sceneDetail.SceneConfig)
		if !ok {
			logger.Error("get scene_config object error, sceneId: %v", sceneId)
			luaState.Close()
			continue
		}
		sceneDetail.BlockMap = make(map[int32]*Block)
		// blocks
		blockIdList := make([]int32, 0)
		ok = parseLuaTableToObject[*[]int32](luaState, "blocks", &blockIdList)
		if !ok {
			logger.Error("get blocks object error, sceneId: %v", sceneId)
			luaState.Close()
			continue
		}
		// block_rects
		blockRectList := make([]*BlockRange, 0)
		ok = parseLuaTableToObject[*[]*BlockRange](luaState, "block_rects", &blockRectList)
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
			luaState = fixLuaState(string(blockLuaData))
			// groups
			block.GroupMap = make(map[int32]*Group)
			groupList := make([]*Group, 0)
			ok = parseLuaTableToObject[*[]*Group](luaState, "groups", &groupList)
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
			}
			wg.Wait()
			sceneDetail.BlockMap[block.Id] = block
		}
		g.SceneDetailMap[sceneId] = sceneDetail
	}
	sceneCount := 0
	blockCount := 0
	groupCount := 0
	monsterCount := 0
	npcCount := 0
	gadgetCount := 0
	for _, scene := range g.SceneDetailMap {
		for _, block := range scene.BlockMap {
			for _, group := range block.GroupMap {
				monsterCount += len(group.MonsterList)
				npcCount += len(group.NpcList)
				gadgetCount += len(group.GadgetList)
				groupCount++
			}
			blockCount++
		}
		sceneCount++
	}
	logger.Info("Scene count: %v, Block count: %v, Group count: %v, Monster count: %v, Npc count: %v, Gadget count: %v",
		sceneCount, blockCount, groupCount, monsterCount, npcCount, gadgetCount)
}

func GetSceneDetailById(sceneId int32) *SceneDetail {
	return CONF.SceneDetailMap[sceneId]
}

func GetSceneDetailMap() map[int32]*SceneDetail {
	return CONF.SceneDetailMap
}

func GetSceneBlockConfig(sceneId int32, blockId int32) ([]*Monster, []*Npc, []*Gadget, bool) {
	monsterList := make([]*Monster, 0)
	npcList := make([]*Npc, 0)
	gadgetList := make([]*Gadget, 0)
	sceneConfig, exist := CONF.SceneDetailMap[sceneId]
	if !exist {
		return nil, nil, nil, false
	}
	blockConfig, exist := sceneConfig.BlockMap[blockId]
	if !exist {
		return nil, nil, nil, false
	}
	for _, groupConfig := range blockConfig.GroupMap {
		for _, monsterConfig := range groupConfig.MonsterList {
			monsterList = append(monsterList, monsterConfig)
		}
		for _, npcConfig := range groupConfig.NpcList {
			npcList = append(npcList, npcConfig)
		}

		for _, gadgetConfig := range groupConfig.GadgetList {
			gadgetList = append(gadgetList, gadgetConfig)
		}
	}
	return monsterList, npcList, gadgetList, true
}
