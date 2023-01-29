-- 基础信息
local base_info = {
	group_id = 133307355
}

-- Trigger变量
local defs = {
	group_id = 133307355,
	gadget_riddle_hint = 355001,
	gadget_riddle_1 = 355002,
	gadget_riddle_2 = 355003,
	gadget_riddle_3 = 355004,
	gadget_riddle_4 = 355005,
	gadget_chest = 355006
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
	{ config_id = 355001, gadget_id = 70330336, pos = { x = -1768.088, y = 35.067, z = 5532.894 }, rot = { x = 0.000, y = 204.908, z = 0.000 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 355002, gadget_id = 70330411, pos = { x = -1781.712, y = 37.727, z = 5529.249 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 355003, gadget_id = 70330411, pos = { x = -1778.037, y = 37.727, z = 5542.771 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 355004, gadget_id = 70330411, pos = { x = -1763.139, y = 37.522, z = 5512.188 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 355005, gadget_id = 70330411, pos = { x = -1752.251, y = 37.522, z = 5547.756 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 19, persistent = true, area_id = 32 },
	{ config_id = 355006, gadget_id = 70211112, pos = { x = -1768.100, y = 35.516, z = 5532.900 }, rot = { x = 0.000, y = 285.308, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1355007, name = "GADGET_STATE_CHANGE_355007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_355007", action = "action_EVENT_GADGET_STATE_CHANGE_355007", trigger_count = 0 },
	{ config_id = 1355008, name = "VARIABLE_CHANGE_355008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_355008", action = "action_EVENT_VARIABLE_CHANGE_355008", trigger_count = 0 },
	{ config_id = 1355009, name = "GROUP_LOAD_355009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_355009", trigger_count = 0 }
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
		gadgets = { 355001, 355002, 355003, 355004, 355005, 355006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_355007", "VARIABLE_CHANGE_355008", "GROUP_LOAD_355009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_355007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_355007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_355008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_355008(context, evt)
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
function action_EVENT_GROUP_LOAD_355009(context, evt)
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