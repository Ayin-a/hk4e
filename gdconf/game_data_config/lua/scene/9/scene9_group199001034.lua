-- 基础信息
local base_info = {
	group_id = 199001034
}

-- Trigger变量
local defs = {
	group_id = 199001034,
	gadget_riddle_hint = 34001,
	gadget_riddle_1 = 34002,
	gadget_riddle_2 = 34003,
	gadget_riddle_3 = 34004,
	gadget_riddle_4 = 34005,
	gadget_chest = 34006
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
	{ config_id = 34001, gadget_id = 70310012, pos = { x = 203.816, y = 86.496, z = 352.421 }, rot = { x = 7.830, y = 72.715, z = 23.645 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 34002, gadget_id = 70310011, pos = { x = 218.920, y = 83.440, z = 394.360 }, rot = { x = 344.613, y = 138.061, z = 348.196 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 34003, gadget_id = 70310011, pos = { x = 201.394, y = 88.382, z = 349.108 }, rot = { x = 344.918, y = 317.849, z = 343.410 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 34004, gadget_id = 70310011, pos = { x = 214.491, y = 98.245, z = 320.952 }, rot = { x = 356.392, y = 257.125, z = 345.827 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 34005, gadget_id = 70310011, pos = { x = 196.325, y = 134.371, z = 293.820 }, rot = { x = 359.853, y = 11.924, z = 359.744 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 34006, gadget_id = 70900007, pos = { x = 203.773, y = 87.034, z = 352.710 }, rot = { x = 335.180, y = 182.274, z = 359.045 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034007, name = "GADGET_STATE_CHANGE_34007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34007", action = "action_EVENT_GADGET_STATE_CHANGE_34007", trigger_count = 0 },
	{ config_id = 1034008, name = "VARIABLE_CHANGE_34008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_34008", action = "action_EVENT_VARIABLE_CHANGE_34008", trigger_count = 0 },
	{ config_id = 1034009, name = "GROUP_LOAD_34009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_34009", trigger_count = 0 },
	{ config_id = 1034010, name = "GADGET_STATE_CHANGE_34010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_34010", action = "action_EVENT_GADGET_STATE_CHANGE_34010", trigger_count = 0 },
	{ config_id = 1034011, name = "GADGET_CREATE_34011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_34011", action = "action_EVENT_GADGET_CREATE_34011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1034012, name = "GADGET_CREATE_34012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_34012", action = "action_EVENT_GADGET_CREATE_34012", trigger_count = 0 }
	}
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
		gadgets = { 34001, 34002, 34003, 34004, 34005, 34006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_34007", "VARIABLE_CHANGE_34008", "GROUP_LOAD_34009", "GADGET_STATE_CHANGE_34010", "GADGET_CREATE_34011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_34007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_34008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34008(context, evt)
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
function action_EVENT_GROUP_LOAD_34009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_34010(context, evt)
	if 34006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_34010(context, evt)
	-- 将本组内变量名为 "WatorHeight" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "WatorHeight", 2, 199001065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_34011(context, evt)
	if 34006 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"State_Flag"为4
	if ScriptLib.GetGroupVariableValue(context, "State_Flag") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_34011(context, evt)
	-- 将configid为 34006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end