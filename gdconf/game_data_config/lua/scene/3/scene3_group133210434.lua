-- 基础信息
local base_info = {
	group_id = 133210434
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
	{ config_id = 434001, gadget_id = 70900380, pos = { x = -3601.512, y = 206.367, z = -1134.923 }, rot = { x = 0.000, y = 198.545, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 434006, gadget_id = 70900380, pos = { x = -3605.543, y = 206.367, z = -1126.955 }, rot = { x = 0.000, y = 198.545, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 434007, gadget_id = 70900380, pos = { x = -3598.526, y = 206.367, z = -1143.527 }, rot = { x = 0.000, y = 198.545, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 434008, gadget_id = 70900380, pos = { x = -3611.343, y = 206.367, z = -1135.702 }, rot = { x = 0.000, y = 198.545, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 434009, gadget_id = 70900380, pos = { x = -3594.196, y = 206.367, z = -1131.143 }, rot = { x = 0.000, y = 198.545, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1434002, name = "GROUP_LOAD_434002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_434002", action = "action_EVENT_GROUP_LOAD_434002", trigger_count = 0 },
	{ config_id = 1434003, name = "VARIABLE_CHANGE_434003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_434003", action = "action_EVENT_VARIABLE_CHANGE_434003", trigger_count = 0 },
	{ config_id = 1434004, name = "VARIABLE_CHANGE_434004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_434004", action = "action_EVENT_VARIABLE_CHANGE_434004", trigger_count = 0 },
	{ config_id = 1434005, name = "GROUP_LOAD_434005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_434005", action = "action_EVENT_GROUP_LOAD_434005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_434002", "VARIABLE_CHANGE_434003", "VARIABLE_CHANGE_434004", "GROUP_LOAD_434005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 434001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 434006, 434007, 434008, 434009 },
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
function condition_EVENT_GROUP_LOAD_434002(context, evt)
	-- 判断变量"GadgetCreate"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_434002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210434, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_434003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_434003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210434, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210434, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_434004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_434004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210434, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210434, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_434005(context, evt)
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_434005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210434, 3)
	
	return 0
end

require "V2_0/ElectricCore"