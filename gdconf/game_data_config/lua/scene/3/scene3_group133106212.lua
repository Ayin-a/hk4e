-- 基础信息
local base_info = {
	group_id = 133106212
}

-- Trigger变量
local defs = {
	group_id = 133106212,
	gadget_riddle_hint = 212001,
	gadget_riddle_1 = 212002,
	gadget_riddle_2 = 212003,
	gadget_riddle_3 = 212004,
	gadget_riddle_4 = 212005,
	gadget_chest = 212006
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
	{ config_id = 212001, gadget_id = 70310012, pos = { x = -433.716, y = 205.698, z = 872.372 }, rot = { x = 357.018, y = 193.661, z = 5.194 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 212002, gadget_id = 70310011, pos = { x = -433.124, y = 205.547, z = 876.335 }, rot = { x = 347.755, y = 277.143, z = 351.486 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 212003, gadget_id = 70310011, pos = { x = -446.935, y = 206.675, z = 873.600 }, rot = { x = 7.644, y = 317.249, z = 356.237 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 212004, gadget_id = 70310011, pos = { x = -420.805, y = 205.457, z = 868.429 }, rot = { x = 0.000, y = 257.600, z = 14.134 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 212005, gadget_id = 70310011, pos = { x = -435.965, y = 209.857, z = 861.553 }, rot = { x = 18.203, y = 21.523, z = 357.076 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 212006, gadget_id = 70211112, pos = { x = -433.625, y = 206.141, z = 872.380 }, rot = { x = 354.387, y = 274.298, z = 357.915 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1212007, name = "GADGET_STATE_CHANGE_212007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_212007", action = "action_EVENT_GADGET_STATE_CHANGE_212007", trigger_count = 0 },
	{ config_id = 1212008, name = "VARIABLE_CHANGE_212008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_212008", action = "action_EVENT_VARIABLE_CHANGE_212008", trigger_count = 0 },
	{ config_id = 1212009, name = "GROUP_LOAD_212009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_212009", trigger_count = 0 }
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
		gadgets = { 212001, 212002, 212003, 212004, 212005, 212006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_212007", "VARIABLE_CHANGE_212008", "GROUP_LOAD_212009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_212007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_212007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_212008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_212008(context, evt)
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
function action_EVENT_GROUP_LOAD_212009(context, evt)
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