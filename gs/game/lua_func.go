package game

import (
	"hk4e/common/constant"
	"hk4e/gdconf"
	"hk4e/gs/model"
	"hk4e/pkg/logger"
	"hk4e/pkg/object"
	"hk4e/protocol/cmd"
	"hk4e/protocol/proto"

	lua "github.com/yuin/gopher-lua"
)

type LuaCtx struct {
	uid            uint32
	ownerUid       uint32
	sourceEntityId uint32
	targetEntityId uint32
	groupId        uint32
}

type LuaEvt struct {
	param1         int32
	param2         int32
	param3         int32
	param4         int32
	paramStr1      string
	evtType        int32
	uid            uint32
	sourceName     string
	sourceEntityId uint32
	targetEntityId uint32
}

func CallLuaFunc(luaState *lua.LState, luaFuncName string, luaCtx *LuaCtx, luaEvt *LuaEvt) bool {
	ctx := luaState.NewTable()
	luaState.SetField(ctx, "uid", lua.LNumber(luaCtx.uid))
	luaState.SetField(ctx, "owner_uid", lua.LNumber(luaCtx.ownerUid))
	luaState.SetField(ctx, "source_entity_id", lua.LNumber(luaCtx.sourceEntityId))
	luaState.SetField(ctx, "target_entity_id", lua.LNumber(luaCtx.targetEntityId))
	luaState.SetField(ctx, "groupId", lua.LNumber(luaCtx.groupId))
	evt := luaState.NewTable()
	luaState.SetField(evt, "param1", lua.LNumber(luaEvt.param1))
	luaState.SetField(evt, "param2", lua.LNumber(luaEvt.param2))
	luaState.SetField(evt, "param3", lua.LNumber(luaEvt.param3))
	luaState.SetField(evt, "param4", lua.LNumber(luaEvt.param4))
	luaState.SetField(evt, "param_str1", lua.LString(luaEvt.paramStr1))
	luaState.SetField(evt, "type", lua.LNumber(luaEvt.evtType))
	luaState.SetField(evt, "uid", lua.LNumber(luaEvt.uid))
	luaState.SetField(evt, "source_name", lua.LString(luaEvt.sourceName))
	luaState.SetField(evt, "source_eid", lua.LNumber(luaEvt.sourceEntityId))
	luaState.SetField(evt, "target_eid", lua.LNumber(luaEvt.targetEntityId))
	err := luaState.CallByParam(lua.P{
		Fn:      luaState.GetGlobal(luaFuncName),
		NRet:    1,
		Protect: true,
	}, ctx, evt)
	if err != nil {
		logger.Error("call lua error, func: %v, error: %v", luaFuncName, err)
		return false
	}
	luaRet := luaState.Get(-1)
	luaState.Pop(1)
	switch luaRet.(type) {
	case lua.LBool:
		return bool(luaRet.(lua.LBool))
	case lua.LNumber:
		return object.ConvRetCodeToBool(int64(luaRet.(lua.LNumber)))
	default:
		return false
	}
}

func RegLuaLibFunc() {
	gdconf.RegScriptLibFunc("GetEntityType", GetEntityType)
	gdconf.RegScriptLibFunc("GetQuestState", GetQuestState)
	gdconf.RegScriptLibFunc("PrintLog", PrintLog)
	gdconf.RegScriptLibFunc("PrintContextLog", PrintContextLog)
	gdconf.RegScriptLibFunc("BeginCameraSceneLook", BeginCameraSceneLook)
	gdconf.RegScriptLibFunc("GetGroupMonsterCount", GetGroupMonsterCount)
	gdconf.RegScriptLibFunc("ChangeGroupGadget", ChangeGroupGadget)
	gdconf.RegScriptLibFunc("SetGadgetStateByConfigId", SetGadgetStateByConfigId)
	gdconf.RegScriptLibFunc("MarkPlayerAction", MarkPlayerAction)
}

func GetEntityType(luaState *lua.LState) int {
	entityId := luaState.ToInt(1)
	luaState.Push(lua.LNumber(entityId >> 24))
	return 1
}

func GetQuestState(luaState *lua.LState) int {
	ctx, ok := luaState.Get(1).(*lua.LTable)
	if !ok {
		luaState.Push(lua.LNumber(constant.QUEST_STATE_NONE))
		return 1
	}
	player := GetContextPlayer(ctx, luaState)
	if player == nil {
		luaState.Push(lua.LNumber(constant.QUEST_STATE_NONE))
		return 1
	}
	entityId := luaState.ToInt(2)
	_ = entityId
	questId := luaState.ToInt(3)
	dbQuest := player.GetDbQuest()
	quest := dbQuest.GetQuestById(uint32(questId))
	if quest == nil {
		luaState.Push(lua.LNumber(constant.QUEST_STATE_NONE))
		return 1
	}
	luaState.Push(lua.LNumber(quest.State))
	return 1
}

