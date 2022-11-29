-- 基础信息
local base_info = {
	group_id = 199002082
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
	{ config_id = 82001, gadget_id = 70900429, pos = { x = 664.333, y = 146.142, z = -678.942 }, rot = { x = 337.030, y = 43.404, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 82002, gadget_id = 70360002, pos = { x = 662.041, y = 141.327, z = -678.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1082003, name = "GROUP_LOAD_82003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_82003", action = "action_EVENT_GROUP_LOAD_82003", trigger_count = 0 },
	{ config_id = 1082004, name = "VARIABLE_CHANGE_82004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_82004", action = "action_EVENT_VARIABLE_CHANGE_82004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Appear", value = 0, no_refresh = true }
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
		gadgets = { 82002 },
		regions = { },
		triggers = { "GROUP_LOAD_82003", "VARIABLE_CHANGE_82004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 82001 },
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
function condition_EVENT_GROUP_LOAD_82003(context, evt)
	-- 判断变量"Appear"为1
	if ScriptLib.GetGroupVariableValue(context, "Appear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_82003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002082, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_82004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Appear"为1
	if ScriptLib.GetGroupVariableValue(context, "Appear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_82004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002082, 2)
	
	return 0
end