package game

import (
	"hk4e/gdconf"
	"hk4e/pkg/logger"

	lua "github.com/yuin/gopher-lua"
)

type LuaCtx struct {
	uid            uint32
	ownerUid       uint32
	sourceEntityId uint32
	targetEntityId uint32
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
		logger.Error("call lua error: %v", err)
		return false
	}
	luaRet := luaState.Get(-1)
	luaState.Pop(1)
	ret, ok := luaRet.(lua.LBool)
	if !ok {
		return false
	}
	return bool(ret)
}

func RegLuaLibFunc() {
	gdconf.RegScriptLib("GetEntityType", GetEntityType)
	gdconf.RegScriptLib("GetQuestState", GetQuestState)
}

func GetEntityType(luaState *lua.LState) int {
	entityId := luaState.ToInt(1)
	luaState.Push(lua.LNumber(entityId >> 24))
	return 1
}

func GetQuestState(luaState *lua.LState) int {
	ctx, ok := luaState.Get(1).(*lua.LTable)
	if !ok {
		luaState.Push(lua.LNumber(0))
		return 1
	}
	uid, ok := luaState.GetField(ctx, "uid").(lua.LNumber)
	if !ok {
		luaState.Push(lua.LNumber(0))
		return 1
	}
	player := USER_MANAGER.GetOnlineUser(uint32(uid))
	entityId := luaState.ToInt(2)
	_ = entityId
	questId := luaState.ToInt(3)
	dbQuest := player.GetDbQuest()
	quest := dbQuest.GetQuestById(uint32(questId))
	luaState.Push(lua.LNumber(quest.State))
	return 1
}
