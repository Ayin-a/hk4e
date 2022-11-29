-- 基础信息
local base_info = {
	group_id = 133309107
}

-- Trigger变量
local defs = {
	group_id = 133309107,
	gadget_riddle_hint = 107001,
	gadget_riddle_1 = 107002,
	gadget_riddle_2 = 107003,
	gadget_riddle_3 = 107004,
	gadget_riddle_4 = 107005,
	gadget_chest = 107006
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
	{ config_id = 107001, gadget_id = 70330336, pos = { x = -2443.549, y = -47.525, z = 5719.312 }, rot = { x = 353.932, y = 220.138, z = 5.181 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 107002, gadget_id = 70330411, pos = { x = -2447.808, y = -44.053, z = 5707.150 }, rot = { x = 341.179, y = 215.164, z = 5.618 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 107003, gadget_id = 70330411, pos = { x = -2451.870, y = -45.601, z = 5727.235 }, rot = { x = 347.988, y = 316.148, z = 7.765 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 107004, gadget_id = 70330335, pos = { x = -2424.679, y = -47.770, z = 5732.760 }, rot = { x = 351.939, y = 254.934, z = 28.831 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 107005, gadget_id = 70330335, pos = { x = -2434.011, y = -46.328, z = 5703.882 }, rot = { x = 20.735, y = 6.428, z = 338.134 }, level = 19, persistent = true, area_id = 27 },
	{ config_id = 107006, gadget_id = 70211112, pos = { x = -2443.420, y = -47.089, z = 5719.299 }, rot = { x = 7.879, y = 89.621, z = 1.224 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1107007, name = "GADGET_STATE_CHANGE_107007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_107007", action = "action_EVENT_GADGET_STATE_CHANGE_107007", trigger_count = 0 },
	{ config_id = 1107008, name = "VARIABLE_CHANGE_107008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_107008", action = "action_EVENT_VARIABLE_CHANGE_107008", trigger_count = 0 },
	{ config_id = 1107009, name = "GROUP_LOAD_107009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_107009", trigger_count = 0 }
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
		gadgets = { 107001, 107002, 107003, 107004, 107005, 107006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_107007", "VARIABLE_CHANGE_107008", "GROUP_LOAD_107009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_107007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_107007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_107008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_107008(context, evt)
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
function action_EVENT_GROUP_LOAD_107009(context, evt)
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