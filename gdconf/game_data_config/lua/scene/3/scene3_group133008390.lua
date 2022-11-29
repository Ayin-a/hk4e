-- 基础信息
local base_info = {
	group_id = 133008390
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
	{ config_id = 390005, gadget_id = 70290047, pos = { x = 1032.860, y = 289.076, z = -933.230 }, rot = { x = 332.534, y = 94.937, z = 358.581 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 390006, gadget_id = 70290047, pos = { x = 1014.507, y = 306.026, z = -996.780 }, rot = { x = 333.712, y = 149.680, z = 13.529 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 390007, gadget_id = 70290047, pos = { x = 942.950, y = 286.334, z = -933.172 }, rot = { x = 12.328, y = 10.163, z = 341.646 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 390008, gadget_id = 70290047, pos = { x = 916.039, y = 286.635, z = -958.358 }, rot = { x = 345.020, y = 163.899, z = 30.600 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1390001, name = "VARIABLE_CHANGE_390001", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_390001", action = "action_EVENT_VARIABLE_CHANGE_390001", trigger_count = 0 },
	{ config_id = 1390002, name = "VARIABLE_CHANGE_390002", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_390002", action = "action_EVENT_VARIABLE_CHANGE_390002", trigger_count = 0 },
	{ config_id = 1390003, name = "VARIABLE_CHANGE_390003", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_390003", action = "action_EVENT_VARIABLE_CHANGE_390003", trigger_count = 0 },
	{ config_id = 1390004, name = "VARIABLE_CHANGE_390004", event = EventType.EVENT_VARIABLE_CHANGE, source = "progress", condition = "condition_EVENT_VARIABLE_CHANGE_390004", action = "action_EVENT_VARIABLE_CHANGE_390004", trigger_count = 0 },
	{ config_id = 1390009, name = "QUEST_START_390009", event = EventType.EVENT_QUEST_START, source = "7014119", condition = "", action = "action_EVENT_QUEST_START_390009", trigger_count = 0 },
	{ config_id = 1390010, name = "TIMER_EVENT_390010", event = EventType.EVENT_TIMER_EVENT, source = "delay", condition = "", action = "action_EVENT_TIMER_EVENT_390010", trigger_count = 0 }
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
		triggers = { "VARIABLE_CHANGE_390001", "VARIABLE_CHANGE_390002", "VARIABLE_CHANGE_390003", "VARIABLE_CHANGE_390004", "QUEST_START_390009", "TIMER_EVENT_390010" },
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
function condition_EVENT_VARIABLE_CHANGE_390001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008088) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390001(context, evt)
	-- 创建id为390005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 390005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008088) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390002(context, evt)
	-- 创建id为390006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 390006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008088) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390003(context, evt)
	-- 创建id为390007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 390007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_390004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"index"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "index", 133008088) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_390004(context, evt)
	-- 创建id为390008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 390008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_390009(context, evt)
	-- 延迟2秒后,向groupId为：133008390的对象,请求一次调用,并将string参数："delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008390, "delay", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_390010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 390005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 390006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 390007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 390008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008390, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end