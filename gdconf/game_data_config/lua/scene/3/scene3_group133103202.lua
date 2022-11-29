-- 基础信息
local base_info = {
	group_id = 133103202
}

-- Trigger变量
local defs = {
	group_id = 133103202,
	gadget_riddle_hint = 202001,
	gadget_riddle_1 = 202002,
	gadget_riddle_2 = 202003,
	gadget_riddle_3 = 202004,
	gadget_riddle_4 = 202005,
	gadget_chest = 202006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 202001, gadget_id = 70310012, pos = { x = 1015.933, y = 336.875, z = 1577.348 }, rot = { x = 0.000, y = 296.211, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 202002, gadget_id = 70310011, pos = { x = 1011.863, y = 336.867, z = 1568.367 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 202003, gadget_id = 70310011, pos = { x = 1002.639, y = 341.911, z = 1586.297 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 202004, gadget_id = 70310011, pos = { x = 1027.599, y = 337.578, z = 1571.612 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 202005, gadget_id = 70310011, pos = { x = 1019.750, y = 334.735, z = 1589.174 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 202006, gadget_id = 70211112, pos = { x = 1015.938, y = 337.287, z = 1577.602 }, rot = { x = 0.000, y = 296.211, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1202007, name = "GADGET_STATE_CHANGE_202007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_202007", action = "action_EVENT_GADGET_STATE_CHANGE_202007", trigger_count = 0 },
	{ config_id = 1202008, name = "VARIABLE_CHANGE_202008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_202008", action = "action_EVENT_VARIABLE_CHANGE_202008", trigger_count = 0 },
	{ config_id = 1202009, name = "GROUP_LOAD_202009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_202009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 202001, 202002, 202003, 202004, 202005, 202006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_202007", "VARIABLE_CHANGE_202008", "GROUP_LOAD_202009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_202007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_202007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_202008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_202008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_202009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end