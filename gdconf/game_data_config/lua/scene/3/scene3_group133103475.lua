-- 基础信息
local base_info = {
	group_id = 133103475
}

-- Trigger变量
local defs = {
	gadget_riddle_1 = 475001,
	gadget_riddle_2 = 475002,
	gadget_riddle_3 = 475003,
	gadget_riddle_4 = 475004,
	gadget_riddle_5 = 475005,
	gadget_chest = 475012,
	group_id = 133103475,
	gadget_gate = 475006,
	gadget_riddle_6 = 475010
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
	{ config_id = 475001, gadget_id = 70310011, pos = { x = 200.467, y = 198.025, z = 1394.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 475002, gadget_id = 70310011, pos = { x = 198.687, y = 197.461, z = 1390.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 475003, gadget_id = 70310011, pos = { x = 201.651, y = 197.461, z = 1386.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 475004, gadget_id = 70310011, pos = { x = 205.941, y = 198.025, z = 1387.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 475005, gadget_id = 70310011, pos = { x = 203.302, y = 197.461, z = 1391.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 475006, gadget_id = 70350004, pos = { x = 200.952, y = 205.258, z = 1377.163 }, rot = { x = 90.000, y = 19.900, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 475010, gadget_id = 70310011, pos = { x = 197.476, y = 198.025, z = 1386.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 475011, gadget_id = 70350004, pos = { x = 195.477, y = 205.258, z = 1379.145 }, rot = { x = 90.000, y = 19.900, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 475012, gadget_id = 70211112, pos = { x = 212.243, y = 198.754, z = 1384.931 }, rot = { x = 0.000, y = 291.720, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1475007, name = "GADGET_STATE_CHANGE_475007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_475007", action = "action_EVENT_GADGET_STATE_CHANGE_475007", trigger_count = 0 },
	{ config_id = 1475008, name = "VARIABLE_CHANGE_475008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_475008", action = "action_EVENT_VARIABLE_CHANGE_475008", trigger_count = 0 },
	{ config_id = 1475009, name = "GROUP_LOAD_475009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_475009" }
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
		gadgets = { 475001, 475002, 475003, 475004, 475005, 475006, 475010, 475011, 475012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_475007", "VARIABLE_CHANGE_475008", "GROUP_LOAD_475009" },
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
function condition_EVENT_GADGET_STATE_CHANGE_475007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 and evt.param2 ~= defs.gadget_riddle_5 and evt.param2 ~= defs.gadget_riddle_6 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_475007(context, evt)
	if ScriptLib.GetCurTriggerCount(context) == 0 then
	    ScriptLib.MarkPlayerAction(context, 5006, 1, 1)
	end 
	if evt.param2 == defs.gadget_riddle_1 and evt.param1 == GadgetState.GearStart  then
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
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	if evt.param2 == defs.gadget_riddle_2 and evt.param1 == GadgetState.GearStart  then
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
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6, GadgetState.GearAction1)
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
	if evt.param2 == defs.gadget_riddle_6 and evt.param1 == GadgetState.GearStart  then
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
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_475008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 < 0 or evt.param1 > 6 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_475008(context, evt)
	if evt.param1 == 6 then
	    ScriptLib.MarkPlayerAction(context, 5006, 2, 2) 
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_gate, GadgetState.GearStart)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, 475011, GadgetState.GearStart)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_475009(context, evt)
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
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
	
	
end