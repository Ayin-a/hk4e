-- 基础信息
local base_info = {
	group_id = 220032006
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 220032006,
	gadget_1 = 6001,
	gadget_2 = 6002,
	gadget_3 = 6003,
	gadget_4 = 6005,
	gadget_chest = 6004
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
	{ config_id = 6001, gadget_id = 70900039, pos = { x = 445.536, y = -9.426, z = 127.379 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 6002, gadget_id = 70900039, pos = { x = 445.545, y = -9.367, z = 133.190 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 6003, gadget_id = 70900039, pos = { x = 450.837, y = -9.369, z = 127.268 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true },
	{ config_id = 6004, gadget_id = 70211101, pos = { x = 455.617, y = -9.347, z = 132.335 }, rot = { x = 0.000, y = 235.482, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 6005, gadget_id = 70900039, pos = { x = 451.083, y = -9.372, z = 133.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action01, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006006, name = "GADGET_STATE_CHANGE_6006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6006", action = "action_EVENT_GADGET_STATE_CHANGE_6006", trigger_count = 0 },
	{ config_id = 1006007, name = "TIMER_EVENT_6007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_6007", action = "action_EVENT_TIMER_EVENT_6007", trigger_count = 0 },
	{ config_id = 1006008, name = "VARIABLE_CHANGE_6008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6008", action = "action_EVENT_VARIABLE_CHANGE_6008", trigger_count = 0 },
	{ config_id = 1006009, name = "GADGET_STATE_CHANGE_6009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6009", action = "action_EVENT_GADGET_STATE_CHANGE_6009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = false }
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
		gadgets = { 6001, 6002, 6003, 6005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_6006", "TIMER_EVENT_6007", "VARIABLE_CHANGE_6008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6006(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	if evt.param1 == GadgetState.Action01 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.Action02 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param2), defs.timer)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_6007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == -1 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	if ScriptLib.CreateGadget(context, { config_id = defs.gadget_chest }) ~= 0 then
	return -1
	end
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	-- 改变指定group组220032003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220032003, 3001, GadgetState.ChestOpened) then
			return -1
		end 
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
			return -1
		end 
	-- 将configid为 6002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6002, GadgetState.GearStart) then
			return -1
		end 
	-- 将configid为 6003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6003, GadgetState.GearStart) then
			return -1
		end 
	-- 将configid为 6005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6005, GadgetState.GearStart) then
			return -1
		end 
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6009(context, evt)
	if 6004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6009(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 6005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end