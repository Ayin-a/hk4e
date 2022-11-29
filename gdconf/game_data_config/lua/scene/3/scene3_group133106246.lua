-- 基础信息
local base_info = {
	group_id = 133106246
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
	{ config_id = 246001, gadget_id = 70360046, pos = { x = -171.741, y = 156.617, z = 945.960 }, rot = { x = 0.000, y = 94.893, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 246002, gadget_id = 70800025, pos = { x = -171.900, y = 158.710, z = 945.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 246006, gadget_id = 70690006, pos = { x = -171.900, y = 157.000, z = 945.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 246007, gadget_id = 70690006, pos = { x = -171.900, y = 174.182, z = 945.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 246008, gadget_id = 70211131, pos = { x = -172.026, y = 157.170, z = 945.931 }, rot = { x = 0.000, y = 134.466, z = 0.000 }, level = 26, chest_drop_id = 2001400, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1246003, name = "VARIABLE_CHANGE_246003", event = EventType.EVENT_VARIABLE_CHANGE, source = "count", condition = "condition_EVENT_VARIABLE_CHANGE_246003", action = "action_EVENT_VARIABLE_CHANGE_246003" },
	{ config_id = 1246004, name = "GADGET_STATE_CHANGE_246004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_246004", action = "action_EVENT_GADGET_STATE_CHANGE_246004" },
	{ config_id = 1246005, name = "GROUP_LOAD_246005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_246005", action = "action_EVENT_GROUP_LOAD_246005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 246001, 246002, 246008 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_246003", "GADGET_STATE_CHANGE_246004", "GROUP_LOAD_246005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_246003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_246003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 246002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_246004(context, evt)
	if 246008 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_246004(context, evt)
	-- 创建id为246006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 246006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为246007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 246007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_246005(context, evt)
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_246005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 246002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end