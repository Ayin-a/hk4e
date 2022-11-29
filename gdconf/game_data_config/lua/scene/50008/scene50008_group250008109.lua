-- 基础信息
local base_info = {
	group_id = 250008109
}

-- Trigger变量
local defs = {
	group_id = 250008109,
	gadget_riddle_hint = 109001,
	gadget_riddle_1 = 109002,
	gadget_riddle_2 = 109003,
	gadget_riddle_3 = 109004,
	gadget_riddle_4 = 109005,
	gadget_chest = 109006
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
	{ config_id = 109001, gadget_id = 70310012, pos = { x = 215.511, y = 4.000, z = -292.685 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 109002, gadget_id = 70310011, pos = { x = 213.911, y = 4.000, z = -303.785 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 109003, gadget_id = 70310011, pos = { x = 204.511, y = 4.000, z = -291.485 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 109004, gadget_id = 70310011, pos = { x = 217.811, y = 4.000, z = -282.685 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 109005, gadget_id = 70310011, pos = { x = 228.611, y = 4.000, z = -295.085 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 109006, gadget_id = 70211111, pos = { x = 215.542, y = 4.449, z = -292.684 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1109007, name = "GADGET_STATE_CHANGE_109007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_109007", action = "action_EVENT_GADGET_STATE_CHANGE_109007", trigger_count = 0 },
	{ config_id = 1109008, name = "VARIABLE_CHANGE_109008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_109008", action = "action_EVENT_VARIABLE_CHANGE_109008", trigger_count = 0 },
	{ config_id = 1109009, name = "GROUP_LOAD_109009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_109009" }
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
		gadgets = { 109001, 109002, 109003, 109004, 109005, 109006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_109007", "VARIABLE_CHANGE_109008", "GROUP_LOAD_109009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_109007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_109008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_109008(context, evt)
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
function action_EVENT_GROUP_LOAD_109009(context, evt)
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