func PrintLog(luaState *lua.LState) int {
	logInfo := luaState.ToString(1)
	logger.Info("[LUA LOG] %v", logInfo)
	return 0
}

func PrintContextLog(luaState *lua.LState) int {
	ctx, ok := luaState.Get(1).(*lua.LTable)
	if !ok {
		return 0
	}
	uid, ok := luaState.GetField(ctx, "uid").(lua.LNumber)
	if !ok {
		return 0
	}
	logInfo := luaState.ToString(2)
	logger.Info("[LUA CTX LOG] %v [UID %v]", logInfo, uid)
	return 0
}

func BeginCameraSceneLook(luaState *lua.LState) int {
	ctx, ok := luaState.Get(1).(*lua.LTable)
	if !ok {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	player := GetContextPlayer(ctx, luaState)
	if player == nil {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	cameraLockInfo, ok := luaState.Get(2).(*lua.LTable)
	if !ok {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	ntf := new(proto.BeginCameraSceneLookNotify)
	gdconf.ParseLuaTableToObject(cameraLockInfo, ntf)
	GAME_MANAGER.SendMsg(cmd.BeginCameraSceneLookNotify, player.PlayerID, player.ClientSeq, ntf)
	luaState.Push(lua.LNumber(0))
	return 1
}

func GetGroupMonsterCount(luaState *lua.LState) int {
	ctx, ok := luaState.Get(1).(*lua.LTable)
	if !ok {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	player := GetContextPlayer(ctx, luaState)
	if player == nil {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	group := GetContextGroup(player, ctx, luaState)
	if group == nil {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	monsterCount := 0
	for _, entity := range group.GetAllEntity() {
		if entity.GetEntityType() == constant.ENTITY_TYPE_MONSTER {
			monsterCount++
		}
	}
	luaState.Push(lua.LNumber(monsterCount))
	return 1
}

func ChangeGroupGadget(luaState *lua.LState) int {
	ctx, ok := luaState.Get(1).(*lua.LTable)
	if !ok {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	player := GetContextPlayer(ctx, luaState)
	if player == nil {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	group := GetContextGroup(player, ctx, luaState)
	if group == nil {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	gadgetInfo, ok := luaState.Get(2).(*lua.LTable)
	if !ok {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	gadgetStateInfo := new(gdconf.Gadget)
	gdconf.ParseLuaTableToObject(gadgetInfo, gadgetStateInfo)
	entity := group.GetEntityByConfigId(uint32(gadgetStateInfo.ConfigId))
	GAME_MANAGER.ChangeGadgetState(player, entity.GetId(), uint32(gadgetStateInfo.State))
	luaState.Push(lua.LNumber(0))
	return 1
}

func SetGadgetStateByConfigId(luaState *lua.LState) int {
	ctx, ok := luaState.Get(1).(*lua.LTable)
	if !ok {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	player := GetContextPlayer(ctx, luaState)
	if player == nil {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	group := GetContextGroup(player, ctx, luaState)
	if group == nil {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	configId := luaState.ToInt(2)
	state := luaState.ToInt(3)
	entity := group.GetEntityByConfigId(uint32(configId))
	GAME_MANAGER.ChangeGadgetState(player, entity.GetId(), uint32(state))
	luaState.Push(lua.LNumber(0))
	return 1
}

func MarkPlayerAction(luaState *lua.LState) int {
	ctx, ok := luaState.Get(1).(*lua.LTable)
	if !ok {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	player := GetContextPlayer(ctx, luaState)
	if player == nil {
		luaState.Push(lua.LNumber(-1))
		return 1
	}
	param1 := luaState.ToInt(2)
	param2 := luaState.ToInt(3)
	param3 := luaState.ToInt(4)
	logger.Debug("[MarkPlayerAction] [%v %v %v] uid: %v", param1, param2, param3, player.PlayerID)
	luaState.Push(lua.LNumber(0))
	return 1
}

func GetContextPlayer(ctx *lua.LTable, luaState *lua.LState) *model.Player {
	uid, ok := luaState.GetField(ctx, "uid").(lua.LNumber)
	if !ok {
		return nil
	}
	player := USER_MANAGER.GetOnlineUser(uint32(uid))
	return player
}

func GetContextGroup(player *model.Player, ctx *lua.LTable, luaState *lua.LState) *Group {
	world := WORLD_MANAGER.GetWorldByID(player.WorldId)
	if world == nil {
		return nil
	}
	groupId, ok := luaState.GetField(ctx, "groupId").(lua.LNumber)
	if !ok {
		return nil
	}
	scene := world.GetSceneById(player.SceneId)
	group := scene.GetGroupById(uint32(groupId))
	if group == nil {
		return nil
	}
	return group
}
