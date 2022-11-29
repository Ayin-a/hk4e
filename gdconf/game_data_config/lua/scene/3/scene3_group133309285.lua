-- 基础信息
local base_info = {
	group_id = 133309285
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
	{ config_id = 285003, gadget_id = 70290537, pos = { x = -2344.727, y = -36.700, z = 5383.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1285001, name = "VARIABLE_CHANGE_285001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_285001", action = "action_EVENT_VARIABLE_CHANGE_285001" },
	{ config_id = 1285002, name = "GROUP_LOAD_285002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_285002", action = "action_EVENT_GROUP_LOAD_285002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "waterdown", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_285001", "GROUP_LOAD_285002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 285003 },
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
function condition_EVENT_VARIABLE_CHANGE_285001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_285001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309285, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_285002(context, evt)
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_285002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309285, 2)
	
	return 0
end