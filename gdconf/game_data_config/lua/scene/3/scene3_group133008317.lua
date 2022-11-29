-- 基础信息
local base_info = {
	group_id = 133008317
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
	{ config_id = 317001, gadget_id = 70290047, pos = { x = 1315.052, y = 293.727, z = -1019.971 }, rot = { x = 339.121, y = 42.274, z = 0.001 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 317002, gadget_id = 70290047, pos = { x = 1319.321, y = 295.845, z = -1056.601 }, rot = { x = 335.469, y = 115.637, z = 8.269 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 317003, gadget_id = 70290047, pos = { x = 1258.005, y = 308.175, z = -1023.522 }, rot = { x = 337.795, y = 344.888, z = 341.668 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 317004, gadget_id = 70290047, pos = { x = 1285.775, y = 297.984, z = -1067.400 }, rot = { x = 326.479, y = 195.868, z = 350.663 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1317005, name = "VARIABLE_CHANGE_317005", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_317005", action = "action_EVENT_VARIABLE_CHANGE_317005", trigger_count = 0 },
	{ config_id = 1317006, name = "VARIABLE_CHANGE_317006", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_317006", action = "action_EVENT_VARIABLE_CHANGE_317006", trigger_count = 0 },
	{ config_id = 1317007, name = "VARIABLE_CHANGE_317007", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_317007", action = "action_EVENT_VARIABLE_CHANGE_317007", trigger_count = 0 },
	{ config_id = 1317008, name = "VARIABLE_CHANGE_317008", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_317008", action = "action_EVENT_VARIABLE_CHANGE_317008", trigger_count = 0 },
	{ config_id = 1317009, name = "QUEST_START_317009", event = EventType.EVENT_QUEST_START, source = "7014118", condition = "", action = "action_EVENT_QUEST_START_317009", trigger_count = 0 },
	{ config_id = 1317010, name = "TIMER_EVENT_317010", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_317010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "progress", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_317005", "VARIABLE_CHANGE_317006", "VARIABLE_CHANGE_317007", "VARIABLE_CHANGE_317008", "QUEST_START_317009", "TIMER_EVENT_317010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_317005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008081) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_317005(context, evt)
	-- 创建id为317001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 317001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_317006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008081) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_317006(context, evt)
	-- 创建id为317004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 317004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_317007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008081) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_317007(context, evt)
	-- 创建id为317002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 317002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_317008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008081) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_317008(context, evt)
	-- 创建id为317003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 317003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_317009(context, evt)
	-- 延迟2秒后,向groupId为：133008317的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008317, "delay", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_317010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 317004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008317, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end