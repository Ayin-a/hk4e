-- 基础信息
local base_info = {
	group_id = 133102077
}

-- Trigger变量
local defs = {
	group_id = 133102077,
	gadget_riddle_hint = 305,
	gadget_riddle_1 = 306,
	gadget_riddle_2 = 307,
	gadget_riddle_3 = 308,
	gadget_riddle_4 = 309,
	gadget_chest = 310
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
	{ config_id = 305, gadget_id = 70310012, pos = { x = 1182.720, y = 201.832, z = 533.161 }, rot = { x = 7.078, y = 173.684, z = 4.311 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 306, gadget_id = 70310011, pos = { x = 1182.924, y = 202.895, z = 521.817 }, rot = { x = 5.906, y = 181.669, z = 340.203 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 307, gadget_id = 70310011, pos = { x = 1191.887, y = 205.560, z = 533.916 }, rot = { x = 358.909, y = 273.133, z = 356.297 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 308, gadget_id = 70310011, pos = { x = 1175.037, y = 201.987, z = 532.648 }, rot = { x = 339.447, y = 310.169, z = 342.727 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 309, gadget_id = 70310011, pos = { x = 1181.832, y = 202.299, z = 538.297 }, rot = { x = 354.952, y = 257.679, z = 3.513 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 310, gadget_id = 70211112, pos = { x = 1182.688, y = 202.285, z = 533.129 }, rot = { x = 8.238, y = 136.305, z = 359.149 }, level = 16, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000182, name = "GADGET_STATE_CHANGE_182", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182", action = "action_EVENT_GADGET_STATE_CHANGE_182", trigger_count = 0 },
	{ config_id = 1000183, name = "VARIABLE_CHANGE_183", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_183", action = "action_EVENT_VARIABLE_CHANGE_183", trigger_count = 0 },
	{ config_id = 1000184, name = "GROUP_LOAD_184", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_184", trigger_count = 0 }
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
		gadgets = { 305, 306, 307, 308, 309, 310 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_182", "VARIABLE_CHANGE_183", "GROUP_LOAD_184" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_182(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_182(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_183(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_183(context, evt)
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
function action_EVENT_GROUP_LOAD_184(context, evt)
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