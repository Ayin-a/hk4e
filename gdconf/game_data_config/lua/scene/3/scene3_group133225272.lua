-- 基础信息
local base_info = {
	group_id = 133225272
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
	-- 1
	{ config_id = 272001, gadget_id = 70330114, pos = { x = -6229.516, y = 234.642, z = -2468.391 }, rot = { x = 339.256, y = 236.277, z = 79.264 }, level = 33, persistent = true, area_id = 18 },
	-- 1
	{ config_id = 272002, gadget_id = 70330114, pos = { x = -6243.277, y = 235.898, z = -2478.577 }, rot = { x = 356.048, y = 250.918, z = 32.380 }, level = 33, area_id = 18 },
	-- 2
	{ config_id = 272003, gadget_id = 70330114, pos = { x = -6219.352, y = 233.155, z = -2469.643 }, rot = { x = 9.485, y = 164.954, z = 100.387 }, level = 33, area_id = 18 },
	-- 3
	{ config_id = 272004, gadget_id = 70330114, pos = { x = -6212.072, y = 235.605, z = -2456.323 }, rot = { x = 27.211, y = 107.962, z = 89.757 }, level = 33, area_id = 18 },
	-- 3
	{ config_id = 272011, gadget_id = 70330114, pos = { x = -6193.405, y = 225.637, z = -2456.429 }, rot = { x = 10.435, y = 80.776, z = 77.354 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 清除组1
	{ config_id = 1272005, name = "VARIABLE_CHANGE_272005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_272005", action = "action_EVENT_VARIABLE_CHANGE_272005" },
	{ config_id = 1272006, name = "GROUP_REFRESH_272006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_272006", action = "action_EVENT_GROUP_REFRESH_272006", trigger_count = 0 },
	-- 清除组2
	{ config_id = 1272007, name = "VARIABLE_CHANGE_272007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_272007", action = "action_EVENT_VARIABLE_CHANGE_272007" },
	{ config_id = 1272008, name = "GROUP_REFRESH_272008", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_272008", action = "action_EVENT_GROUP_REFRESH_272008", trigger_count = 0 },
	-- 清除组3
	{ config_id = 1272009, name = "VARIABLE_CHANGE_272009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_272009", action = "action_EVENT_VARIABLE_CHANGE_272009" },
	{ config_id = 1272010, name = "GROUP_REFRESH_272010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_272010", action = "action_EVENT_GROUP_REFRESH_272010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "group_1_progress", value = 0, no_refresh = true },
	{ config_id = 2, name = "group_2_progress", value = 0, no_refresh = true },
	{ config_id = 3, name = "group_3_progress", value = 0, no_refresh = true }
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
		gadgets = { 272001, 272002, 272003, 272004, 272011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_272005", "GROUP_REFRESH_272006", "VARIABLE_CHANGE_272007", "GROUP_REFRESH_272008", "VARIABLE_CHANGE_272009", "GROUP_REFRESH_272010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_272005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_1_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_1_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_272005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_272006(context, evt)
	-- 判断变量"group_1_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_1_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_272006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_272007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_2_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_2_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_272007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_272008(context, evt)
	-- 判断变量"group_2_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_2_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_272008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_272009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_3_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_3_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_272009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_272010(context, evt)
	-- 判断变量"group_3_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_3_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_272010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133225272, EntityType.GADGET, 272011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end