-- 基础信息
local base_info = {
	group_id = 133310587
}

-- Trigger变量
local defs = {
	group_id = 133310587,
	gadget_riddle_hint = 587001,
	gadget_riddle_1 = 587002,
	gadget_riddle_2 = 587003,
	gadget_riddle_3 = 587004,
	gadget_riddle_4 = 587005,
	gadget_chest = 587006
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
	{ config_id = 587001, gadget_id = 70330336, pos = { x = -3032.566, y = 106.462, z = 4249.347 }, rot = { x = 0.000, y = 0.000, z = 358.210 }, level = 19, persistent = true, area_id = 28 },
	{ config_id = 587002, gadget_id = 70330335, pos = { x = -3016.345, y = 107.636, z = 4233.586 }, rot = { x = 0.083, y = 258.274, z = 347.389 }, level = 19, persistent = true, area_id = 28 },
	{ config_id = 587003, gadget_id = 70330335, pos = { x = -3057.552, y = 108.248, z = 4228.794 }, rot = { x = 12.412, y = 258.153, z = 336.831 }, level = 19, persistent = true, area_id = 28 },
	{ config_id = 587004, gadget_id = 70330335, pos = { x = -3015.321, y = 104.216, z = 4263.522 }, rot = { x = 359.071, y = 168.158, z = 1.862 }, level = 19, persistent = true, area_id = 28 },
	{ config_id = 587005, gadget_id = 70330335, pos = { x = -3045.573, y = 107.160, z = 4270.382 }, rot = { x = 8.644, y = 358.299, z = 351.830 }, level = 19, persistent = true, area_id = 28 },
	{ config_id = 587006, gadget_id = 70211112, pos = { x = -3032.490, y = 106.909, z = 4249.339 }, rot = { x = 359.032, y = 327.274, z = 358.494 }, level = 26, drop_tag = "解谜中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 587010, gadget_id = 70330259, pos = { x = -3016.454, y = 103.037, z = 4261.404 }, rot = { x = 344.094, y = 223.914, z = 1.823 }, level = 32, isOneoff = true, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1587007, name = "GADGET_STATE_CHANGE_587007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_587007", action = "action_EVENT_GADGET_STATE_CHANGE_587007", trigger_count = 0 },
	{ config_id = 1587008, name = "VARIABLE_CHANGE_587008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_587008", action = "action_EVENT_VARIABLE_CHANGE_587008", trigger_count = 0 },
	{ config_id = 1587009, name = "GROUP_LOAD_587009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_587009", trigger_count = 0 },
	{ config_id = 1587011, name = "ANY_GADGET_DIE_587011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_587011", action = "action_EVENT_ANY_GADGET_DIE_587011", trigger_count = 0 }
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
		gadgets = { 587001, 587002, 587003, 587004, 587005, 587006, 587010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_587007", "VARIABLE_CHANGE_587008", "GROUP_LOAD_587009", "ANY_GADGET_DIE_587011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_587007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_587007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_587008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_587008(context, evt)
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
function action_EVENT_GROUP_LOAD_587009(context, evt)
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

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_587011(context, evt)
	if 587010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_587011(context, evt)
	-- 将本组内变量名为 "stone03" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone03", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end