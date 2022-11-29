-- 基础信息
local base_info = {
	group_id = 133310617
}

-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 2,
	group_id = 133310617,
	gadget_1 = 617001,
	gadget_2 = 617002,
	gadget_3 = 617003,
	gadget_4 = 617005,
	gadget_chest = 617004
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
	-- 左下
	{ config_id = 617001, gadget_id = 70330332, pos = { x = -2714.559, y = 151.801, z = 5083.360 }, rot = { x = 0.000, y = 0.000, z = 353.290 }, level = 32, state = GadgetState.ChestLocked, persistent = true, area_id = 27 },
	-- 右下
	{ config_id = 617002, gadget_id = 70330332, pos = { x = -2710.563, y = 151.367, z = 5079.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.ChestLocked, persistent = true, area_id = 27 },
	-- 右上
	{ config_id = 617003, gadget_id = 70330332, pos = { x = -2707.756, y = 151.354, z = 5081.984 }, rot = { x = 346.865, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.ChestLocked, persistent = true, area_id = 27 },
	{ config_id = 617004, gadget_id = 70211102, pos = { x = -2714.594, y = 151.922, z = 5075.105 }, rot = { x = 5.638, y = 198.496, z = 5.623 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	-- 左上
	{ config_id = 617005, gadget_id = 70330332, pos = { x = -2711.199, y = 151.548, z = 5086.148 }, rot = { x = 10.585, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.ChestLocked, persistent = true, area_id = 27 },
	-- 左上
	{ config_id = 617009, gadget_id = 70330430, pos = { x = -2710.624, y = 152.210, z = 5086.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 左下
	{ config_id = 617010, gadget_id = 70330430, pos = { x = -2714.408, y = 152.494, z = 5083.487 }, rot = { x = 0.000, y = 324.583, z = 0.000 }, level = 32, area_id = 27 },
	-- 右下
	{ config_id = 617011, gadget_id = 70330430, pos = { x = -2710.769, y = 152.083, z = 5079.180 }, rot = { x = 0.000, y = 13.288, z = 358.547 }, level = 32, area_id = 27 },
	-- 右上
	{ config_id = 617012, gadget_id = 70330430, pos = { x = -2707.723, y = 151.964, z = 5081.679 }, rot = { x = 0.000, y = 90.263, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1617006, name = "VARIABLE_CHANGE_617006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_617006", action = "action_EVENT_VARIABLE_CHANGE_617006", trigger_count = 0 },
	{ config_id = 1617007, name = "GADGET_STATE_CHANGE_617007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_617007", action = "action_EVENT_GADGET_STATE_CHANGE_617007", trigger_count = 0 },
	{ config_id = 1617008, name = "TIME_AXIS_PASS_617008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_617008", action = "action_EVENT_TIME_AXIS_PASS_617008", trigger_count = 0 },
	{ config_id = 1617013, name = "VARIABLE_CHANGE_617013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_617013", action = "action_EVENT_VARIABLE_CHANGE_617013", trigger_count = 0 },
	-- 左下
	{ config_id = 1617014, name = "ANY_GADGET_DIE_617014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_617014", action = "action_EVENT_ANY_GADGET_DIE_617014", trigger_count = 0 },
	-- 左上
	{ config_id = 1617015, name = "ANY_GADGET_DIE_617015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_617015", action = "action_EVENT_ANY_GADGET_DIE_617015", trigger_count = 0 },
	-- 右下
	{ config_id = 1617016, name = "ANY_GADGET_DIE_617016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_617016", action = "action_EVENT_ANY_GADGET_DIE_617016", trigger_count = 0 },
	-- 右上
	{ config_id = 1617017, name = "ANY_GADGET_DIE_617017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_617017", action = "action_EVENT_ANY_GADGET_DIE_617017", trigger_count = 0 },
	-- 保底
	{ config_id = 1617018, name = "GROUP_LOAD_617018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_617018", trigger_count = 0 },
	{ config_id = 1617019, name = "GADGET_CREATE_617019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_617019", action = "action_EVENT_GADGET_CREATE_617019", trigger_count = 0 },
	{ config_id = 1617020, name = "GADGET_CREATE_617020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_617020", action = "action_EVENT_GADGET_CREATE_617020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "active_count", value = 0, no_refresh = true },
	{ config_id = 2, name = "finished", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 617001, 617002, 617003, 617004, 617005, 617009, 617010, 617011, 617012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_617006", "GADGET_STATE_CHANGE_617007", "TIME_AXIS_PASS_617008", "VARIABLE_CHANGE_617013", "ANY_GADGET_DIE_617014", "ANY_GADGET_DIE_617015", "ANY_GADGET_DIE_617016", "ANY_GADGET_DIE_617017", "GROUP_LOAD_617018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 617001, 617002, 617003, 617004, 617005 },
		regions = { },
		triggers = { "GADGET_CREATE_617019", "GADGET_CREATE_617020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_617006(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_617006(context, evt)
	ScriptLib.EndTimeAxis(context, tostring(defs.gadget_1))
	ScriptLib.EndTimeAxis(context, tostring(defs.gadget_2))
	ScriptLib.EndTimeAxis(context, tostring(defs.gadget_3))
	ScriptLib.EndTimeAxis(context, tostring(defs.gadget_4))
	
	if defs.gadget_1 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStart)
	end
	
	if defs.gadget_2 ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.GearStart)
	end
	
	if defs.gadget_3 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.GearStart)
	end
	
	if defs.gadget_4 ~=0 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_4, GadgetState.GearStart)
	end
	
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_617007(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_617007(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	
	if evt.param1 == GadgetState.Action01 and evt.param3 == GadgetState.Action02 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.Action02 then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	-- 创建标识为"tostring(evt.param2)"，时间节点为{defs.timer}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, tostring(evt.param2), {defs.timer}, false)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_617008(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_617008(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Action01) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_617013(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_617013(context, evt)
	-- 将configid为 617004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 617004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310617, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_617014(context, evt)
	if 617010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_617014(context, evt)
	-- 将configid为 617001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 617001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_617015(context, evt)
	if 617009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_617015(context, evt)
	-- 将configid为 617005 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 617005, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_617016(context, evt)
	if 617011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_617016(context, evt)
	-- 将configid为 617002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 617002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_617017(context, evt)
	if 617012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_617017(context, evt)
	-- 将configid为 617003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 617003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_617018(context, evt)
	local _active = 0
	
	if defs.gadget_1 ~= 0 then
		if GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_1) then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.Action01)
		_active=_active + 1
		end
	end
	if defs.gadget_2 ~= 0 then
		if GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_2) then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.Action01)
		_active=_active + 1
		end
	end
	if defs.gadget_3 ~= 0 then
		if GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_3) then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_3, GadgetState.Action01)
		_active=_active + 1
		end
	end
	if defs.gadget_4 ~= 0 then
		if GadgetState.Action02 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_4) then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_4, GadgetState.Action01)
		_active=_active + 1
		end
	end
	
	
	ScriptLib.SetGroupVariableValue(context, "active_count", _active)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_617019(context, evt)
	if defs.gadget_1 ~= evt.param1 and defs.gadget_2 ~= evt.param1 and defs.gadget_3 ~= evt.param1 and defs.gadget_4 ~= evt.param1 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_617019(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_617020(context, evt)
	if defs.gadget_chest ~= evt.param1 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_617020(context, evt)
	-- 将configid为 0 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, evt.param1, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end