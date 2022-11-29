-- 基础信息
local base_info = {
	group_id = 240015001
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
	{ config_id = 1001, gadget_id = 70310032, pos = { x = -111.117, y = 33.551, z = 34.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70310032, pos = { x = -115.210, y = 33.715, z = 37.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70310032, pos = { x = -116.620, y = 33.180, z = 39.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1005, shape = RegionShape.SPHERE, radius = 15, pos = { x = -104.301, y = 33.831, z = 24.115 } }
}

-- 触发器
triggers = {
	{ config_id = 1001005, name = "ENTER_REGION_1005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1005", action = "action_EVENT_ENTER_REGION_1005" },
	{ config_id = 1001006, name = "ANY_GADGET_DIE_1006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1006", action = "action_EVENT_ANY_GADGET_DIE_1006", trigger_count = 0 },
	{ config_id = 1001007, name = "ANY_GADGET_DIE_1007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1007", action = "action_EVENT_ANY_GADGET_DIE_1007", trigger_count = 0 },
	{ config_id = 1001008, name = "ANY_GADGET_DIE_1008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_1008", action = "action_EVENT_ANY_GADGET_DIE_1008", trigger_count = 0 },
	{ config_id = 1001010, name = "TIMER_EVENT_1010", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_1010", trigger_count = 0 },
	{ config_id = 1001011, name = "TIMER_EVENT_1011", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_1011", trigger_count = 0 },
	{ config_id = 1001012, name = "TIMER_EVENT_1012", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_1012", trigger_count = 0 },
	{ config_id = 1001015, name = "TIMER_EVENT_1015", event = EventType.EVENT_TIMER_EVENT, source = "time0", condition = "", action = "action_EVENT_TIMER_EVENT_1015" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1001, 1002, 1003 },
		regions = { 1005 },
		triggers = { "ENTER_REGION_1005", "ANY_GADGET_DIE_1006", "ANY_GADGET_DIE_1007", "ANY_GADGET_DIE_1008", "TIMER_EVENT_1010", "TIMER_EVENT_1011", "TIMER_EVENT_1012", "TIMER_EVENT_1015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1005(context, evt)
	if evt.param1 ~= 1005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1005(context, evt)
	-- 延迟0.5秒后,向groupId为：240015001的对象,请求一次调用,并将string参数："time0" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240015001, "time0", 0.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_1006(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1006(context, evt)
	-- 延迟3秒后,向groupId为：240015001的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240015001, "time1", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_1007(context, evt)
	if 1002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1007(context, evt)
	-- 延迟3秒后,向groupId为：240015001的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240015001, "time2", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_1008(context, evt)
	if 1003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1008(context, evt)
	-- 延迟3秒后,向groupId为：240015001的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240015001, "time3", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1010(context, evt)
	-- 创建id为1001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1011(context, evt)
	-- 创建id为1002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1012(context, evt)
	-- 创建id为1003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end