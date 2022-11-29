-- 基础信息
local base_info = {
	group_id = 133008589
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133008589,
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
	{ config_id = 589001, gadget_id = 70350092, pos = { x = 880.578, y = 323.225, z = -560.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 10 },
	{ config_id = 589002, gadget_id = 70360001, pos = { x = 880.587, y = 324.158, z = -560.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 10 },
	{ config_id = 589003, gadget_id = 70220054, pos = { x = 895.219, y = 323.346, z = -564.103 }, rot = { x = 3.533, y = 250.009, z = 358.176 }, level = 30, route_id = 300800170, start_route = false, area_id = 10 },
	{ config_id = 589004, gadget_id = 70220054, pos = { x = 881.354, y = 323.672, z = -547.157 }, rot = { x = 3.533, y = 250.009, z = 358.176 }, level = 30, route_id = 300800171, start_route = false, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1589005, name = "CHALLENGE_SUCCESS_589005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_589005" },
	{ config_id = 1589006, name = "CHALLENGE_FAIL_589006", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_589006", trigger_count = 0 },
	{ config_id = 1589007, name = "GADGET_STATE_CHANGE_589007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_589007", action = "action_EVENT_GADGET_STATE_CHANGE_589007", trigger_count = 0 },
	{ config_id = 1589008, name = "ANY_GADGET_DIE_589008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1589009, name = "GADGET_CREATE_589009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_589009", action = "action_EVENT_GADGET_CREATE_589009", trigger_count = 0 },
	{ config_id = 1589010, name = "SELECT_OPTION_589010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_589010", action = "action_EVENT_SELECT_OPTION_589010", trigger_count = 0 },
	{ config_id = 1589011, name = "GADGET_STATE_CHANGE_589011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_589011", action = "action_EVENT_GADGET_STATE_CHANGE_589011", trigger_count = 0 },
	{ config_id = 1589012, name = "GADGET_STATE_CHANGE_589012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_589012", action = "action_EVENT_GADGET_STATE_CHANGE_589012", trigger_count = 0 },
	{ config_id = 1589013, name = "ANY_GADGET_DIE_589013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_589013", action = "action_EVENT_ANY_GADGET_DIE_589013" },
	{ config_id = 1589014, name = "GADGET_STATE_CHANGE_589014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_589014", action = "action_EVENT_GADGET_STATE_CHANGE_589014", trigger_count = 0 },
	{ config_id = 1589015, name = "GADGET_STATE_CHANGE_589015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_589015", action = "action_EVENT_GADGET_STATE_CHANGE_589015", trigger_count = 0 },
	{ config_id = 1589016, name = "ANY_GADGET_DIE_589016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_589016", action = "action_EVENT_ANY_GADGET_DIE_589016" }
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
		gadgets = { 589001, 589002 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_589005", "CHALLENGE_FAIL_589006", "GADGET_STATE_CHANGE_589007", "ANY_GADGET_DIE_589008", "GADGET_CREATE_589009", "SELECT_OPTION_589010", "GADGET_STATE_CHANGE_589011", "GADGET_STATE_CHANGE_589012", "ANY_GADGET_DIE_589013", "GADGET_STATE_CHANGE_589014", "GADGET_STATE_CHANGE_589015", "ANY_GADGET_DIE_589016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 589003, 589004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 589001 },
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
function action_EVENT_CHALLENGE_SUCCESS_589005(context, evt)
	-- 将configid为 589001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 589001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 589002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008589, 3) then
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
function action_EVENT_CHALLENGE_FAIL_589006(context, evt)
	-- 将configid为 589001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 589001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133008589, 2)
	
	-- 创建id为589002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 589002 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_589007(context, evt)
	if 589001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_589007(context, evt)
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
function condition_EVENT_GADGET_CREATE_589009(context, evt)
	if 589002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_589009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008589, 589002, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_589010(context, evt)
	-- 判断是gadgetid 589002 option_id 177
	if 589002 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_589010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 589002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 589001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 589001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_589011(context, evt)
	if 589003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_589011(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 589003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_589012(context, evt)
	if 589003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_589012(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 589003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_589013(context, evt)
	if 589003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_589013(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 589003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_589014(context, evt)
	if 589004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_589014(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 589004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_589015(context, evt)
	if 589004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_589015(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 589004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_589016(context, evt)
	if 589004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_589016(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 589004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end