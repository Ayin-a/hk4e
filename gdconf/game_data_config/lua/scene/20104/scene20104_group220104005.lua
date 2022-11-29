-- 基础信息
local base_info = {
	group_id = 220104005
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
	{ config_id = 5001, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 4 },
	{ config_id = 5002, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 4 },
	{ config_id = 5003, gadget_id = 70350171, pos = { x = -127.519, y = 31.549, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 6 },
	{ config_id = 5005, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 5 },
	{ config_id = 5006, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 6 },
	{ config_id = 5007, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 4 },
	{ config_id = 5008, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 5 },
	{ config_id = 5009, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 6 },
	{ config_id = 5010, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 4 },
	{ config_id = 5012, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 6 },
	{ config_id = 5013, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 4 },
	{ config_id = 5014, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 5 },
	{ config_id = 5022, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 6 },
	{ config_id = 5024, gadget_id = 70350170, pos = { x = -125.699, y = 31.271, z = 23.000 }, rot = { x = 351.320, y = 270.000, z = 0.000 }, level = 90, route_id = 5 }
}

-- 区域
regions = {
	{ config_id = 5021, shape = RegionShape.CUBIC, size = { x = 15.000, y = 15.000, z = 15.000 }, pos = { x = -120.706, y = 15.793, z = 23.086 } },
	{ config_id = 5030, shape = RegionShape.SPHERE, radius = 10, pos = { x = -57.955, y = 28.471, z = 11.002 } }
}

-- 触发器
triggers = {
	{ config_id = 1005011, name = "TIMER_EVENT_5011", event = EventType.EVENT_TIMER_EVENT, source = "SSS1", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1005015, name = "TIMER_EVENT_5015", event = EventType.EVENT_TIMER_EVENT, source = "SSS2", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1005016, name = "TIMER_EVENT_5016", event = EventType.EVENT_TIMER_EVENT, source = "S1", condition = "", action = "action_EVENT_TIMER_EVENT_5016", trigger_count = 0 },
	{ config_id = 1005017, name = "TIMER_EVENT_5017", event = EventType.EVENT_TIMER_EVENT, source = "S2", condition = "", action = "action_EVENT_TIMER_EVENT_5017", trigger_count = 0 },
	{ config_id = 1005018, name = "TIMER_EVENT_5018", event = EventType.EVENT_TIMER_EVENT, source = "S3", condition = "", action = "action_EVENT_TIMER_EVENT_5018", trigger_count = 0 },
	{ config_id = 1005019, name = "TIMER_EVENT_5019", event = EventType.EVENT_TIMER_EVENT, source = "S4", condition = "", action = "action_EVENT_TIMER_EVENT_5019", trigger_count = 0 },
	{ config_id = 1005020, name = "TIMER_EVENT_5020", event = EventType.EVENT_TIMER_EVENT, source = "S5", condition = "", action = "action_EVENT_TIMER_EVENT_5020", trigger_count = 0 },
	{ config_id = 1005021, name = "ENTER_REGION_5021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5021", action = "action_EVENT_ENTER_REGION_5021" },
	{ config_id = 1005030, name = "ENTER_REGION_5030", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5030", action = "action_EVENT_ENTER_REGION_5030" }
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
		gadgets = { 5003 },
		regions = { 5021, 5030 },
		triggers = { "TIMER_EVENT_5011", "TIMER_EVENT_5015", "TIMER_EVENT_5016", "TIMER_EVENT_5017", "TIMER_EVENT_5018", "TIMER_EVENT_5019", "TIMER_EVENT_5020", "ENTER_REGION_5021", "ENTER_REGION_5030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5002, 5004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 5006, 5007, 5008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 5009, 5010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 5012, 5013, 5014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 5001, 5005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 5022, 5024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_TIMER_EVENT_5016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104005, 3)
	
	-- 延迟5秒后,向groupId为：220104005的对象,请求一次调用,并将string参数："S2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104005, "S2", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104005, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104005, 4)
	
	-- 延迟5秒后,向groupId为：220104005的对象,请求一次调用,并将string参数："S3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104005, "S3", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104005, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5018(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104005, 5)
	
	-- 延迟5秒后,向groupId为：220104005的对象,请求一次调用,并将string参数："S4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104005, "S4", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104005, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5019(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104005, 6)
	
	-- 延迟5秒后,向groupId为：220104005的对象,请求一次调用,并将string参数："S5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104005, "S5", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104005, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5020(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104005, 7)
	
	-- 延迟5秒后,向groupId为：220104005的对象,请求一次调用,并将string参数："S1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104005, "S1", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104005, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5021(context, evt)
	if evt.param1 ~= 5021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5021(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104005, "S1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104005, "S2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104005, "S3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104005, "S4") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104005, "S5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104005, "SSS1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5030(context, evt)
	if evt.param1 ~= 5030 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5030(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104005, 2)
	
	-- 延迟4秒后,向groupId为：220104005的对象,请求一次调用,并将string参数："S1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104005, "S1", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end