-- 基础信息
local base_info = {
	group_id = 133008588
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133008588,
	gadget_sum = 2
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
	{ config_id = 588002, gadget_id = 70350092, pos = { x = 1149.067, y = 381.296, z = -990.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 10 },
	{ config_id = 588005, gadget_id = 70360001, pos = { x = 1149.076, y = 382.261, z = -990.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 10 },
	{ config_id = 588012, gadget_id = 70220054, pos = { x = 1128.974, y = 381.981, z = -1004.475 }, rot = { x = 3.533, y = 250.009, z = 358.176 }, level = 30, state = GadgetState.GearStop, route_id = 300800168, area_id = 10 },
	{ config_id = 588013, gadget_id = 70220054, pos = { x = 1144.683, y = 381.359, z = -987.099 }, rot = { x = 3.533, y = 250.009, z = 358.176 }, level = 30, state = GadgetState.GearStop, route_id = 300800169, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1588001, name = "GROUP_WILL_UNLOAD_588001", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD_588001", trigger_count = 0 },
	{ config_id = 1588006, name = "CHALLENGE_SUCCESS_588006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_588006" },
	{ config_id = 1588007, name = "CHALLENGE_FAIL_588007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_588007", trigger_count = 0 },
	{ config_id = 1588008, name = "GADGET_STATE_CHANGE_588008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_588008", action = "action_EVENT_GADGET_STATE_CHANGE_588008", trigger_count = 0 },
	{ config_id = 1588009, name = "ANY_GADGET_DIE_588009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1588010, name = "GADGET_CREATE_588010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_588010", action = "action_EVENT_GADGET_CREATE_588010", trigger_count = 0 },
	{ config_id = 1588011, name = "SELECT_OPTION_588011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_588011", action = "action_EVENT_SELECT_OPTION_588011", trigger_count = 0 },
	{ config_id = 1588014, name = "GADGET_STATE_CHANGE_588014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_588014", action = "action_EVENT_GADGET_STATE_CHANGE_588014", trigger_count = 0 },
	{ config_id = 1588015, name = "GADGET_STATE_CHANGE_588015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_588015", action = "action_EVENT_GADGET_STATE_CHANGE_588015", trigger_count = 0 },
	{ config_id = 1588016, name = "ANY_GADGET_DIE_588016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_588016", action = "action_EVENT_ANY_GADGET_DIE_588016" },
	{ config_id = 1588017, name = "GADGET_STATE_CHANGE_588017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_588017", action = "action_EVENT_GADGET_STATE_CHANGE_588017", trigger_count = 0 },
	{ config_id = 1588018, name = "GADGET_STATE_CHANGE_588018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_588018", action = "action_EVENT_GADGET_STATE_CHANGE_588018", trigger_count = 0 },
	{ config_id = 1588019, name = "ANY_GADGET_DIE_588019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_588019", action = "action_EVENT_ANY_GADGET_DIE_588019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 588002, 588005 },
		regions = { },
		triggers = { "GROUP_WILL_UNLOAD_588001", "CHALLENGE_SUCCESS_588006", "CHALLENGE_FAIL_588007", "GADGET_STATE_CHANGE_588008", "ANY_GADGET_DIE_588009", "GADGET_CREATE_588010", "SELECT_OPTION_588011", "GADGET_STATE_CHANGE_588014", "GADGET_STATE_CHANGE_588015", "ANY_GADGET_DIE_588016", "GADGET_STATE_CHANGE_588017", "GADGET_STATE_CHANGE_588018", "ANY_GADGET_DIE_588019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 588012, 588013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 588002 },
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
function action_EVENT_GROUP_WILL_UNLOAD_588001(context, evt)
	-- 将configid为 588002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 588002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008588, 2)
	
	-- 创建id为588005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 588005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008588, 588005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_588006(context, evt)
	-- 将configid为 588002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 588002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 588005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008588, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_588007(context, evt)
	-- 将configid为 588002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 588002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008588, 2)
	
	-- 创建id为588005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 588005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_588008(context, evt)
	if 588002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_588008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 221, defs.duration, 2, 201, defs.gadget_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_588010(context, evt)
	if 588005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_588010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008588, 588005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_588011(context, evt)
	-- 判断是gadgetid 588005 option_id 177
	if 588005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_588011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 588005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 588002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 588002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_588014(context, evt)
	if 588012 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_588014(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 588012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_588015(context, evt)
	if 588013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_588015(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 588013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_588016(context, evt)
	if 588012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_588016(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 588012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_588017(context, evt)
	if 588013 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_588017(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 588013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_588018(context, evt)
	if 588013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_588018(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 588013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_588019(context, evt)
	if 588013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_588019(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 588013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end