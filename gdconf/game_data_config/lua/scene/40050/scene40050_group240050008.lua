-- 基础信息
local base_info = {
	group_id = 240050008
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
	{ config_id = 8001, gadget_id = 70360282, pos = { x = 3.161, y = 54.319, z = -73.669 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 1, start_route = false, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008002, name = "GADGET_STATE_CHANGE_8002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_8002", action = "action_EVENT_GADGET_STATE_CHANGE_8002", trigger_count = 0 },
	{ config_id = 1008003, name = "PLATFORM_REACH_POINT_8003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8003", action = "action_EVENT_PLATFORM_REACH_POINT_8003", trigger_count = 0 },
	{ config_id = 1008004, name = "TIMER_EVENT_8004", event = EventType.EVENT_TIMER_EVENT, source = "time", condition = "", action = "action_EVENT_TIMER_EVENT_8004", trigger_count = 0 },
	{ config_id = 1008005, name = "PLATFORM_REACH_POINT_8005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_8005", action = "action_EVENT_PLATFORM_REACH_POINT_8005", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 8001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_8002", "PLATFORM_REACH_POINT_8003", "TIMER_EVENT_8004", "PLATFORM_REACH_POINT_8005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_8002(context, evt)
	-- 检测config_id为8001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 8001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_8002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_8003(context, evt)
	-- 判断是gadgetid 为 8001的移动平台，是否到达了1 的路线中的 1 点
	
	if 8001 ~= evt.param1 then
	  return false
	end
	
	if 1 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_8003(context, evt)
	-- 延迟2秒后,向groupId为：240050008的对象,请求一次调用,并将string参数："time" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240050008, "time", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8004(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8001, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_8005(context, evt)
	-- 判断是gadgetid 为 8001的移动平台，是否到达了2 的路线中的 1 点
	
	if 8001 ~= evt.param1 then
	  return false
	end
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_8005(context, evt)
	-- 将configid为 8001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8001, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end