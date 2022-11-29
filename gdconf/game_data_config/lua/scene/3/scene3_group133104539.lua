-- 基础信息
local base_info = {
	group_id = 133104539
}

-- Trigger变量
local defs = {
	group_id = 133104539,
	gadget_riddle_hint = 539001,
	gadget_riddle_1 = 539002,
	gadget_riddle_2 = 539003,
	gadget_riddle_3 = 539004,
	gadget_riddle_4 = 539005,
	gadget_chest = 539006
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
	{ config_id = 539001, gadget_id = 70310012, pos = { x = 534.436, y = 242.315, z = 914.164 }, rot = { x = 4.315, y = 270.848, z = 2.581 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 539002, gadget_id = 70310011, pos = { x = 535.310, y = 241.221, z = 925.385 }, rot = { x = 4.059, y = 13.410, z = 9.018 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 539003, gadget_id = 70310011, pos = { x = 534.610, y = 241.874, z = 902.877 }, rot = { x = 1.317, y = 317.628, z = 11.107 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 539004, gadget_id = 70310011, pos = { x = 519.948, y = 239.117, z = 914.160 }, rot = { x = 24.958, y = 256.493, z = 355.002 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 539005, gadget_id = 70310011, pos = { x = 551.099, y = 246.638, z = 913.828 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 539006, gadget_id = 70211112, pos = { x = 534.374, y = 242.763, z = 914.208 }, rot = { x = 358.182, y = 351.077, z = 4.687 }, level = 16, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1539007, name = "GADGET_STATE_CHANGE_539007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_539007", action = "action_EVENT_GADGET_STATE_CHANGE_539007", trigger_count = 0 },
	{ config_id = 1539008, name = "VARIABLE_CHANGE_539008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_539008", action = "action_EVENT_VARIABLE_CHANGE_539008", trigger_count = 0 },
	{ config_id = 1539009, name = "GROUP_LOAD_539009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_539009", trigger_count = 0 }
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
		gadgets = { 539001, 539002, 539003, 539004, 539005, 539006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_539007", "VARIABLE_CHANGE_539008", "GROUP_LOAD_539009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_539007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_539007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_539008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_539008(context, evt)
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
function action_EVENT_GROUP_LOAD_539009(context, evt)
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