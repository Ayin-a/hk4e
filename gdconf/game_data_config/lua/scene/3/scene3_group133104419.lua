-- 基础信息
local base_info = {
	group_id = 133104419
}

-- Trigger变量
local defs = {
	group_id = 133104419,
	gadget_riddle_hint = 419001,
	gadget_riddle_1 = 419002,
	gadget_riddle_2 = 419003,
	gadget_riddle_3 = 419004,
	gadget_riddle_4 = 419005,
	gadget_chest = 419006
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
	{ config_id = 419001, gadget_id = 70310012, pos = { x = -113.794, y = 281.072, z = 110.515 }, rot = { x = 0.000, y = 115.931, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 419002, gadget_id = 70310011, pos = { x = -110.390, y = 281.338, z = 109.048 }, rot = { x = 0.000, y = 165.107, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 419003, gadget_id = 70310011, pos = { x = -106.860, y = 286.502, z = 121.765 }, rot = { x = 355.121, y = 281.449, z = 9.226 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 419004, gadget_id = 70310011, pos = { x = -120.601, y = 292.075, z = 113.288 }, rot = { x = 354.271, y = 215.830, z = -0.003 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 419005, gadget_id = 70310011, pos = { x = -118.185, y = 281.677, z = 99.620 }, rot = { x = 358.884, y = 332.274, z = 1.431 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 419006, gadget_id = 70211112, pos = { x = -113.806, y = 281.521, z = 110.543 }, rot = { x = 0.000, y = 161.652, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1419007, name = "GADGET_STATE_CHANGE_419007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_419007", action = "action_EVENT_GADGET_STATE_CHANGE_419007", trigger_count = 0 },
	{ config_id = 1419008, name = "VARIABLE_CHANGE_419008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_419008", action = "action_EVENT_VARIABLE_CHANGE_419008", trigger_count = 0 },
	{ config_id = 1419009, name = "GROUP_LOAD_419009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_419009", trigger_count = 0 }
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
		gadgets = { 419001, 419002, 419003, 419004, 419005, 419006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_419007", "VARIABLE_CHANGE_419008", "GROUP_LOAD_419009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_419007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_419007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_419008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_419008(context, evt)
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
function action_EVENT_GROUP_LOAD_419009(context, evt)
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