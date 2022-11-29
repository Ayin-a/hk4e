-- 基础信息
local base_info = {
	group_id = 133223516
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
	{ config_id = 516001, gadget_id = 70290135, pos = { x = -5973.488, y = 215.925, z = -2562.811 }, rot = { x = 0.000, y = 96.034, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 516002, gadget_id = 70290135, pos = { x = -5965.373, y = 215.715, z = -2562.062 }, rot = { x = 59.704, y = 94.929, z = -0.001 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 516003, gadget_id = 70290135, pos = { x = -5961.945, y = 204.163, z = -2563.548 }, rot = { x = 59.907, y = 178.430, z = 97.681 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 516004, gadget_id = 70290135, pos = { x = -5962.361, y = 192.655, z = -2565.348 }, rot = { x = 78.627, y = 180.000, z = 180.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 516005, gadget_id = 70290135, pos = { x = -5958.481, y = 178.289, z = -2567.396 }, rot = { x = 0.000, y = 133.968, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 516006, gadget_id = 70290135, pos = { x = -5950.063, y = 177.995, z = -2574.738 }, rot = { x = 0.000, y = 131.071, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1516007, name = "VARIABLE_CHANGE_516007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_516007", action = "action_EVENT_VARIABLE_CHANGE_516007" },
	{ config_id = 1516008, name = "GROUP_REFRESH_516008", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_516008", action = "action_EVENT_GROUP_REFRESH_516008" }
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
		gadgets = { 516001, 516002, 516003, 516004, 516005, 516006 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_516007", "GROUP_REFRESH_516008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_516007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_516007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_516008(context, evt)
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValue(context, "progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_516008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223516, EntityType.GADGET, 516006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end