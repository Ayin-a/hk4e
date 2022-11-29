-- 基础信息
local base_info = {
	group_id = 133212042
}

-- Trigger变量
local defs = {
	group_id = 133212042,
	gadget_riddle_hint = 42001,
	gadget_riddle_1 = 42002,
	gadget_riddle_2 = 42003,
	gadget_riddle_3 = 42004,
	gadget_riddle_4 = 42005,
	gadget_chest = 42006
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
	{ config_id = 42001, gadget_id = 70310012, pos = { x = -3986.185, y = 199.167, z = -2275.765 }, rot = { x = 0.000, y = 303.369, z = 0.000 }, level = 19, persistent = true, area_id = 13 },
	{ config_id = 42002, gadget_id = 70900008, pos = { x = -3967.276, y = 201.374, z = -2250.662 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 19, persistent = true, area_id = 13 },
	{ config_id = 42003, gadget_id = 70900008, pos = { x = -4000.260, y = 215.313, z = -2258.574 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 19, persistent = true, area_id = 13 },
	{ config_id = 42004, gadget_id = 70900008, pos = { x = -3975.548, y = 208.256, z = -2296.287 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 19, persistent = true, area_id = 13 },
	{ config_id = 42005, gadget_id = 70900008, pos = { x = -4000.658, y = 203.815, z = -2297.140 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 19, persistent = true, area_id = 13 },
	{ config_id = 42006, gadget_id = 70211112, pos = { x = -3986.154, y = 199.616, z = -2275.764 }, rot = { x = 0.000, y = 217.286, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1042007, name = "GADGET_STATE_CHANGE_42007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42007", action = "action_EVENT_GADGET_STATE_CHANGE_42007", trigger_count = 0 },
	{ config_id = 1042008, name = "VARIABLE_CHANGE_42008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_42008", action = "action_EVENT_VARIABLE_CHANGE_42008", trigger_count = 0 },
	{ config_id = 1042009, name = "GROUP_LOAD_42009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_42009", trigger_count = 0 }
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
		gadgets = { 42001, 42002, 42003, 42004, 42005, 42006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_42007", "VARIABLE_CHANGE_42008", "GROUP_LOAD_42009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_42008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_42008(context, evt)
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
function action_EVENT_GROUP_LOAD_42009(context, evt)
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