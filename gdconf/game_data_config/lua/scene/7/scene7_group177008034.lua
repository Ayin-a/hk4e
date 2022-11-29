-- 基础信息
local base_info = {
	group_id = 177008034
}

-- Trigger变量
local defs = {
	group_id = 177008034,
	gadget_riddle_hint = 34001,
	gadget_riddle_1 = 34002,
	gadget_riddle_2 = 34003,
	gadget_riddle_3 = 34004,
	gadget_riddle_4 = 34005,
	gadget_chest = 34006
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
	{ config_id = 34001, gadget_id = 70310012, pos = { x = -280.183, y = 253.935, z = 320.370 }, rot = { x = 0.000, y = 190.000, z = 11.010 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 34002, gadget_id = 70310011, pos = { x = -271.618, y = 251.387, z = 323.187 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 34003, gadget_id = 70310011, pos = { x = -290.187, y = 256.372, z = 321.204 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 34004, gadget_id = 70310011, pos = { x = -287.435, y = 256.086, z = 329.815 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 34005, gadget_id = 70310011, pos = { x = -286.507, y = 255.262, z = 308.325 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 1, persistent = true, area_id = 210 },
	{ config_id = 34006, gadget_id = 70211156, pos = { x = -279.945, y = 254.431, z = 320.463 }, rot = { x = 347.242, y = 270.400, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034007, name = "GADGET_STATE_CHANGE_34007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34007", action = "action_EVENT_GADGET_STATE_CHANGE_34007", trigger_count = 0 },
	{ config_id = 1034008, name = "VARIABLE_CHANGE_34008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_34008", action = "action_EVENT_VARIABLE_CHANGE_34008", trigger_count = 0 },
	{ config_id = 1034009, name = "GROUP_LOAD_34009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_34009", trigger_count = 0 }
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
		gadgets = { 34001, 34002, 34003, 34004, 34005, 34006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_34007", "VARIABLE_CHANGE_34008", "GROUP_LOAD_34009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_34007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_34008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34008(context, evt)
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
function action_EVENT_GROUP_LOAD_34009(context, evt)
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