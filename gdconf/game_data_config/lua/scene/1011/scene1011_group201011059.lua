-- 基础信息
local base_info = {
	group_id = 201011059
}

-- Trigger变量
local defs = {
	group_id = 201011059,
	gadget_riddle_hint = 59001,
	gadget_riddle_1 = 59002,
	gadget_riddle_2 = 59003,
	gadget_riddle_3 = 59004,
	gadget_riddle_4 = 59005,
	gadget_chest = 59006,
	gadget_riddle_5 = 59010,
	gadget_riddle_6 = 59011,
	gadget_riddle_7 = 59012,
	gadget_riddle_8 = 59013,
	gadget_riddle_9 = 59014,
	gadget_riddle_10 = 59015,
	gadget_riddle_11 = 59016,
	gadget_riddle_12 = 59017,
	gadget_riddle_13 = 59018,
	gadget_riddle_14 = 59019,
	group_id_2 = 201011060,
	group_id_3 = 201011061
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
	{ config_id = 59001, gadget_id = 70310012, pos = { x = -54.687, y = 0.500, z = 81.817 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59002, gadget_id = 70310011, pos = { x = -60.258, y = 0.486, z = 60.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59003, gadget_id = 70310011, pos = { x = -75.261, y = 0.500, z = 60.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59004, gadget_id = 70310011, pos = { x = -60.284, y = 0.500, z = 75.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59005, gadget_id = 70310011, pos = { x = -75.274, y = 0.500, z = 75.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59006, gadget_id = 70900007, pos = { x = -54.656, y = 0.949, z = 81.818 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 59010, gadget_id = 70310011, pos = { x = -75.274, y = 0.500, z = 68.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59011, gadget_id = 70310011, pos = { x = -60.284, y = 0.500, z = 68.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59012, gadget_id = 70310011, pos = { x = -67.771, y = 0.500, z = 75.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59013, gadget_id = 70310011, pos = { x = -67.794, y = 0.486, z = 60.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59014, gadget_id = 70310011, pos = { x = -72.853, y = 0.500, z = 65.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59015, gadget_id = 70310011, pos = { x = -65.268, y = 0.500, z = 62.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59016, gadget_id = 70310011, pos = { x = -62.746, y = 0.500, z = 70.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59017, gadget_id = 70310011, pos = { x = -70.700, y = 0.500, z = 72.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59018, gadget_id = 70310011, pos = { x = -72.188, y = 0.500, z = 69.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 59019, gadget_id = 70310011, pos = { x = -63.947, y = 0.500, z = 66.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059007, name = "GADGET_STATE_CHANGE_59007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59007", action = "action_EVENT_GADGET_STATE_CHANGE_59007", trigger_count = 0 },
	{ config_id = 1059008, name = "VARIABLE_CHANGE_59008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_59008", action = "action_EVENT_VARIABLE_CHANGE_59008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "Door_Open", value = 0, no_refresh = true }
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
		gadgets = { 59001, 59002, 59003, 59004, 59005, 59006, 59010, 59011, 59012, 59013, 59014, 59015, 59016, 59017, 59018, 59019 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59007", "VARIABLE_CHANGE_59008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 and evt.param2 ~= defs.gadget_riddle_5 and evt.param2 ~= defs.gadget_riddle_6 and evt.param2 ~= defs.gadget_riddle_7 and evt.param2 ~= defs.gadget_riddle_8 and evt.param2 ~= defs.gadget_riddle_9 and evt.param2 ~= defs.gadget_riddle_10 and evt.param2 ~= defs.gadget_riddle_11 and evt.param2 ~= defs.gadget_riddle_12 and evt.param2 ~= defs.gadget_riddle_13 and evt.param2 ~= defs.gadget_riddle_14 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59007(context, evt)
	--起点记录
	if ScriptLib.GetCurTriggerCount(context) == 0 then
	    ScriptLib.MarkPlayerAction(context, 5007, 1, 1)
	end 
	--映射点亮
	if evt.param2 == defs.gadget_riddle_1 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_1) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_1, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_1) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_1, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_2 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_2) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_2, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_2) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_2, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_3 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_3) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_3, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_3) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_3, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_4 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_4) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_4, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_4) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_4, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_5 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_5) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_5, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_5) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_5, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_6 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_6) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_6, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_6) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_6, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_7 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_7) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_7, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_7) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_7, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_8 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_8) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_8, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_8) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_8, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_9 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_9) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_9, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_9) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_9, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_10 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_10) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_10, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_10) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_10, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_11 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_11) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_11, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_11) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_11, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_12 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_12) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_12, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_12) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_12, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_13 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_13) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_13, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_13) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_13, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_14 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_14) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_14, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_14) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_14, GadgetState.GearAction1)
	    end
	end
	--检查是否符合开门条件
	if ScriptLib.GetGroupVariableValue(context, "Door_Open") == 0 then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearStart or 
	    ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearAction1 then
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart or 
	        ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearAction1 then
	            if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart or 
	            ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearAction1 then
	                ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.GearStart)
	                ScriptLib.SetGroupVariableValueByGroup(context, "Door_Open", 1, defs.group_id)
	    	ScriptLib.MarkPlayerAction(context, 5007, 2, 2)
	            end
	        end
	    end
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_59008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 14 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_59008(context, evt)
	--单层点亮超3个熄灭所有
	if evt.param1 > 3 then
	    ScriptLib.SetGroupVariableValueByGroup(context, "State_Flag", 0, defs.group_id)
	    ScriptLib.SetGroupVariableValueByGroup(context, "State_Flag", 0, defs.group_id2)
	    ScriptLib.SetGroupVariableValueByGroup(context, "State_Flag", 0, defs.group_id3)
	end
	--灭火
	if evt.param1 == 0 then
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_9, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_10, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_11, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_12, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_13, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_14, GadgetState.Default)
	end
	return 0
	    
end