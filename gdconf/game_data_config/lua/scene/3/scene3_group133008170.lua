-- 基础信息
local base_info = {
	group_id = 133008170
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
	{ config_id = 170005, gadget_id = 70590025, pos = { x = 999.877, y = 481.872, z = -768.057 }, rot = { x = 8.629, y = 33.459, z = 351.135 }, level = 30, area_id = 10 },
	{ config_id = 170006, gadget_id = 70590025, pos = { x = 999.963, y = 571.477, z = -860.552 }, rot = { x = 355.245, y = 46.860, z = 354.945 }, level = 30, area_id = 10 },
	{ config_id = 170011, gadget_id = 70590025, pos = { x = 1140.049, y = 506.393, z = -845.725 }, rot = { x = 8.923, y = 240.732, z = 351.718 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1170001, name = "VARIABLE_CHANGE_170001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_170001", action = "action_EVENT_VARIABLE_CHANGE_170001" },
	{ config_id = 1170002, name = "VARIABLE_CHANGE_170002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_170002", action = "action_EVENT_VARIABLE_CHANGE_170002" },
	{ config_id = 1170003, name = "VARIABLE_CHANGE_170003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_170003", action = "action_EVENT_VARIABLE_CHANGE_170003" }
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
		gadgets = { 170005, 170006, 170011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_170001", "VARIABLE_CHANGE_170002", "VARIABLE_CHANGE_170003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 170005, 170006, 170011 },
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
function condition_EVENT_VARIABLE_CHANGE_170001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008170) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_170001(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008170, EntityType.GADGET, 170005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_170002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008170) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_170002(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008170, EntityType.GADGET, 170011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_170003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"progress"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "progress", 133008170) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_170003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133008170, EntityType.GADGET, 170006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end