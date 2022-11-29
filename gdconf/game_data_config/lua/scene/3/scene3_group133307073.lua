-- 基础信息
local base_info = {
	group_id = 133307073
}

-- Trigger变量
local defs = {
	group_id = 133307073,
	gadget_riddle_hint = 73001,
	gadget_riddle_1 = 73002,
	gadget_riddle_2 = 73003,
	gadget_riddle_3 = 73004,
	gadget_riddle_4 = 73005,
	gadget_chest = 73006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 73013, monster_id = 28060301, pos = { x = -1852.171, y = 174.194, z = 5577.955 }, rot = { x = 0.000, y = 329.193, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 73001, gadget_id = 70330336, pos = { x = -1871.861, y = 146.497, z = 5575.977 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 73002, gadget_id = 70330335, pos = { x = -1869.393, y = 150.240, z = 5555.949 }, rot = { x = 349.888, y = 274.820, z = 350.811 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 73003, gadget_id = 70330335, pos = { x = -1853.124, y = 174.032, z = 5579.469 }, rot = { x = 340.031, y = 314.752, z = 8.023 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 73004, gadget_id = 70330335, pos = { x = -1859.174, y = 147.927, z = 5586.078 }, rot = { x = 6.918, y = 260.643, z = 342.331 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 73005, gadget_id = 70330335, pos = { x = -1819.361, y = 160.728, z = 5577.144 }, rot = { x = 357.584, y = 14.167, z = 10.353 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 73006, gadget_id = 70211102, pos = { x = -1871.830, y = 146.763, z = 5575.978 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 73007, gadget_id = 70220103, pos = { x = -1822.472, y = 162.726, z = 5574.575 }, rot = { x = 4.732, y = 2.283, z = 13.181 }, level = 32, area_id = 27 },
	{ config_id = 73008, gadget_id = 70220103, pos = { x = -1831.908, y = 174.881, z = 5568.988 }, rot = { x = 348.980, y = 359.983, z = 359.660 }, level = 32, area_id = 27 },
	{ config_id = 73009, gadget_id = 70220103, pos = { x = -1858.320, y = 174.165, z = 5565.425 }, rot = { x = 348.282, y = 358.707, z = 7.759 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1073010, name = "GADGET_STATE_CHANGE_73010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73010", action = "action_EVENT_GADGET_STATE_CHANGE_73010", trigger_count = 0 },
	{ config_id = 1073011, name = "VARIABLE_CHANGE_73011", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_73011", action = "action_EVENT_VARIABLE_CHANGE_73011", trigger_count = 0 },
	{ config_id = 1073012, name = "GROUP_LOAD_73012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_73012", trigger_count = 0 }
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
		monsters = { 73013 },
		gadgets = { 73001, 73002, 73003, 73004, 73005, 73006, 73007, 73008, 73009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_73010", "VARIABLE_CHANGE_73011", "GROUP_LOAD_73012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_73010(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_73010(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_73011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_73011(context, evt)
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
function action_EVENT_GROUP_LOAD_73012(context, evt)
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