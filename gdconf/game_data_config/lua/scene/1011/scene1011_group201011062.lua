-- 基础信息
local base_info = {
	group_id = 201011062
}

-- Trigger变量
local defs = {
	group_id = 201011062,
	gadget_riddle_hint = 62001,
	gadget_riddle_1 = 62002,
	gadget_riddle_2 = 62003,
	gadget_riddle_3 = 62004,
	gadget_riddle_4 = 62005,
	gadget_chest = 62006,
	gadget_riddle_5 = 62007,
	gadget_riddle_6 = 62008,
	gadget_riddle_7 = 62009,
	gadget_riddle_8 = 62010,
	gadget_riddle_9 = 62011,
	gadget_riddle_10 = 62012,
	gadget_riddle_11 = 62013,
	gadget_riddle_12 = 62014,
	gadget_riddle_13 = 62015,
	gadget_riddle_14 = 62016,
	group_id_2 = 201011060,
	group_id_3 = 201011061,
	gadget_riddle_15 = 62019,
	gadget_riddle_16 = 62020,
	gadget_riddle_17 = 62021,
	gadget_riddle_18 = 62022,
	gadget_chest_2 = 62023,
	gadget_riddle_19 = 62024,
	gadget_riddle_20 = 62025,
	gadget_riddle_21 = 62026,
	gadget_riddle_22 = 62027,
	gadget_riddle_23 = 62028,
	gadget_riddle_24 = 62029,
	gadget_riddle_25 = 62030,
	gadget_riddle_26 = 62031,
	gadget_riddle_27 = 62032,
	gadget_riddle_28 = 62033,
	gadget_riddle_29 = 62034,
	gadget_riddle_30 = 62035,
	gadget_riddle_31 = 62036,
	gadget_riddle_32 = 62037,
	gadget_chest_3 = 62038,
	gadget_riddle_33 = 62039,
	gadget_riddle_34 = 62040,
	gadget_riddle_35 = 62041,
	gadget_riddle_36 = 62042,
	gadget_riddle_37 = 62043,
	gadget_riddle_38 = 62044,
	gadget_riddle_39 = 62045,
	gadget_riddle_40 = 62046,
	gadget_riddle_41 = 62047,
	gadget_riddle_42 = 62048
}

