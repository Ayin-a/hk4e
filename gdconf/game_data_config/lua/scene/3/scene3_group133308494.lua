-- 基础信息
local base_info = {
	group_id = 133308494
}

-- Trigger变量
local defs = {
	group_id = 133308494,
	gadget_riddle_hint = 494001,
	gadget_riddle_1 = 494002,
	gadget_riddle_2 = 494003,
	gadget_riddle_3 = 494004,
	gadget_riddle_4 = 494005,
	gadget_chest = 494006
}

-- DEFS_MISCS
local markList = {494002,494003,494004}

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
	{ config_id = 494001, gadget_id = 70330336, pos = { x = -1978.574, y = 187.783, z = 4590.384 }, rot = { x = 5.966, y = 160.509, z = 350.912 }, level = 19, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 494002, gadget_id = 70330411, pos = { x = -1961.510, y = 193.334, z = 4560.568 }, rot = { x = 18.950, y = 276.319, z = 353.568 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 494003, gadget_id = 70330411, pos = { x = -1990.681, y = 184.872, z = 4577.090 }, rot = { x = 11.423, y = 318.454, z = 7.650 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 494004, gadget_id = 70330411, pos = { x = -1963.657, y = 195.852, z = 4604.089 }, rot = { x = 13.081, y = 188.309, z = 1.512 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 494005, gadget_id = 70330335, pos = { x = -1998.365, y = 184.911, z = 4608.638 }, rot = { x = 359.180, y = 11.944, z = 10.495 }, level = 19, persistent = true, area_id = 26 },
	{ config_id = 494006, gadget_id = 70211112, pos = { x = -1978.621, y = 188.221, z = 4590.300 }, rot = { x = 9.304, y = 186.161, z = 354.379 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 494010, gadget_id = 70330266, pos = { x = -1997.741, y = 185.509, z = 4608.385 }, rot = { x = 358.101, y = 0.350, z = 17.336 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1494007, name = "GADGET_STATE_CHANGE_494007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_494007", action = "action_EVENT_GADGET_STATE_CHANGE_494007", trigger_count = 0 },
	{ config_id = 1494008, name = "VARIABLE_CHANGE_494008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_494008", action = "action_EVENT_VARIABLE_CHANGE_494008", trigger_count = 0 },
	{ config_id = 1494009, name = "GROUP_LOAD_494009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_494009", trigger_count = 0 }
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
		gadgets = { 494001, 494002, 494003, 494004, 494005, 494006, 494010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_494007", "VARIABLE_CHANGE_494008", "GROUP_LOAD_494009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_494007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_494007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_494008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_494008(context, evt)
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
function action_EVENT_GROUP_LOAD_494009(context, evt)
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