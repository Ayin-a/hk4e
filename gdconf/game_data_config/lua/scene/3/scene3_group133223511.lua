-- 基础信息
local base_info = {
	group_id = 133223511
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
	{ config_id = 511001, gadget_id = 70290135, pos = { x = -6243.158, y = 234.823, z = -2939.204 }, rot = { x = 13.953, y = 262.021, z = 3.568 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 511002, gadget_id = 70290135, pos = { x = -6267.488, y = 225.493, z = -2938.111 }, rot = { x = 7.541, y = 309.038, z = 16.350 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 511003, gadget_id = 70290135, pos = { x = -6253.891, y = 230.934, z = -2941.032 }, rot = { x = 0.000, y = 275.053, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1511004, name = "VARIABLE_CHANGE_511004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_511004", action = "action_EVENT_VARIABLE_CHANGE_511004" },
	{ config_id = 1511005, name = "GROUP_REFRESH_511005", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_511005", action = "action_EVENT_GROUP_REFRESH_511005" }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 511001, 511002, 511003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_511004", "GROUP_REFRESH_511005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_511004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_511004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223511, EntityType.GADGET, 511001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223511, EntityType.GADGET, 511002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223511, EntityType.GADGET, 511003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_511005(context, evt)
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_511005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223511, EntityType.GADGET, 511001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223511, EntityType.GADGET, 511002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223511, EntityType.GADGET, 511003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end