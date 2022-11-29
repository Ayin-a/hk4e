-- 基础信息
local base_info = {
	group_id = 133106247
}

-- Trigger变量
local defs = {
	group_id = 133106247,
	gadget_riddle_hint = 247001,
	gadget_riddle_1 = 247002,
	gadget_riddle_2 = 247003,
	gadget_riddle_3 = 247004,
	gadget_riddle_4 = 247005,
	gadget_chest = 247006
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
	{ config_id = 247001, gadget_id = 70310012, pos = { x = -170.757, y = 189.297, z = 893.764 }, rot = { x = 0.000, y = 71.073, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 247002, gadget_id = 70310011, pos = { x = -174.298, y = 189.467, z = 892.421 }, rot = { x = 0.000, y = 130.464, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 247003, gadget_id = 70310011, pos = { x = -180.591, y = 178.742, z = 912.671 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 247004, gadget_id = 70310011, pos = { x = -158.968, y = 197.885, z = 896.486 }, rot = { x = 0.000, y = 257.600, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 247005, gadget_id = 70310011, pos = { x = -166.911, y = 184.216, z = 874.502 }, rot = { x = 10.755, y = 14.100, z = 6.059 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 247006, gadget_id = 70900051, pos = { x = -170.800, y = 189.906, z = 893.800 }, rot = { x = 0.000, y = 182.064, z = 0.000 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1247007, name = "GADGET_STATE_CHANGE_247007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_247007", action = "action_EVENT_GADGET_STATE_CHANGE_247007", trigger_count = 0 },
	{ config_id = 1247008, name = "VARIABLE_CHANGE_247008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_247008", action = "action_EVENT_VARIABLE_CHANGE_247008", trigger_count = 0 },
	{ config_id = 1247009, name = "GROUP_LOAD_247009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_247009", trigger_count = 0 },
	{ config_id = 1247010, name = "GADGET_STATE_CHANGE_247010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_247010", action = "action_EVENT_GADGET_STATE_CHANGE_247010" },
	{ config_id = 1247011, name = "GADGET_CREATE_247011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_247011", action = "action_EVENT_GADGET_CREATE_247011", trigger_count = 0 },
	{ config_id = 1247012, name = "GADGET_CREATE_247012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_247012", action = "action_EVENT_GADGET_CREATE_247012", trigger_count = 0 }
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
		gadgets = { 247001, 247002, 247003, 247004, 247005, 247006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_247007", "VARIABLE_CHANGE_247008", "GROUP_LOAD_247009", "GADGET_STATE_CHANGE_247010", "GADGET_CREATE_247011", "GADGET_CREATE_247012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_247007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_247007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_247008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_247008(context, evt)
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
function action_EVENT_GROUP_LOAD_247009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_247010(context, evt)
	if 247006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_247010(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133106248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_247011(context, evt)
	if 247006 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"State_Flag"为4
	if ScriptLib.GetGroupVariableValue(context, "State_Flag") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_247011(context, evt)
	-- 将configid为 247006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 247006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_247012(context, evt)
	if 247006 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_247012(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133106248) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end