-- DEFS_MISCS
local gadget_floor_1 = {62002,62003,62004,62005,62007,62008,62009,62010,62011,62012,62013,62014,62015,62016}
local gadget_floor_2 = {62019,62020,62021,62022,62024,62025,62026,62027,62028,62029,62030,62031,62032,62033}
local gadget_floor_3 = {62034,62035,62036,62037,62039,62040,62041,62042,62043,62044,62045,62046,62047,62048}

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
	{ config_id = 62001, gadget_id = 70310012, pos = { x = -54.706, y = 0.500, z = 121.315 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62002, gadget_id = 70310011, pos = { x = -60.276, y = 0.486, z = 100.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62003, gadget_id = 70310011, pos = { x = -75.280, y = 0.500, z = 99.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62004, gadget_id = 70310011, pos = { x = -60.303, y = 0.500, z = 115.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62005, gadget_id = 70310011, pos = { x = -75.293, y = 0.500, z = 115.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62006, gadget_id = 70900007, pos = { x = -54.675, y = 0.949, z = 121.317 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 62007, gadget_id = 70310011, pos = { x = -75.293, y = 0.500, z = 107.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62008, gadget_id = 70310011, pos = { x = -60.303, y = 0.500, z = 107.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62009, gadget_id = 70310011, pos = { x = -67.790, y = 0.500, z = 115.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62010, gadget_id = 70310011, pos = { x = -67.813, y = 0.486, z = 100.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62011, gadget_id = 70310011, pos = { x = -72.872, y = 0.500, z = 105.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62012, gadget_id = 70310011, pos = { x = -65.287, y = 0.500, z = 102.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62013, gadget_id = 70310011, pos = { x = -62.765, y = 0.500, z = 110.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62014, gadget_id = 70310011, pos = { x = -70.719, y = 0.500, z = 112.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62015, gadget_id = 70310011, pos = { x = -72.207, y = 0.500, z = 109.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62016, gadget_id = 70310011, pos = { x = -63.966, y = 0.500, z = 105.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62019, gadget_id = 70310011, pos = { x = -60.276, y = 7.386, z = 100.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62020, gadget_id = 70310011, pos = { x = -75.280, y = 7.400, z = 99.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62021, gadget_id = 70310011, pos = { x = -60.303, y = 7.400, z = 115.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62022, gadget_id = 70310011, pos = { x = -75.300, y = 7.400, z = 115.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62023, gadget_id = 70900007, pos = { x = -54.675, y = 7.849, z = 121.317 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 62024, gadget_id = 70310011, pos = { x = -75.293, y = 7.400, z = 107.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62025, gadget_id = 70310011, pos = { x = -60.303, y = 7.400, z = 107.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62026, gadget_id = 70310011, pos = { x = -67.790, y = 7.400, z = 115.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62027, gadget_id = 70310011, pos = { x = -67.813, y = 7.386, z = 100.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62028, gadget_id = 70310011, pos = { x = -72.872, y = 7.400, z = 105.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62029, gadget_id = 70310011, pos = { x = -65.287, y = 7.400, z = 102.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62030, gadget_id = 70310011, pos = { x = -62.765, y = 7.400, z = 110.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62031, gadget_id = 70310011, pos = { x = -70.719, y = 7.400, z = 112.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62032, gadget_id = 70310011, pos = { x = -72.207, y = 7.400, z = 109.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62033, gadget_id = 70310011, pos = { x = -63.966, y = 7.400, z = 105.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62034, gadget_id = 70310011, pos = { x = -60.276, y = 14.686, z = 100.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62035, gadget_id = 70310011, pos = { x = -75.280, y = 14.700, z = 99.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62036, gadget_id = 70310011, pos = { x = -60.303, y = 14.700, z = 115.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62037, gadget_id = 70310011, pos = { x = -75.293, y = 14.700, z = 115.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62038, gadget_id = 70900007, pos = { x = -54.675, y = 15.149, z = 121.317 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 62039, gadget_id = 70310011, pos = { x = -75.293, y = 14.700, z = 107.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62040, gadget_id = 70310011, pos = { x = -60.303, y = 14.700, z = 107.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62041, gadget_id = 70310011, pos = { x = -67.790, y = 14.700, z = 115.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62042, gadget_id = 70310011, pos = { x = -67.813, y = 14.686, z = 100.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62043, gadget_id = 70310011, pos = { x = -72.872, y = 14.700, z = 105.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62044, gadget_id = 70310011, pos = { x = -65.287, y = 14.700, z = 102.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62045, gadget_id = 70310011, pos = { x = -62.765, y = 14.700, z = 110.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62046, gadget_id = 70310011, pos = { x = -70.719, y = 14.700, z = 112.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62047, gadget_id = 70310011, pos = { x = -72.207, y = 14.700, z = 109.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 62048, gadget_id = 70310011, pos = { x = -63.966, y = 14.700, z = 105.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1062017, name = "GADGET_STATE_CHANGE_62017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62017", action = "action_EVENT_GADGET_STATE_CHANGE_62017", trigger_count = 0 },
	{ config_id = 1062018, name = "VARIABLE_CHANGE_62018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62018", action = "action_EVENT_VARIABLE_CHANGE_62018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Floor_1", value = 0, no_refresh = true },
	{ config_id = 2, name = "State_Floor_2", value = 0, no_refresh = true },
	{ config_id = 3, name = "State_Floor_3", value = 0, no_refresh = true },
	{ config_id = 4, name = "Door_Open_1", value = 0, no_refresh = true },
	{ config_id = 5, name = "Door_Open_2", value = 0, no_refresh = true },
	{ config_id = 6, name = "Door_Open_3", value = 0, no_refresh = true },
	{ config_id = 7, name = "Right_Floor_1", value = 0, no_refresh = true },
	{ config_id = 8, name = "Right_Floor_2", value = 0, no_refresh = true },
	{ config_id = 9, name = "Right_Floor_3", value = 0, no_refresh = true }
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
		gadgets = { 62001, 62002, 62003, 62004, 62005, 62006, 62007, 62008, 62009, 62010, 62011, 62012, 62013, 62014, 62015, 62016, 62019, 62020, 62021, 62022, 62023, 62024, 62025, 62026, 62027, 62028, 62029, 62030, 62031, 62032, 62033, 62034, 62035, 62036, 62037, 62038, 62039, 62040, 62041, 62042, 62043, 62044, 62045, 62046, 62047, 62048 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_62017", "VARIABLE_CHANGE_62018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62017(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 and evt.param2 ~= defs.gadget_riddle_5 and evt.param2 ~= defs.gadget_riddle_6 and evt.param2 ~= defs.gadget_riddle_7 and evt.param2 ~= defs.gadget_riddle_8 and evt.param2 ~= defs.gadget_riddle_9 and evt.param2 ~= defs.gadget_riddle_10 and evt.param2 ~= defs.gadget_riddle_11 and evt.param2 ~= defs.gadget_riddle_12 and evt.param2 ~= defs.gadget_riddle_13 and evt.param2 ~= defs.gadget_riddle_14 and evt.param2 ~= defs.gadget_riddle_15 and evt.param2 ~= defs.gadget_riddle_16 and evt.param2 ~= defs.gadget_riddle_17 and evt.param2 ~= defs.gadget_riddle_18 and evt.param2 ~= defs.gadget_riddle_19 and evt.param2 ~= defs.gadget_riddle_20 and evt.param2 ~= defs.gadget_riddle_21 and evt.param2 ~= defs.gadget_riddle_22 and evt.param2 ~= defs.gadget_riddle_23 and evt.param2 ~= defs.gadget_riddle_24 and evt.param2 ~= defs.gadget_riddle_25 and evt.param2 ~= defs.gadget_riddle_26 and evt.param2 ~= defs.gadget_riddle_27 and evt.param2 ~= defs.gadget_riddle_28 and evt.param2 ~= defs.gadget_riddle_29 and evt.param2 ~= defs.gadget_riddle_30 and evt.param2 ~= defs.gadget_riddle_31 and evt.param2 ~= defs.gadget_riddle_32 and evt.param2 ~= defs.gadget_riddle_33 and evt.param2 ~= defs.gadget_riddle_34 and evt.param2 ~= defs.gadget_riddle_35 and evt.param2 ~= defs.gadget_riddle_36 and evt.param2 ~= defs.gadget_riddle_37 and evt.param2 ~= defs.gadget_riddle_38 and evt.param2 ~= defs.gadget_riddle_39 and evt.param2 ~= defs.gadget_riddle_40 and evt.param2 ~= defs.gadget_riddle_41 and evt.param2 ~= defs.gadget_riddle_42 then
	    return false 
	    end
	    return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62017(context, evt)
	--起点记录
	if ScriptLib.GetCurTriggerCount(context) == 0 then
	    ScriptLib.MarkPlayerAction(context, 5007, 1, 1)
	end 
	--映射点亮
	
	for i = 1,14 do
	    if evt.param2 == gadget_floor_1[i] and evt.param1 == GadgetState.GearStart  then
	        ScriptLib.ChangeGroupVariableValue(context, "State_Floor_1", 1)
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, gadget_floor_2[i]) == GadgetState.Default then
	            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_floor_2[i], GadgetState.GearAction1)
	        end
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, gadget_floor_3[i]) == GadgetState.Default then
	            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_floor_3[i], GadgetState.GearAction1)
	        end
	        break
	    end
	end
	--检查是否符合开门条件
	if ScriptLib.GetGroupVariableValue(context, "Door_Open_1") == 0 then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearStart or 
	    ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearAction1 then
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart or 
	        ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearAction1 then
	            if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart or 
	            ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearAction1 then
	                ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.GearStart)
	                ScriptLib.SetGroupVariableValueByGroup(context, "Door_Open_1", 1, defs.group_id)
	                ScriptLib.MarkPlayerAction(context, 5007, 2, 2)
	            end
	        end
	    end
	end
	for i = 1,14 do
	    if evt.param2 == gadget_floor_2[i] and evt.param1 == GadgetState.GearStart  then
	        ScriptLib.ChangeGroupVariableValue(context, "State_Floor_2", 1)
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, gadget_floor_1[i]) == GadgetState.Default then
	            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_floor_1[i], GadgetState.GearAction1)
	        end
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, gadget_floor_3[i]) == GadgetState.Default then
	            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_floor_3[i], GadgetState.GearAction1)
	        end
	        break
	    end
	end
	--检查是否符合开门条件
	if ScriptLib.GetGroupVariableValue(context, "Door_Open_2") == 0 then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_15) == GadgetState.GearStart or 
	    ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_15) == GadgetState.GearAction1 then
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_16) == GadgetState.GearStart or 
	        ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_16) == GadgetState.GearAction1 then
	            if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_17) == GadgetState.GearStart or 
	            ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_17) == GadgetState.GearAction1 then
	                if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_18) == GadgetState.GearStart or 
	                ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_18) == GadgetState.GearAction1 then
	                    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest_2, GadgetState.GearStart)
	                    ScriptLib.SetGroupVariableValueByGroup(context, "Door_Open_2", 1, defs.group_id)
	                    ScriptLib.MarkPlayerAction(context, 5007, 2, 3)
	                end
	            end
	        end
	    end
	end
	for i = 1,14 do
	    if evt.param2 == gadget_floor_3[i] and evt.param1 == GadgetState.GearStart  then
	        ScriptLib.ChangeGroupVariableValue(context, "State_Floor_3", 1)
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, gadget_floor_1[i]) == GadgetState.Default then
	            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_floor_1[i], GadgetState.GearAction1)
	        end
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, gadget_floor_2[i]) == GadgetState.Default then
	            ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_floor_2[i], GadgetState.GearAction1)
	        end
	        break
	    end
	end
	--检查是否符合开门条件
	if ScriptLib.GetGroupVariableValue(context, "Door_Open_3") == 0 then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_29) == GadgetState.GearStart or 
	    ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_29) == GadgetState.GearAction1 then
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_30) == GadgetState.GearStart or 
	        ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_30) == GadgetState.GearAction1 then
	            if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_31) == GadgetState.GearStart or 
	            ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_31) == GadgetState.GearAction1 then
	                if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_32) == GadgetState.GearStart or 
	                ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_32) == GadgetState.GearAction1 then
	                    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_33) == GadgetState.GearStart or 
	                    ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_33) == GadgetState.GearAction1 then
	                        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_34) == GadgetState.GearStart or 
	                        ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_34) == GadgetState.GearAction1 then
	                            if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_35) == GadgetState.GearStart or 
	                            ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_35) == GadgetState.GearAction1 then
	                                if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_36) == GadgetState.GearStart or 
	                                ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_36) == GadgetState.GearAction1 then
	                                    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest_3, GadgetState.GearStart)
	                                    ScriptLib.SetGroupVariableValueByGroup(context, "Door_Open_3", 1, defs.group_id)
	                                    ScriptLib.MarkPlayerAction(context, 5007, 2, 4)
	                                    ScriptLib.MarkPlayerAction(context, 5007, 3, 5)
	                                end
	                            end
	                        end
	                    end
	                end
	            end
	        end
	    end
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_62018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62018(context, evt)
	--单层点亮超3个熄灭所有
	if evt.param1 >= 4 then
	    for i = 1,14 do
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_floor_1[i], GadgetState.Default)
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_floor_2[i], GadgetState.Default)
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_floor_3[i], GadgetState.Default)
	    end
	    ScriptLib.SetGroupVariableValue(context, "State_Floor_1", 0)
	    ScriptLib.SetGroupVariableValue(context, "State_Floor_2", 0)
	    ScriptLib.SetGroupVariableValue(context, "State_Floor_3", 0)
	end
	return 0
end