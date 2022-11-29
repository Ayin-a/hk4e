-- 基础信息
local base_info = {
	group_id = 133210305
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
	{ config_id = 305002, gadget_id = 70900380, pos = { x = -3589.754, y = 209.727, z = -858.921 }, rot = { x = 0.000, y = 206.430, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1305001, name = "VARIABLE_CHANGE_305001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_305001", action = "action_EVENT_VARIABLE_CHANGE_305001" },
	{ config_id = 1305003, name = "GROUP_LOAD_305003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_305003", action = "action_EVENT_GROUP_LOAD_305003", trigger_count = 0 }
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
		triggers = { "VARIABLE_CHANGE_305001", "GROUP_LOAD_305003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 305002 },
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
function condition_EVENT_VARIABLE_CHANGE_305001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_305001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210305, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_305003(context, evt)
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_305003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210305, 2)
	
	return 0
end

require "V2_0/ElectricCore"