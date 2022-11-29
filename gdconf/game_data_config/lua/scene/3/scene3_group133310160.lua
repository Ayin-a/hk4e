-- 基础信息
local base_info = {
	group_id = 133310160
}

-- Trigger变量
local defs = {
	group_id = 133310160,
	gadget_riddle_hint = 160001,
	gadget_riddle_1 = 160002,
	gadget_riddle_2 = 160003,
	gadget_riddle_3 = 160004,
	gadget_riddle_4 = 160005,
	gadget_chest = 160006
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
	{ config_id = 160001, gadget_id = 70330336, pos = { x = -2980.915, y = 302.365, z = 4944.354 }, rot = { x = 6.180, y = 152.687, z = 9.268 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 160002, gadget_id = 70330335, pos = { x = -2974.817, y = 302.570, z = 4937.127 }, rot = { x = 0.000, y = 276.100, z = 347.461 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 160003, gadget_id = 70330335, pos = { x = -2988.233, y = 299.337, z = 4967.960 }, rot = { x = 25.188, y = 317.500, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 160004, gadget_id = 70330335, pos = { x = -2993.104, y = 303.335, z = 4936.922 }, rot = { x = 2.798, y = 259.678, z = 320.392 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 160005, gadget_id = 70330335, pos = { x = -2971.363, y = 300.184, z = 4948.966 }, rot = { x = 7.769, y = 16.204, z = 346.157 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 160006, gadget_id = 70211102, pos = { x = -2980.799, y = 302.802, z = 4944.433 }, rot = { x = 349.024, y = 266.593, z = 1.826 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1160007, name = "GADGET_STATE_CHANGE_160007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_160007", action = "action_EVENT_GADGET_STATE_CHANGE_160007", trigger_count = 0 },
	{ config_id = 1160008, name = "VARIABLE_CHANGE_160008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_160008", action = "action_EVENT_VARIABLE_CHANGE_160008", trigger_count = 0 },
	{ config_id = 1160009, name = "GROUP_LOAD_160009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_160009", trigger_count = 0 }
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
		gadgets = { 160001, 160002, 160003, 160004, 160005, 160006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_160007", "VARIABLE_CHANGE_160008", "GROUP_LOAD_160009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_160007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_160007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_160008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_160008(context, evt)
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
function action_EVENT_GROUP_LOAD_160009(context, evt)
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