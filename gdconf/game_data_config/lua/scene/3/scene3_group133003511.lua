-- 基础信息
local base_info = {
	group_id = 133003511
}

-- Trigger变量
local defs = {
	group_id = 133003511,
	gadget_riddle_hint = 511001,
	gadget_riddle_1 = 511002,
	gadget_riddle_2 = 511003,
	gadget_riddle_3 = 511004,
	gadget_riddle_4 = 511005,
	gadget_chest = 511006
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
	{ config_id = 511001, gadget_id = 70310012, pos = { x = 2001.283, y = 220.926, z = -1568.687 }, rot = { x = 0.000, y = 185.900, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 511002, gadget_id = 70310011, pos = { x = 2000.689, y = 222.180, z = -1575.469 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 511003, gadget_id = 70310011, pos = { x = 1971.069, y = 228.605, z = -1571.186 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 511004, gadget_id = 70310011, pos = { x = 2002.477, y = 221.705, z = -1542.347 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 511005, gadget_id = 70310011, pos = { x = 2029.164, y = 221.505, z = -1572.357 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 5, persistent = true, area_id = 1 },
	{ config_id = 511006, gadget_id = 70211112, pos = { x = 2001.311, y = 221.375, z = -1568.719 }, rot = { x = 0.000, y = 4.216, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1511007, name = "GADGET_STATE_CHANGE_511007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_511007", action = "action_EVENT_GADGET_STATE_CHANGE_511007", trigger_count = 0 },
	{ config_id = 1511008, name = "VARIABLE_CHANGE_511008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_511008", action = "action_EVENT_VARIABLE_CHANGE_511008", trigger_count = 0 },
	{ config_id = 1511009, name = "GROUP_LOAD_511009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_511009", trigger_count = 0 }
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
		gadgets = { 511001, 511002, 511003, 511004, 511005, 511006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_511007", "VARIABLE_CHANGE_511008", "GROUP_LOAD_511009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_511007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_511007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_511008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_511008(context, evt)
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
function action_EVENT_GROUP_LOAD_511009(context, evt)
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