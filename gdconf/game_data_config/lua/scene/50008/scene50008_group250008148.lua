-- 基础信息
local base_info = {
	group_id = 250008148
}

-- Trigger变量
local defs = {
	group_id = 250008148,
	gadget_riddle_hint = 148001,
	gadget_riddle_1 = 148002,
	gadget_riddle_2 = 148003,
	gadget_riddle_3 = 148004,
	gadget_riddle_4 = 148005,
	gadget_chest = 148006,
	gadget_riddle_5 = 148010
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
	{ config_id = 148001, gadget_id = 70310012, pos = { x = 67.298, y = 4.000, z = -334.772 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 148002, gadget_id = 70310011, pos = { x = 78.548, y = 3.986, z = -348.133 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 148003, gadget_id = 70310011, pos = { x = 72.848, y = 4.000, z = -342.658 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 148004, gadget_id = 70310011, pos = { x = 65.944, y = 4.000, z = -345.803 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 148005, gadget_id = 70310011, pos = { x = 66.222, y = 4.000, z = -350.989 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 148006, gadget_id = 70211112, pos = { x = 67.329, y = 4.449, z = -334.771 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 148010, gadget_id = 70310011, pos = { x = 73.151, y = 4.000, z = -354.189 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1148007, name = "GADGET_STATE_CHANGE_148007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148007", action = "action_EVENT_GADGET_STATE_CHANGE_148007", trigger_count = 0 },
	{ config_id = 1148008, name = "VARIABLE_CHANGE_148008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_148008", action = "action_EVENT_VARIABLE_CHANGE_148008", trigger_count = 0 },
	{ config_id = 1148009, name = "GROUP_LOAD_148009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_148009" }
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
		gadgets = { 148001, 148002, 148003, 148004, 148005, 148006, 148010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_148007", "VARIABLE_CHANGE_148008", "GROUP_LOAD_148009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 and evt.param2 ~= defs.gadget_riddle_5 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148007(context, evt)
	if ScriptLib.GetCurTriggerCount(context) == 0 then
	    ScriptLib.MarkPlayerAction(context, 5006, 1, 1)
	end 
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
function condition_EVENT_VARIABLE_CHANGE_148008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 5 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148008(context, evt)
	if evt.param1 == 5 then
	    ScriptLib.MarkPlayerAction(context, 5006, 3, 1) 
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_148009(context, evt)
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