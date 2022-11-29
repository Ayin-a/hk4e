-- 基础信息
local base_info = {
	group_id = 133309484
}

-- Trigger变量
local defs = {
	group_id = 133309484,
	gadget_riddle_hint = 484001,
	gadget_riddle_1 = 484002,
	gadget_riddle_2 = 484003,
	gadget_riddle_3 = 484004,
	gadget_riddle_4 = 484005,
	gadget_chest = 484006
}

-- DEFS_MISCS
local markList = {484002,484003,484004,484005}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 指示一下隐藏空间
	{ config_id = 484010, monster_id = 28060301, pos = { x = -2983.758, y = 230.914, z = 5564.838 }, rot = { x = 0.000, y = 34.939, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 484001, gadget_id = 70330336, pos = { x = -2993.349, y = 230.922, z = 5560.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 484002, gadget_id = 70330411, pos = { x = -2987.428, y = 230.992, z = 5550.979 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 484003, gadget_id = 70330411, pos = { x = -3005.716, y = 220.117, z = 5555.441 }, rot = { x = 0.000, y = 317.500, z = 345.610 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 484004, gadget_id = 70330411, pos = { x = -2980.158, y = 220.878, z = 5565.837 }, rot = { x = 19.810, y = 257.600, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 484005, gadget_id = 70330411, pos = { x = -2997.884, y = 232.361, z = 5571.172 }, rot = { x = 0.000, y = 357.027, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 484006, gadget_id = 70211151, pos = { x = -2993.355, y = 231.371, z = 5560.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 21910087, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 484011, gadget_id = 70710352, pos = { x = -3000.066, y = 219.396, z = 5563.173 }, rot = { x = 0.000, y = 343.072, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 484012, gadget_id = 70210101, pos = { x = -3000.194, y = 219.386, z = 5563.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 484013, gadget_id = 70330432, pos = { x = -2980.765, y = 220.964, z = 5557.628 }, rot = { x = 16.964, y = 9.050, z = 28.630 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1484007, name = "GADGET_STATE_CHANGE_484007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_484007", action = "action_EVENT_GADGET_STATE_CHANGE_484007", trigger_count = 0 },
	{ config_id = 1484008, name = "VARIABLE_CHANGE_484008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_484008", action = "action_EVENT_VARIABLE_CHANGE_484008", trigger_count = 0 },
	{ config_id = 1484009, name = "GROUP_LOAD_484009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_484009", trigger_count = 0 }
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
		monsters = { 484010 },
		gadgets = { 484001, 484002, 484003, 484004, 484005, 484006, 484011, 484012, 484013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_484007", "VARIABLE_CHANGE_484008", "GROUP_LOAD_484009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_484007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_484007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_484008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_484008(context, evt)
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
function action_EVENT_GROUP_LOAD_484009(context, evt)
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