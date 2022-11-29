-- 基础信息
local base_info = {
	group_id = 199001033
}

-- Trigger变量
local defs = {
	group_id = 199001033,
	gadget_riddle_hint = 33001,
	gadget_riddle_1 = 33002,
	gadget_riddle_2 = 33003,
	gadget_riddle_3 = 33004,
	gadget_riddle_4 = 33005,
	gadget_chest = 33006
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
	{ config_id = 33001, gadget_id = 70310012, pos = { x = 199.646, y = 89.748, z = 429.221 }, rot = { x = 0.000, y = 71.073, z = 0.000 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 33002, gadget_id = 70310011, pos = { x = 206.595, y = 92.282, z = 426.041 }, rot = { x = 342.708, y = 138.176, z = 0.537 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 33003, gadget_id = 70310011, pos = { x = 191.671, y = 93.225, z = 425.917 }, rot = { x = 8.334, y = 317.307, z = 348.886 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 33004, gadget_id = 70310011, pos = { x = 197.480, y = 91.711, z = 434.760 }, rot = { x = 352.197, y = 253.226, z = 0.002 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 33005, gadget_id = 70310011, pos = { x = 210.987, y = 93.706, z = 434.292 }, rot = { x = 9.385, y = 12.143, z = 23.989 }, level = 20, persistent = true, area_id = 402 },
	{ config_id = 33006, gadget_id = 70900007, pos = { x = 199.603, y = 90.357, z = 429.257 }, rot = { x = 0.000, y = 182.064, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033007, name = "GADGET_STATE_CHANGE_33007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33007", action = "action_EVENT_GADGET_STATE_CHANGE_33007", trigger_count = 0 },
	{ config_id = 1033008, name = "VARIABLE_CHANGE_33008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_33008", action = "action_EVENT_VARIABLE_CHANGE_33008", trigger_count = 0 },
	{ config_id = 1033009, name = "GROUP_LOAD_33009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_33009", trigger_count = 0 },
	{ config_id = 1033010, name = "GADGET_STATE_CHANGE_33010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_33010", action = "action_EVENT_GADGET_STATE_CHANGE_33010", trigger_count = 0 },
	{ config_id = 1033011, name = "GADGET_CREATE_33011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_33011", action = "action_EVENT_GADGET_CREATE_33011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1033012, name = "GADGET_CREATE_33012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_33012", action = "action_EVENT_GADGET_CREATE_33012", trigger_count = 0 }
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
		gadgets = { 33001, 33002, 33003, 33004, 33005, 33006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_33007", "VARIABLE_CHANGE_33008", "GROUP_LOAD_33009", "GADGET_STATE_CHANGE_33010", "GADGET_CREATE_33011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_33007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33007(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_33008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33008(context, evt)
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
function action_EVENT_GROUP_LOAD_33009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_33010(context, evt)
	if 33006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_33010(context, evt)
	-- 将本组内变量名为 "WatorHeight" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "WatorHeight", 1, 199001065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_33011(context, evt)
	if 33006 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	-- 判断变量"State_Flag"为4
	if ScriptLib.GetGroupVariableValue(context, "State_Flag") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_33011(context, evt)
	-- 将configid为 33006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end