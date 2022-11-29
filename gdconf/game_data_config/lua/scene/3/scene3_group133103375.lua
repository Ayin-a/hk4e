-- 基础信息
local base_info = {
	group_id = 133103375
}

-- Trigger变量
local defs = {
	group_id = 133103375,
	gadget_riddle_hint = 375001,
	gadget_riddle_1 = 375002,
	gadget_riddle_2 = 375003,
	gadget_riddle_3 = 375004,
	gadget_riddle_4 = 375005,
	gadget_chest = 375006
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
	{ config_id = 375001, gadget_id = 70310012, pos = { x = 136.595, y = 244.608, z = 1018.023 }, rot = { x = 356.210, y = 179.957, z = 12.002 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 375002, gadget_id = 70310011, pos = { x = 127.755, y = 246.247, z = 1018.066 }, rot = { x = 359.714, y = 275.971, z = 358.769 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 375003, gadget_id = 70310011, pos = { x = 139.458, y = 244.460, z = 1007.094 }, rot = { x = 350.195, y = 317.943, z = 353.420 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 375004, gadget_id = 70310011, pos = { x = 138.143, y = 242.309, z = 1031.051 }, rot = { x = 350.794, y = 255.801, z = 351.634 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 375005, gadget_id = 70310011, pos = { x = 151.253, y = 241.967, z = 1014.574 }, rot = { x = 40.406, y = 4.440, z = 357.092 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 375006, gadget_id = 70211112, pos = { x = 136.632, y = 245.061, z = 1018.025 }, rot = { x = 345.031, y = 261.053, z = 357.322 }, level = 16, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1375007, name = "GADGET_STATE_CHANGE_375007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_375007", action = "action_EVENT_GADGET_STATE_CHANGE_375007", trigger_count = 0 },
	{ config_id = 1375008, name = "VARIABLE_CHANGE_375008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_375008", action = "action_EVENT_VARIABLE_CHANGE_375008", trigger_count = 0 },
	{ config_id = 1375009, name = "GROUP_LOAD_375009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_375009", trigger_count = 0 }
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
		gadgets = { 375001, 375002, 375003, 375004, 375005, 375006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_375007", "VARIABLE_CHANGE_375008", "GROUP_LOAD_375009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_375007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_375007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_375008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_375008(context, evt)
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
function action_EVENT_GROUP_LOAD_375009(context, evt)
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