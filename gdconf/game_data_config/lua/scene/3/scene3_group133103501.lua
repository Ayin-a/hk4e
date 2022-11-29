-- 基础信息
local base_info = {
	group_id = 133103501
}

-- Trigger变量
local defs = {
	gadget_riddle_1 = 501001,
	gadget_riddle_2 = 501002,
	gadget_riddle_3 = 501003,
	gadget_riddle_4 = 501004,
	gadget_riddle_5 = 501005,
	gadget_chest = 501008,
	group_id = 133103501,
	gadget_gate = 501006,
	gadget_riddle_6 = 501007,
	gadget_riddle_7 = 501012,
	gadget_riddle_8 = 501013
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
	{ config_id = 501001, gadget_id = 70310011, pos = { x = 203.487, y = 216.154, z = 1399.371 }, rot = { x = 0.000, y = 317.260, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 501002, gadget_id = 70310011, pos = { x = 192.378, y = 216.181, z = 1390.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 501003, gadget_id = 70310011, pos = { x = 201.590, y = 216.173, z = 1378.348 }, rot = { x = 0.000, y = 201.030, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 501004, gadget_id = 70310011, pos = { x = 212.272, y = 216.074, z = 1386.979 }, rot = { x = 0.000, y = 52.930, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 501005, gadget_id = 70310011, pos = { x = 207.705, y = 216.144, z = 1397.853 }, rot = { x = 0.000, y = 320.250, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 501006, gadget_id = 70350004, pos = { x = 196.619, y = 219.674, z = 1380.456 }, rot = { x = 90.000, y = 19.510, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 501007, gadget_id = 70310011, pos = { x = 195.653, y = 216.182, z = 1380.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 501008, gadget_id = 70211132, pos = { x = 199.678, y = 213.045, z = 1382.226 }, rot = { x = 0.000, y = 21.720, z = 0.000 }, level = 21, drop_tag = "解谜超级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 501012, gadget_id = 70310011, pos = { x = 210.903, y = 216.031, z = 1383.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 501013, gadget_id = 70310011, pos = { x = 193.678, y = 216.093, z = 1394.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 501014, gadget_id = 70350004, pos = { x = 202.122, y = 219.674, z = 1378.506 }, rot = { x = 90.000, y = 19.510, z = 0.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1501009, name = "GADGET_STATE_CHANGE_501009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_501009", action = "action_EVENT_GADGET_STATE_CHANGE_501009", trigger_count = 0 },
	{ config_id = 1501010, name = "VARIABLE_CHANGE_501010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_501010", action = "action_EVENT_VARIABLE_CHANGE_501010", trigger_count = 0 },
	{ config_id = 1501011, name = "GROUP_LOAD_501011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_501011" }
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
		gadgets = { 501001, 501002, 501003, 501004, 501005, 501006, 501007, 501008, 501012, 501013, 501014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_501009", "VARIABLE_CHANGE_501010", "GROUP_LOAD_501011" },
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
function condition_EVENT_GADGET_STATE_CHANGE_501009(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 and evt.param2 ~= defs.gadget_riddle_5 and evt.param2 ~= defs.gadget_riddle_6 and evt.param2 ~= defs.gadget_riddle_7 and evt.param2 ~= defs.gadget_riddle_8 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_501009(context, evt)
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
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7, GadgetState.GearAction1)
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
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	if evt.param2 == defs.gadget_riddle_5 and evt.param1 == GadgetState.GearStart  then
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
	if evt.param2 == defs.gadget_riddle_7 and evt.param1 == GadgetState.GearStart  then
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
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	if evt.param2 == defs.gadget_riddle_8 and evt.param1 == GadgetState.GearStart  then
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
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7) == GadgetState.GearAction1 then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7, GadgetState.Default)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	    elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7, GadgetState.GearAction1)
	        ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    end
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_501010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	
	if evt.param1 < 0 or evt.param1 > 8 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_501010(context, evt)
	if evt.param1 == 8 then
	    ScriptLib.MarkPlayerAction(context, 5006, 3, 4) 
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, 133103540, 540004, GadgetState.Default)
	-- 将本组内变量名为 "Puzzle_Flag_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Puzzle_Flag_3", 1, 133103540) then
	  return -1
	end
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_501011(context, evt)
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
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
	
	
end