-- 基础信息
local base_info = {
	group_id = 133008397
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
	{ config_id = 397001, gadget_id = 70290047, pos = { x = 1165.942, y = 266.278, z = -561.244 }, rot = { x = 340.394, y = 255.130, z = 342.733 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 397002, gadget_id = 70290047, pos = { x = 1180.935, y = 255.957, z = -581.694 }, rot = { x = 359.227, y = 275.187, z = 2.505 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 397003, gadget_id = 70290047, pos = { x = 1169.039, y = 267.082, z = -532.549 }, rot = { x = 18.491, y = 99.596, z = 337.162 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 397004, gadget_id = 70290047, pos = { x = 1183.191, y = 266.726, z = -542.185 }, rot = { x = 19.576, y = 204.272, z = 338.993 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1397005, name = "VARIABLE_CHANGE_397005", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_397005", action = "action_EVENT_VARIABLE_CHANGE_397005", trigger_count = 0 },
	{ config_id = 1397006, name = "VARIABLE_CHANGE_397006", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_397006", action = "action_EVENT_VARIABLE_CHANGE_397006", trigger_count = 0 },
	{ config_id = 1397007, name = "VARIABLE_CHANGE_397007", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_397007", action = "action_EVENT_VARIABLE_CHANGE_397007", trigger_count = 0 },
	{ config_id = 1397008, name = "VARIABLE_CHANGE_397008", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_397008", action = "action_EVENT_VARIABLE_CHANGE_397008", trigger_count = 0 },
	{ config_id = 1397009, name = "QUEST_START_397009", event = EventType.EVENT_QUEST_START, source = "7014120", condition = "", action = "action_EVENT_QUEST_START_397009", trigger_count = 0 },
	{ config_id = 1397010, name = "TIMER_EVENT_397010", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_397010", trigger_count = 0 }
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
		triggers = { "VARIABLE_CHANGE_397005", "VARIABLE_CHANGE_397006", "VARIABLE_CHANGE_397007", "VARIABLE_CHANGE_397008", "QUEST_START_397009", "TIMER_EVENT_397010" },
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
function condition_EVENT_VARIABLE_CHANGE_397005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008089) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_397005(context, evt)
	-- 创建id为397001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 397001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_397006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008089) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_397006(context, evt)
	-- 创建id为397002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 397002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_397007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008089) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_397007(context, evt)
	-- 创建id为397003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 397003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_397008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008089) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_397008(context, evt)
	-- 创建id为397004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 397004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_397009(context, evt)
	-- 延迟2秒后,向groupId为：133008397的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008397, "delay", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_397010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 397001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 397002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 397003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 397004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008397, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end