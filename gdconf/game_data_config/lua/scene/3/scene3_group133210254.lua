-- 基础信息
local base_info = {
	group_id = 133210254
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
	{ config_id = 254001, gadget_id = 70900380, pos = { x = -4061.950, y = 231.243, z = -873.430 }, rot = { x = 0.000, y = 96.865, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 254004, gadget_id = 70900380, pos = { x = -4063.968, y = 220.454, z = -854.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254002, name = "VARIABLE_CHANGE_254002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_254002", action = "action_EVENT_VARIABLE_CHANGE_254002", trigger_count = 0 },
	{ config_id = 1254003, name = "GROUP_LOAD_254003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_254003", action = "action_EVENT_GROUP_LOAD_254003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetChange", value = 0, no_refresh = true }
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
		triggers = { "VARIABLE_CHANGE_254002", "GROUP_LOAD_254003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 254001, 254004 },
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
function condition_EVENT_VARIABLE_CHANGE_254002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetChange"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetChange") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_254002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210254, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_254003(context, evt)
	-- 判断变量"GadgetChange"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetChange") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_254003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210254, 2)
	
	return 0
end

require "V2_0/ElectricCore"