-- 基础信息
local base_info = {
	group_id = 133101046
}

-- Trigger变量
local defs = {
	group_id = 133101046,
	gadget_riddle_hint = 46001,
	gadget_riddle_1 = 46002,
	gadget_riddle_2 = 46003,
	gadget_riddle_3 = 46004,
	gadget_riddle_4 = 46005,
	gadget_chest = 46006
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
	{ config_id = 46001, gadget_id = 70310012, pos = { x = 1216.731, y = 266.629, z = 1239.704 }, rot = { x = 3.736, y = 190.622, z = 357.158 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 46002, gadget_id = 70330019, pos = { x = 1220.816, y = 266.230, z = 1239.025 }, rot = { x = 346.883, y = 280.572, z = 3.822 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 46003, gadget_id = 70330019, pos = { x = 1215.868, y = 265.884, z = 1235.755 }, rot = { x = 357.242, y = 270.291, z = 9.745 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 46004, gadget_id = 70330019, pos = { x = 1217.261, y = 266.575, z = 1244.102 }, rot = { x = 359.102, y = 280.142, z = 359.028 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 46005, gadget_id = 70330019, pos = { x = 1213.025, y = 266.052, z = 1240.412 }, rot = { x = 4.851, y = 349.806, z = 16.420 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 46006, gadget_id = 70211122, pos = { x = 1216.763, y = 267.076, z = 1239.597 }, rot = { x = 3.425, y = 271.106, z = 3.209 }, level = 21, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046007, name = "GADGET_STATE_CHANGE_46007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46007", action = "action_EVENT_GADGET_STATE_CHANGE_46007", trigger_count = 0 },
	{ config_id = 1046008, name = "VARIABLE_CHANGE_46008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_46008", action = "action_EVENT_VARIABLE_CHANGE_46008", trigger_count = 0 },
	{ config_id = 1046009, name = "GROUP_LOAD_46009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_46009", trigger_count = 0 }
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
		gadgets = { 46001, 46002, 46003, 46004, 46005, 46006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_46007", "VARIABLE_CHANGE_46008", "GROUP_LOAD_46009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_46008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_46008(context, evt)
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
function action_EVENT_GROUP_LOAD_46009(context, evt)
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