-- 基础信息
local base_info = {
	group_id = 111101100
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
	{ config_id = 100001, gadget_id = 70360002, pos = { x = 2269.024, y = 230.211, z = -1203.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100004, gadget_id = 70350139, pos = { x = 2270.027, y = 227.819, z = -1180.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100005, gadget_id = 70350140, pos = { x = 2270.027, y = 227.819, z = -1180.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100006, gadget_id = 70950050, pos = { x = 2262.859, y = 234.326, z = -1197.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100007, gadget_id = 70950050, pos = { x = 2262.860, y = 231.664, z = -1197.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100008, gadget_id = 70950050, pos = { x = 2264.557, y = 231.664, z = -1197.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100009, gadget_id = 70950050, pos = { x = 2266.591, y = 231.664, z = -1197.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100010, gadget_id = 70950050, pos = { x = 2266.591, y = 234.326, z = -1197.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100011, gadget_id = 70950050, pos = { x = 2268.288, y = 231.664, z = -1197.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100012, gadget_id = 70950050, pos = { x = 2271.888, y = 231.664, z = -1197.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100013, gadget_id = 70950050, pos = { x = 2271.888, y = 234.326, z = -1197.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100014, gadget_id = 70950050, pos = { x = 2279.589, y = 239.490, z = -1208.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 100016, gadget_id = 70950050, pos = { x = 2252.481, y = 228.011, z = -1196.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100044 },
	{ config_id = 100017, gadget_id = 70350138, pos = { x = 2252.481, y = 227.911, z = -1193.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100045 },
	{ config_id = 100018, gadget_id = 70350138, pos = { x = 2252.481, y = 227.616, z = -1190.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100046 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100002, name = "SELECT_OPTION_100002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_100002", action = "action_EVENT_SELECT_OPTION_100002" },
	{ config_id = 1100003, name = "GADGET_CREATE_100003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_100003", action = "action_EVENT_GADGET_CREATE_100003" },
	{ config_id = 1100019, name = "GADGET_CREATE_100019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_100019", action = "action_EVENT_GADGET_CREATE_100019" },
	{ config_id = 1100020, name = "TIMER_EVENT_100020", event = EventType.EVENT_TIMER_EVENT, source = "time5", condition = "", action = "action_EVENT_TIMER_EVENT_100020", trigger_count = 10 },
	{ config_id = 1100021, name = "TIMER_EVENT_100021", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_100021", trigger_count = 10 },
	{ config_id = 1100022, name = "TIMER_EVENT_100022", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_100022", trigger_count = 10 },
	{ config_id = 1100023, name = "TIMER_EVENT_100023", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_100023", trigger_count = 10 },
	{ config_id = 1100024, name = "TIMER_EVENT_100024", event = EventType.EVENT_TIMER_EVENT, source = "time4", condition = "", action = "action_EVENT_TIMER_EVENT_100024", trigger_count = 10 }
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
		gadgets = { 100001 },
		regions = { },
		triggers = { "SELECT_OPTION_100002", "GADGET_CREATE_100003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 100004, 100005, 100006, 100007, 100008, 100009, 100010, 100011, 100012, 100013, 100014 },
		regions = { },
		triggers = { "GADGET_CREATE_100019", "TIMER_EVENT_100020", "TIMER_EVENT_100021", "TIMER_EVENT_100022", "TIMER_EVENT_100023", "TIMER_EVENT_100024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 100016, 100017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 100017, 100018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 100017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 100016, 100018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 100016, 100017, 100018 },
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

-- 触发条件
function condition_EVENT_SELECT_OPTION_100002(context, evt)
	-- 判断是gadgetid 100001 option_id 7
	if 100001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_100002(context, evt)
	-- 删除指定group： 111101100 ；指定config：100001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101100, 100001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101100, 2)
	
	-- 延迟1秒后,向groupId为：111101100的对象,请求一次调用,并将string参数："time5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101100, "time5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_100003(context, evt)
	if 100001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_100003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101100, 100001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_100019(context, evt)
	if 100004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_100019(context, evt)
	-- 将configid为 100004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟1秒后,向groupId为：111101100的对象,请求一次调用,并将string参数："time5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101100, "time5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 100005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_100020(context, evt)
	-- 延迟5秒后,向groupId为：111101100的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101100, "time1", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101100, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_100021(context, evt)
	-- 延迟5秒后,向groupId为：111101100的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101100, "time2", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101100, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_100022(context, evt)
	-- 延迟5秒后,向groupId为：111101100的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101100, "time3", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101100, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_100023(context, evt)
	-- 延迟5秒后,向groupId为：111101100的对象,请求一次调用,并将string参数："time4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101100, "time4", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101100, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_100024(context, evt)
	-- 延迟5秒后,向groupId为：111101100的对象,请求一次调用,并将string参数："time5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101100, "time5", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101100, 7)
	
	return 0
end