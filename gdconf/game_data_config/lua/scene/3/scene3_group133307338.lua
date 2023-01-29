-- 基础信息
local base_info = {
	group_id = 133307338
}

-- Trigger变量
local defs = {
	group_id = 133307338,
	gadget_riddle_hint = 338001,
	gadget_riddle_1 = 338002,
	gadget_riddle_2 = 338003,
	gadget_riddle_3 = 338004,
	gadget_riddle_4 = 338005,
	gadget_chest = 338006
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
	{ config_id = 338001, gadget_id = 70310012, pos = { x = -909.214, y = 100.952, z = 5602.126 }, rot = { x = 14.804, y = 182.504, z = 339.108 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 338002, gadget_id = 70310011, pos = { x = -891.815, y = 107.274, z = 5598.228 }, rot = { x = 24.774, y = 279.392, z = 9.789 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 338003, gadget_id = 70310011, pos = { x = -910.825, y = 112.875, z = 5618.734 }, rot = { x = 12.339, y = 318.532, z = 9.528 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 338004, gadget_id = 70310011, pos = { x = -943.631, y = 91.097, z = 5612.134 }, rot = { x = 22.055, y = 261.429, z = 19.469 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 338005, gadget_id = 70310011, pos = { x = -914.604, y = 99.948, z = 5580.277 }, rot = { x = 354.796, y = 11.933, z = 13.823 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 338006, gadget_id = 70211102, pos = { x = -909.441, y = 101.346, z = 5602.082 }, rot = { x = 22.683, y = 267.095, z = 11.773 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1338007, name = "GADGET_STATE_CHANGE_338007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_338007", action = "action_EVENT_GADGET_STATE_CHANGE_338007", trigger_count = 0 },
	{ config_id = 1338008, name = "VARIABLE_CHANGE_338008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_338008", action = "action_EVENT_VARIABLE_CHANGE_338008", trigger_count = 0 },
	{ config_id = 1338009, name = "GROUP_LOAD_338009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_338009", trigger_count = 0 }
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
		gadgets = { 338001, 338002, 338003, 338004, 338005, 338006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_338007", "VARIABLE_CHANGE_338008", "GROUP_LOAD_338009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_338007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_338007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_338008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_338008(context, evt)
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
function action_EVENT_GROUP_LOAD_338009(context, evt)
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