-- 基础信息
local base_info = {
	group_id = 111102103
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
	{ config_id = 103001, gadget_id = 70330282, pos = { x = 2020.871, y = 221.066, z = -1553.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {SGV_ChiWangLevelRequire = 1} },
	{ config_id = 103003, gadget_id = 70330282, pos = { x = 2010.871, y = 221.066, z = -1553.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {SGV_ChiWangLevelRequire = 2} },
	{ config_id = 103004, gadget_id = 70330282, pos = { x = 2000.871, y = 221.066, z = -1553.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {SGV_ChiWangLevelRequire = 3} },
	{ config_id = 103005, gadget_id = 70330282, pos = { x = 1990.871, y = 221.066, z = -1553.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {SGV_ChiWangLevelRequire = 4} },
	{ config_id = 103006, gadget_id = 70330282, pos = { x = 1980.871, y = 221.066, z = -1553.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = {SGV_ChiWangLevelRequire = 5} }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1103002, name = "SELECT_OPTION_103002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103002", action = "action_EVENT_SELECT_OPTION_103002" },
	{ config_id = 1103007, name = "SELECT_OPTION_103007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103007", action = "action_EVENT_SELECT_OPTION_103007" },
	{ config_id = 1103008, name = "SELECT_OPTION_103008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103008", action = "action_EVENT_SELECT_OPTION_103008" },
	{ config_id = 1103009, name = "SELECT_OPTION_103009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103009", action = "action_EVENT_SELECT_OPTION_103009" },
	{ config_id = 1103010, name = "SELECT_OPTION_103010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103010", action = "action_EVENT_SELECT_OPTION_103010" }
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
		gadgets = { 103001, 103003, 103004, 103005, 103006 },
		regions = { },
		triggers = { "SELECT_OPTION_103002", "SELECT_OPTION_103007", "SELECT_OPTION_103008", "SELECT_OPTION_103009", "SELECT_OPTION_103010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_103002(context, evt)
	-- 判断是gadgetid 103001 option_id 437
	if 103001 ~= evt.param1 then
		return false	
	end
	
	if 437 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_103002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 103001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_103007(context, evt)
	-- 判断是gadgetid 103003 option_id 437
	if 103003 ~= evt.param1 then
		return false	
	end
	
	if 437 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_103007(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 103003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_103008(context, evt)
	-- 判断是gadgetid 103004 option_id 437
	if 103004 ~= evt.param1 then
		return false	
	end
	
	if 437 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_103008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 103004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_103009(context, evt)
	-- 判断是gadgetid 103005 option_id 437
	if 103005 ~= evt.param1 then
		return false	
	end
	
	if 437 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_103009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 103005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_103010(context, evt)
	-- 判断是gadgetid 103006 option_id 437
	if 103006 ~= evt.param1 then
		return false	
	end
	
	if 437 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_103010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 103006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end