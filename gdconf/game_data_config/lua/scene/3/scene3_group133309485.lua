-- 基础信息
local base_info = {
	group_id = 133309485
}

-- Trigger变量
local defs = {
	group_id = 133309485,
	gadget_riddle_hint = 485001,
	gadget_riddle_1 = 485002,
	gadget_riddle_2 = 485003,
	gadget_riddle_3 = 485004,
	gadget_riddle_4 = 485005,
	gadget_chest = 485006
}

-- DEFS_MISCS
local markList = {485002,485003,485004,485005}

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
	{ config_id = 485001, gadget_id = 70330336, pos = { x = -2443.040, y = 137.060, z = 5217.986 }, rot = { x = 356.290, y = 189.816, z = 5.687 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 485002, gadget_id = 70330411, pos = { x = -2441.204, y = 137.873, z = 5210.760 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 485003, gadget_id = 70330411, pos = { x = -2449.742, y = 137.073, z = 5225.223 }, rot = { x = 357.459, y = 357.220, z = 349.355 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 485004, gadget_id = 70330411, pos = { x = -2439.523, y = 136.655, z = 5232.573 }, rot = { x = 0.000, y = 257.600, z = 341.450 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 485005, gadget_id = 70330411, pos = { x = -2431.277, y = 135.933, z = 5217.850 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 485006, gadget_id = 70211112, pos = { x = -2443.010, y = 137.482, z = 5217.987 }, rot = { x = 356.736, y = 185.438, z = 5.953 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1485007, name = "GADGET_STATE_CHANGE_485007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_485007", action = "action_EVENT_GADGET_STATE_CHANGE_485007", trigger_count = 0 },
	{ config_id = 1485008, name = "VARIABLE_CHANGE_485008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_485008", action = "action_EVENT_VARIABLE_CHANGE_485008", trigger_count = 0 },
	{ config_id = 1485009, name = "GROUP_LOAD_485009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_485009", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 485001, 485002, 485003, 485004, 485005, 485006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_485007", "VARIABLE_CHANGE_485008", "GROUP_LOAD_485009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_485007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_485007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_485008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_485008(context, evt)
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
function action_EVENT_GROUP_LOAD_485009(context, evt)
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

require "V3_1/Transparent_Mark"