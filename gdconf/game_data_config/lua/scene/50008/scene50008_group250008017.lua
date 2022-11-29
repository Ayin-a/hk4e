-- 基础信息
local base_info = {
	group_id = 250008017
}

-- Trigger变量
local defs = {
	group_id = 250008017,
	riddle_hint = 90,
	riddle_1 = 92,
	riddle_2 = 93,
	riddle_3 = 94,
	riddle_4 = 95
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
	{ config_id = 90, gadget_id = 70220029, pos = { x = 18.930, y = 4.000, z = -151.949 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1 },
	{ config_id = 91, gadget_id = 70220030, pos = { x = 18.930, y = 4.180, z = -151.949 }, rot = { x = 0.000, y = 182.700, z = 0.000 }, level = 1 },
	{ config_id = 92, gadget_id = 70220031, pos = { x = 17.330, y = 4.000, z = -163.049 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 93, gadget_id = 70220031, pos = { x = 5.230, y = 4.000, z = -148.749 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 94, gadget_id = 70220031, pos = { x = 21.230, y = 4.000, z = -141.949 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 95, gadget_id = 70220031, pos = { x = 32.030, y = 4.000, z = -154.349 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 96, gadget_id = 70211031, pos = { x = 19.530, y = 4.180, z = -151.849 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000052, name = "GADGET_STATE_CHANGE_52", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52", action = "action_EVENT_GADGET_STATE_CHANGE_52", trigger_count = 0 },
	{ config_id = 1000053, name = "GADGET_STATE_CHANGE_53", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53", action = "action_EVENT_GADGET_STATE_CHANGE_53" },
	{ config_id = 1000054, name = "VARIABLE_CHANGE_54", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_54", trigger_count = 0 },
	{ config_id = 1000055, name = "NONE_55", event = EventType.EVENT_NONE, source = "", condition = "", action = "action_EVENT_NONE_55" }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 4, no_refresh = true }
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
		gadgets = { 90, 91, 92, 93, 94, 95, 96 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52", "GADGET_STATE_CHANGE_53", "VARIABLE_CHANGE_54", "NONE_55" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 91 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52(context, evt)
	if evt.param2 ~= defs.riddle_1 and evt.param2 ~= defs.riddle_2 and evt.param2 ~= defs.riddle_3 and evt.param2 ~= defs.riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	if evt.param1 ~= GadgetState.GearStart or evt.param2 ~= defs.riddle_hint then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53(context, evt)
	if 0 ~= ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2) then
	return -1
	end
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_54(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	local value = ScriptLib.GetGroupVariableValue(context, "State_Flag")
	if value < 0 or value > 4 then
	return -1
	end 
	if value == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.Default)
	elseif value == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.Action01)
	elseif value == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.Action02)
	elseif value == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.Action03)
	elseif value == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint, GadgetState.GearStart)
	end
	return 0
end

-- 触发操作
function action_EVENT_NONE_55(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_hint) then
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	end
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end