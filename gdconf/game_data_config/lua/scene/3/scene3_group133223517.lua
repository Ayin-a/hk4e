-- 基础信息
local base_info = {
	group_id = 133223517
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
	{ config_id = 517001, gadget_id = 70290135, pos = { x = -6235.201, y = 235.446, z = -2464.857 }, rot = { x = 0.000, y = 256.328, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 517002, gadget_id = 70290135, pos = { x = -6250.187, y = 236.607, z = -2469.101 }, rot = { x = 351.231, y = 260.241, z = 28.846 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 517003, gadget_id = 70290135, pos = { x = -6263.817, y = 238.374, z = -2470.867 }, rot = { x = 330.092, y = 261.528, z = -0.001 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1517004, name = "VARIABLE_CHANGE_517004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_517004", action = "action_EVENT_VARIABLE_CHANGE_517004" },
	{ config_id = 1517005, name = "GROUP_REFRESH_517005", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_517005", action = "action_EVENT_GROUP_REFRESH_517005" }
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
		gadgets = { 517001, 517002, 517003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_517004", "GROUP_REFRESH_517005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_517004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_517004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223517, EntityType.GADGET, 517001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223517, EntityType.GADGET, 517003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223517, EntityType.GADGET, 517002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_517005(context, evt)
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_517005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223517, EntityType.GADGET, 517001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223517, EntityType.GADGET, 517003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223517, EntityType.GADGET, 517002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end