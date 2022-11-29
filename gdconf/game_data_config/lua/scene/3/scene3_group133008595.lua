-- 基础信息
local base_info = {
	group_id = 133008595
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
	{ config_id = 595001, gadget_id = 70690017, pos = { x = 1003.336, y = 632.530, z = -892.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 595002, gadget_id = 70690001, pos = { x = 1003.071, y = 649.011, z = -891.993 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 595003, gadget_id = 70690001, pos = { x = 1003.071, y = 658.289, z = -891.993 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 595005, gadget_id = 70690001, pos = { x = 1009.263, y = 676.393, z = -888.650 }, rot = { x = 0.000, y = 65.706, z = 0.000 }, level = 10, area_id = 10 },
	{ config_id = 595006, gadget_id = 70690001, pos = { x = 1016.015, y = 676.393, z = -885.026 }, rot = { x = 0.000, y = 56.641, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 595007, gadget_id = 70690001, pos = { x = 1022.637, y = 676.393, z = -879.877 }, rot = { x = 0.000, y = 43.029, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 595008, gadget_id = 70690001, pos = { x = 1029.572, y = 676.393, z = -873.015 }, rot = { x = 0.000, y = 39.191, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 595009, gadget_id = 70310015, pos = { x = 996.069, y = 637.259, z = -899.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 595010, gadget_id = 70310015, pos = { x = 1001.588, y = 637.141, z = -898.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 595011, gadget_id = 70310015, pos = { x = 994.269, y = 637.189, z = -893.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 595012, gadget_id = 70900039, pos = { x = 996.208, y = 637.208, z = -896.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1595004, name = "GROUP_LOAD_595004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_595004", trigger_count = 0 },
	{ config_id = 1595013, name = "GADGET_STATE_CHANGE_595013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_595013", action = "action_EVENT_GADGET_STATE_CHANGE_595013" },
	{ config_id = 1595014, name = "GADGET_STATE_CHANGE_595014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_595014", action = "action_EVENT_GADGET_STATE_CHANGE_595014" },
	{ config_id = 1595015, name = "GADGET_STATE_CHANGE_595015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_595015", action = "action_EVENT_GADGET_STATE_CHANGE_595015" },
	{ config_id = 1595016, name = "VARIABLE_CHANGE_595016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_595016", action = "action_EVENT_VARIABLE_CHANGE_595016", trigger_count = 0 },
	{ config_id = 1595017, name = "GADGET_CREATE_595017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_595017", action = "action_EVENT_GADGET_CREATE_595017", trigger_count = 0 },
	{ config_id = 1595018, name = "GADGET_CREATE_595018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_595018", action = "action_EVENT_GADGET_CREATE_595018", trigger_count = 0 },
	{ config_id = 1595019, name = "GADGET_CREATE_595019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_595019", action = "action_EVENT_GADGET_CREATE_595019", trigger_count = 0 },
	{ config_id = 1595020, name = "GADGET_STATE_CHANGE_595020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_595020", action = "action_EVENT_GADGET_STATE_CHANGE_595020", trigger_count = 0 },
	{ config_id = 1595021, name = "TIMER_EVENT_595021", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_595021", trigger_count = 0 },
	{ config_id = 1595022, name = "GROUP_LOAD_595022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_595022", action = "action_EVENT_GROUP_LOAD_595022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_open", value = 0, no_refresh = true }
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
		gadgets = { 595009, 595010, 595011, 595012 },
		regions = { },
		triggers = { "GROUP_LOAD_595004", "GADGET_STATE_CHANGE_595013", "GADGET_STATE_CHANGE_595014", "GADGET_STATE_CHANGE_595015", "VARIABLE_CHANGE_595016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 595009, 595010, 595011, 595012 },
		regions = { },
		triggers = { "GADGET_CREATE_595017", "GADGET_CREATE_595018", "GADGET_CREATE_595019", "GADGET_STATE_CHANGE_595020", "TIMER_EVENT_595021", "GROUP_LOAD_595022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 595001, 595002, 595003, 595005, 595006, 595007, 595008 },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_595004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008595, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "is_open" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "is_open", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_595013(context, evt)
	-- 检测config_id为595009的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 595009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_595013(context, evt)
	-- 针对当前group内变量名为 "is_open" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "is_open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_595014(context, evt)
	-- 检测config_id为595010的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 595010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_595014(context, evt)
	-- 针对当前group内变量名为 "is_open" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "is_open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_595015(context, evt)
	-- 检测config_id为595011的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 595011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_595015(context, evt)
	-- 针对当前group内变量名为 "is_open" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "is_open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_595016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_open"为3
	if ScriptLib.GetGroupVariableValue(context, "is_open") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_595016(context, evt)
	-- 将configid为 595012 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595012, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008595, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_595017(context, evt)
	if 595009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_595017(context, evt)
	-- 将configid为 595009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_595018(context, evt)
	if 595010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_595018(context, evt)
	-- 将configid为 595010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_595019(context, evt)
	if 595011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_595019(context, evt)
	-- 将configid为 595011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_595020(context, evt)
	-- 检测config_id为595012的gadget是否从GadgetState.Action01变为GadgetState.Action02
	if 595012 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 or GadgetState.Action01 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_595020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008595, 3)
	
	-- 延迟120秒后,向groupId为：133008595的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008595, "delay", 120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_595021(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008595, 3)
	
	-- 将configid为 595012 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595012, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_595022(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008595, 595001) then
	
	return false
	
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_595022(context, evt)
	-- 将configid为 595012 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 595012, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008595, "delay") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end