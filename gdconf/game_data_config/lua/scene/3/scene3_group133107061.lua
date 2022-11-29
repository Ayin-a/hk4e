-- 基础信息
local base_info = {
	group_id = 133107061
}

-- Trigger变量
local defs = {
	group_id = 133107061,
	gadget_riddle_hint = 61001,
	gadget_riddle_1 = 61002,
	gadget_riddle_2 = 61003,
	gadget_riddle_3 = 61004,
	gadget_riddle_4 = 61005,
	gadget_chest = 61006
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
	{ config_id = 61001, gadget_id = 70310012, pos = { x = -346.594, y = 272.204, z = 603.369 }, rot = { x = 0.000, y = 74.881, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 61002, gadget_id = 70310011, pos = { x = -330.457, y = 271.842, z = 609.913 }, rot = { x = 9.247, y = 185.299, z = 356.421 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 61003, gadget_id = 70310011, pos = { x = -354.561, y = 272.200, z = 601.201 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 61004, gadget_id = 70310011, pos = { x = -340.399, y = 281.037, z = 578.595 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 61005, gadget_id = 70310011, pos = { x = -351.186, y = 281.907, z = 632.874 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 24, persistent = true, area_id = 7 },
	{ config_id = 61006, gadget_id = 70211112, pos = { x = -346.596, y = 272.653, z = 603.400 }, rot = { x = 0.000, y = 162.797, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1061007, name = "GADGET_STATE_CHANGE_61007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_61007", action = "action_EVENT_GADGET_STATE_CHANGE_61007", trigger_count = 0 },
	{ config_id = 1061008, name = "VARIABLE_CHANGE_61008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_61008", action = "action_EVENT_VARIABLE_CHANGE_61008", trigger_count = 0 },
	{ config_id = 1061009, name = "GROUP_LOAD_61009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_61009", trigger_count = 0 }
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
		gadgets = { 61001, 61002, 61003, 61004, 61005, 61006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_61007", "VARIABLE_CHANGE_61008", "GROUP_LOAD_61009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_61007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_61007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_61008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_61008(context, evt)
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
function action_EVENT_GROUP_LOAD_61009(context, evt)
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