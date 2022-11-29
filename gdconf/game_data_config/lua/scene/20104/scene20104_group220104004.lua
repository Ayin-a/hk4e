-- 基础信息
local base_info = {
	group_id = 220104004
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
	{ config_id = 4002, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 1 },
	{ config_id = 4003, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 7 },
	{ config_id = 4004, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 8 },
	{ config_id = 4006, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 1 },
	{ config_id = 4007, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 7 },
	{ config_id = 4008, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 7 },
	{ config_id = 4009, gadget_id = 70350171, pos = { x = -47.388, y = 41.357, z = -87.015 }, rot = { x = 344.291, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 1 },
	{ config_id = 4013, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 8 },
	{ config_id = 4015, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 7 },
	{ config_id = 4019, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 8 },
	{ config_id = 4020, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 7 },
	{ config_id = 4022, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 8 },
	{ config_id = 4023, gadget_id = 70010006, pos = { x = -110.698, y = 6.760, z = -95.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4024, gadget_id = 70010006, pos = { x = -96.074, y = 13.219, z = -79.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4025, gadget_id = 70010006, pos = { x = -77.698, y = 20.090, z = -94.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4026, gadget_id = 70010006, pos = { x = -54.925, y = 28.460, z = -79.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4027, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 1 },
	{ config_id = 4029, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 7 },
	{ config_id = 4032, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 1 },
	{ config_id = 4034, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 8 },
	{ config_id = 4037, gadget_id = 70350170, pos = { x = -48.000, y = 41.000, z = -87.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 90, route_id = 8 }
}

-- 区域
regions = {
	{ config_id = 4001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -134.364, y = 1.928, z = -78.386 } },
	{ config_id = 4005, shape = RegionShape.CUBIC, size = { x = 8.000, y = 10.000, z = 12.000 }, pos = { x = -41.060, y = 36.521, z = -88.995 } }
}

-- 触发器
triggers = {
	{ config_id = 1004001, name = "ENTER_REGION_4001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4001", action = "action_EVENT_ENTER_REGION_4001", trigger_count = 0 },
	{ config_id = 1004005, name = "ENTER_REGION_4005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4005", action = "action_EVENT_ENTER_REGION_4005" },
	{ config_id = 1004010, name = "TIMER_EVENT_4010", event = EventType.EVENT_TIMER_EVENT, source = "AAA1", condition = "", action = "action_EVENT_TIMER_EVENT_4010", trigger_count = 0 },
	{ config_id = 1004012, name = "TIMER_EVENT_4012", event = EventType.EVENT_TIMER_EVENT, source = "AA6", condition = "", action = "action_EVENT_TIMER_EVENT_4012", trigger_count = 0 },
	{ config_id = 1004014, name = "TIMER_EVENT_4014", event = EventType.EVENT_TIMER_EVENT, source = "AA1", condition = "", action = "action_EVENT_TIMER_EVENT_4014", trigger_count = 0 },
	{ config_id = 1004016, name = "TIMER_EVENT_4016", event = EventType.EVENT_TIMER_EVENT, source = "AA2", condition = "", action = "action_EVENT_TIMER_EVENT_4016", trigger_count = 0 },
	{ config_id = 1004017, name = "TIMER_EVENT_4017", event = EventType.EVENT_TIMER_EVENT, source = "AA3", condition = "", action = "action_EVENT_TIMER_EVENT_4017", trigger_count = 0 },
	{ config_id = 1004018, name = "TIMER_EVENT_4018", event = EventType.EVENT_TIMER_EVENT, source = "AA4", condition = "", action = "action_EVENT_TIMER_EVENT_4018", trigger_count = 0 },
	{ config_id = 1004021, name = "TIMER_EVENT_4021", event = EventType.EVENT_TIMER_EVENT, source = "AA5", condition = "", action = "action_EVENT_TIMER_EVENT_4021", trigger_count = 0 },
	{ config_id = 1004028, name = "TIMER_EVENT_4028", event = EventType.EVENT_TIMER_EVENT, source = "AAA2", condition = "", action = "action_EVENT_TIMER_EVENT_4028", trigger_count = 0 }
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
		gadgets = { 4009 },
		regions = { 4001, 4005 },
		triggers = { "ENTER_REGION_4001", "ENTER_REGION_4005", "TIMER_EVENT_4010", "TIMER_EVENT_4012", "TIMER_EVENT_4014", "TIMER_EVENT_4016", "TIMER_EVENT_4017", "TIMER_EVENT_4018", "TIMER_EVENT_4021", "TIMER_EVENT_4028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4002, 4003, 4004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 4023, 4024, 4025, 4026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 4011, 4013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 4015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 4006, 4019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 4020, 4022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 4007, 4027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 4029, 4032, 4034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 4008, 4037 },
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
function condition_EVENT_ENTER_REGION_4001(context, evt)
	if evt.param1 ~= 4001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4001(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220104006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4005(context, evt)
	if evt.param1 ~= 4005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4005(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104004, "AA1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104004, "AA2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104004, "AA3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104004, "AA4") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104004, "AA5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104004, "AA6") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104004, "AAA1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220104004, "AAA2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4010(context, evt)
	-- 延迟2秒后,向groupId为：220104004的对象,请求一次调用,并将string参数："AAA2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104004, "AAA2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220104004中， configid为4009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220104004, 4009, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4012(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104004, 9)
	
	-- 延迟4秒后,向groupId为：220104004的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104004, "AA1", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104004, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104004, 4)
	
	-- 延迟4秒后,向groupId为：220104004的对象,请求一次调用,并将string参数："AA2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104004, "AA2", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104004, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4016(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104004, 5)
	
	-- 延迟4秒后,向groupId为：220104004的对象,请求一次调用,并将string参数："AA3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104004, "AA3", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104004, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4017(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104004, 6)
	
	-- 延迟4秒后,向groupId为：220104004的对象,请求一次调用,并将string参数："AA4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104004, "AA4", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104004, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4018(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104004, 7)
	
	-- 延迟4秒后,向groupId为：220104004的对象,请求一次调用,并将string参数："AA5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104004, "AA5", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104004, 8)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4021(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104004, 8)
	
	-- 延迟4秒后,向groupId为：220104004的对象,请求一次调用,并将string参数："AA6" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104004, "AA6", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220104004, 9)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4028(context, evt)
	-- 延迟2秒后,向groupId为：220104004的对象,请求一次调用,并将string参数："AAA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104004, "AAA1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220104004中， configid为4009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220104004, 4009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end