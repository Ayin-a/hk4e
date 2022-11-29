-- 基础信息
local base_info = {
	group_id = 133103461
}

-- Trigger变量
local defs = {
	gadget_riddle_1 = 461001,
	gadget_riddle_2 = 461002,
	gadget_riddle_3 = 461003,
	gadget_riddle_4 = 461004,
	gadget_riddle_5 = 461005,
	gadget_chest = 461006,
	group_id = 133103461,
	gadget_gate = 461010
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
	{ config_id = 461001, gadget_id = 70310011, pos = { x = 198.315, y = 205.506, z = 1388.477 }, rot = { x = 0.000, y = 19.600, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 461002, gadget_id = 70310011, pos = { x = 201.166, y = 205.506, z = 1384.592 }, rot = { x = 0.000, y = 19.600, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 461003, gadget_id = 70310011, pos = { x = 206.221, y = 205.506, z = 1385.752 }, rot = { x = 0.000, y = 19.600, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 461004, gadget_id = 70310011, pos = { x = 206.416, y = 205.506, z = 1391.686 }, rot = { x = 0.000, y = 19.600, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 461005, gadget_id = 70310011, pos = { x = 201.225, y = 205.506, z = 1393.935 }, rot = { x = 0.000, y = 19.600, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 461006, gadget_id = 70211122, pos = { x = 210.950, y = 205.553, z = 1385.457 }, rot = { x = 0.000, y = 289.600, z = 0.000 }, level = 21, drop_tag = "解谜高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 461010, gadget_id = 70350004, pos = { x = 203.715, y = 212.590, z = 1399.631 }, rot = { x = 89.980, y = 200.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 461011, gadget_id = 70350004, pos = { x = 209.184, y = 212.590, z = 1397.640 }, rot = { x = 89.980, y = 200.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1461007, name = "GADGET_STATE_CHANGE_461007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_461007", action = "action_EVENT_GADGET_STATE_CHANGE_461007", trigger_count = 0 },
	{ config_id = 1461008, name = "VARIABLE_CHANGE_461008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_461008", action = "action_EVENT_VARIABLE_CHANGE_461008", trigger_count = 0 },
	{ config_id = 1461009, name = "GROUP_LOAD_461009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_461009" }
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
		gadgets = { 461001, 461002, 461003, 461004, 461005, 461006, 461010, 461011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_461007", "VARIABLE_CHANGE_461008", "GROUP_LOAD_461009" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_461007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 and evt.param2 ~= defs.gadget_riddle_5 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_461007(context, evt)
	if evt.param2 == defs.gadget_riddle_1 and evt.param1 == GadgetState.GearStart  then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	if evt.param2 == defs.gadget_riddle_2 and evt.param1 == GadgetState.GearStart  then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	if evt.param2 == defs.gadget_riddle_3 and evt.param1 == GadgetState.GearStart  then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	if evt.param2 == defs.gadget_riddle_4 and evt.param1 == GadgetState.GearStart  then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	if evt.param2 == defs.gadget_riddle_5 and evt.param1 == GadgetState.GearStart  then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_461008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 < 0 or evt.param1 > 5 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_461008(context, evt)
	if evt.param1 == 5 then
	    ScriptLib.MarkPlayerAction(context, 5006, 2, 3) 
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_gate, GadgetState.GearStart)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, 461011, GadgetState.GearStart)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_461009(context, evt)
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
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
	
	
end