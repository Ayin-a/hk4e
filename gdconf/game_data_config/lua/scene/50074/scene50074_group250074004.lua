-- 基础信息
local base_info = {
	group_id = 250074004
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
	{ config_id = 4001, gadget_id = 70220026, pos = { x = 195.723, y = 861.084, z = 944.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4003, gadget_id = 70350170, pos = { x = 202.511, y = 861.768, z = 948.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4 },
	{ config_id = 4004, gadget_id = 70350170, pos = { x = 198.500, y = 861.768, z = 953.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5 },
	{ config_id = 4005, gadget_id = 70350170, pos = { x = 202.511, y = 861.768, z = 948.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 4 },
	{ config_id = 4006, gadget_id = 70350170, pos = { x = 198.500, y = 861.768, z = 953.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 5 }
}

-- 区域
regions = {
	{ config_id = 4002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 227.935, y = 851.819, z = 955.902 } },
	{ config_id = 4016, shape = RegionShape.SPHERE, radius = 5, pos = { x = 203.150, y = 860.125, z = 953.786 } }
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "ENTER_REGION_4002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_4002" },
	{ config_id = 1004007, name = "TIMER_EVENT_4007", event = EventType.EVENT_TIMER_EVENT, source = "1", condition = "", action = "action_EVENT_TIMER_EVENT_4007" },
	{ config_id = 1004008, name = "GADGET_CREATE_4008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4008", action = "action_EVENT_GADGET_CREATE_4008" },
	{ config_id = 1004009, name = "TIMER_EVENT_4009", event = EventType.EVENT_TIMER_EVENT, source = "2", condition = "", action = "action_EVENT_TIMER_EVENT_4009" },
	{ config_id = 1004010, name = "GADGET_CREATE_4010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4010", action = "action_EVENT_GADGET_CREATE_4010" },
	{ config_id = 1004011, name = "TIMER_EVENT_4011", event = EventType.EVENT_TIMER_EVENT, source = "3", condition = "", action = "action_EVENT_TIMER_EVENT_4011" },
	{ config_id = 1004012, name = "TIMER_EVENT_4012", event = EventType.EVENT_TIMER_EVENT, source = "4", condition = "", action = "action_EVENT_TIMER_EVENT_4012" },
	{ config_id = 1004013, name = "GADGET_CREATE_4013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4013", action = "action_EVENT_GADGET_CREATE_4013" },
	{ config_id = 1004014, name = "TIMER_EVENT_4014", event = EventType.EVENT_TIMER_EVENT, source = "5", condition = "", action = "action_EVENT_TIMER_EVENT_4014" },
	{ config_id = 1004015, name = "GADGET_CREATE_4015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4015", action = "action_EVENT_GADGET_CREATE_4015" },
	{ config_id = 1004016, name = "ENTER_REGION_4016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_4016" }
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
		gadgets = { 4001 },
		regions = { 4002, 4016 },
		triggers = { "ENTER_REGION_4002", "TIMER_EVENT_4007", "ENTER_REGION_4016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4003 },
		regions = { },
		triggers = { "GADGET_CREATE_4008", "TIMER_EVENT_4009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4004 },
		regions = { },
		triggers = { "TIMER_EVENT_4012", "GADGET_CREATE_4013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4005 },
		regions = { },
		triggers = { "GADGET_CREATE_4010", "TIMER_EVENT_4011" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 4006 },
		regions = { },
		triggers = { "TIMER_EVENT_4014", "GADGET_CREATE_4015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_4002(context, evt)
	-- 触发镜头注目，注目位置为坐标（197.5，861.1，947.5），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=197.5, y=861.1, z=947.5}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250074004, 2)
	
	-- 延迟4秒后,向groupId为：250074004的对象,请求一次调用,并将string参数："1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250074004, "1", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250074004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4008(context, evt)
	if 4003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4008(context, evt)
	-- 延迟8秒后,向groupId为：250074004的对象,请求一次调用,并将string参数："2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250074004, "2", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4009(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250074004, 4)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250074004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4010(context, evt)
	if 4005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4010(context, evt)
	-- 延迟8秒后,向groupId为：250074004的对象,请求一次调用,并将string参数："3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250074004, "3", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250074004, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250074004, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4012(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250074004, 5)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250074004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4013(context, evt)
	if 4004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4013(context, evt)
	-- 延迟8秒后,向groupId为：250074004的对象,请求一次调用,并将string参数："4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250074004, "4", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250074004, 3)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250074004, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4015(context, evt)
	if 4006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4015(context, evt)
	-- 延迟8秒后,向groupId为：250074004的对象,请求一次调用,并将string参数："5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250074004, "5", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_4016(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 250074004, "2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 250074004, "3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 250074004, "4") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 250074004, "5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end