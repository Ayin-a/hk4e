-- 基础信息
local base_info = {
	group_id = 220000083
}

-- Trigger变量
local defs = {
	group_id = 220000083,
	riddle_hint = 598,
	riddle_1 = 600,
	riddle_2 = 601,
	riddle_3 = 602,
	riddle_4 = 603
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
	{ config_id = 598, gadget_id = 70220029, pos = { x = 95.469, y = -12.000, z = 650.457 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1 },
	{ config_id = 599, gadget_id = 70220030, pos = { x = 95.469, y = -11.820, z = 650.457 }, rot = { x = 0.000, y = 182.700, z = 0.000 }, level = 1 },
	{ config_id = 600, gadget_id = 70220031, pos = { x = 93.869, y = -12.000, z = 639.357 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 601, gadget_id = 70220031, pos = { x = 81.769, y = -12.000, z = 653.657 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 602, gadget_id = 70220031, pos = { x = 97.769, y = -12.000, z = 660.457 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 603, gadget_id = 70220031, pos = { x = 108.569, y = -12.000, z = 648.057 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 604, gadget_id = 70211001, pos = { x = 96.069, y = -11.820, z = 650.557 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000162, name = "GADGET_STATE_CHANGE_162", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_162", action = "action_EVENT_GADGET_STATE_CHANGE_162", trigger_count = 0 },
	{ config_id = 1000163, name = "GADGET_STATE_CHANGE_163", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_163", action = "action_EVENT_GADGET_STATE_CHANGE_163" },
	{ config_id = 1000164, name = "VARIABLE_CHANGE_164", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164", action = "action_EVENT_VARIABLE_CHANGE_164", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Stage_Flag", value = 4, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 598, 599, 600, 601, 602, 603, 604 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_162", "GADGET_STATE_CHANGE_163", "VARIABLE_CHANGE_164" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 599 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 598, 600, 601, 602, 603, 604 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_162", "VARIABLE_CHANGE_164" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_162(context, evt)
	if evt.param2 ~= defs.riddle_1 and evt.param2 ~= defs.riddle_2 and evt.param2 ~= defs.riddle_3 and evt.param2 ~= defs.riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_162(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_163(context, evt)
	if evt.param1 ~= GadgetState.GearStart or evt.param2 ~= defs.riddle_hint then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_163(context, evt)
	if 0 ~= ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2) then
	return -1
	end
	if 0 ~= ScriptLib.GoToGroupSuite(context, defs.group_id, 3) then
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164(context, evt)
	if evt.param1 == evt.param2 then return false end
	
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164(context, evt)
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