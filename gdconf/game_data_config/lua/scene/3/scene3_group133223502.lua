-- 基础信息
local base_info = {
	group_id = 133223502
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
	{ config_id = 502001, gadget_id = 70330114, pos = { x = -5984.369, y = 214.357, z = -2573.431 }, rot = { x = 71.443, y = 217.851, z = 250.062 }, level = 33, persistent = true, area_id = 18 },
	-- 2
	{ config_id = 502002, gadget_id = 70330114, pos = { x = -5986.515, y = 179.613, z = -2576.008 }, rot = { x = 355.646, y = 130.912, z = 107.009 }, level = 33, area_id = 18 },
	-- 3
	{ config_id = 502004, gadget_id = 70330114, pos = { x = -5985.398, y = 179.623, z = -2581.908 }, rot = { x = 308.134, y = 261.464, z = 201.717 }, level = 33, area_id = 18 },
	-- 3
	{ config_id = 502005, gadget_id = 70330114, pos = { x = -5989.874, y = 189.621, z = -2586.746 }, rot = { x = 339.433, y = 89.300, z = 194.880 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 清除组1
	{ config_id = 1502006, name = "VARIABLE_CHANGE_502006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_502006", action = "action_EVENT_VARIABLE_CHANGE_502006" },
	{ config_id = 1502007, name = "GROUP_REFRESH_502007", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_502007", action = "action_EVENT_GROUP_REFRESH_502007", trigger_count = 0 },
	-- 清除组2
	{ config_id = 1502008, name = "VARIABLE_CHANGE_502008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_502008", action = "action_EVENT_VARIABLE_CHANGE_502008" },
	{ config_id = 1502009, name = "GROUP_REFRESH_502009", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_502009", action = "action_EVENT_GROUP_REFRESH_502009", trigger_count = 0 },
	-- 清除组3
	{ config_id = 1502010, name = "VARIABLE_CHANGE_502010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_502010", action = "action_EVENT_VARIABLE_CHANGE_502010" },
	{ config_id = 1502011, name = "GROUP_REFRESH_502011", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "condition_EVENT_GROUP_REFRESH_502011", action = "action_EVENT_GROUP_REFRESH_502011", trigger_count = 0 }
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
		gadgets = { 502001, 502002, 502004, 502005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_502006", "GROUP_REFRESH_502007", "VARIABLE_CHANGE_502008", "GROUP_REFRESH_502009", "VARIABLE_CHANGE_502010", "GROUP_REFRESH_502011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_502006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_1_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "group_1_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_502006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223502, EntityType.GADGET, 502001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_502007(context, evt)
	-- 判断变量"group_1_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "group_1_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_502007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223502, EntityType.GADGET, 502001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_502008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_2_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_2_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_502008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223502, EntityType.GADGET, 502002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_502009(context, evt)
	-- 判断变量"group_2_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "group_2_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_502009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223502, EntityType.GADGET, 502002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_502010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"group_3_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "group_3_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_502010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223502, EntityType.GADGET, 502004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223502, EntityType.GADGET, 502005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_REFRESH_502011(context, evt)
	-- 判断变量"group_3_progress"为3
	if ScriptLib.GetGroupVariableValue(context, "group_3_progress") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_502011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223502, EntityType.GADGET, 502004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133223502, EntityType.GADGET, 502005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end