-- 基础信息
local base_info = {
	group_id = 133309312
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
	{ config_id = 312001, gadget_id = 70500000, pos = { x = -2192.475, y = 16.994, z = 5568.532 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 27 },
	{ config_id = 312002, gadget_id = 70500000, pos = { x = -2150.416, y = -17.385, z = 5557.908 }, rot = { x = 0.000, y = 95.223, z = 0.000 }, level = 32, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 27 },
	{ config_id = 312004, gadget_id = 70220103, pos = { x = -2195.813, y = 16.655, z = 5568.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1312005, name = "VARIABLE_CHANGE_312005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_312005", action = "action_EVENT_VARIABLE_CHANGE_312005" },
	{ config_id = 1312006, name = "GROUP_LOAD_312006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_312006", action = "action_EVENT_GROUP_LOAD_312006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "create", value = 0, no_refresh = true }
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
		gadgets = { 312001, 312002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_312005", "GROUP_LOAD_312006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 312004 },
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
function condition_EVENT_VARIABLE_CHANGE_312005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"create"为1
	if ScriptLib.GetGroupVariableValue(context, "create") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_312005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309312, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_312006(context, evt)
	-- 判断变量"create"为1
	if ScriptLib.GetGroupVariableValue(context, "create") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_312006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309312, 2)
	
	return 0
end