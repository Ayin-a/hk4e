-- 基础信息
local base_info = {
	group_id = 133222317
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
	{ config_id = 317001, gadget_id = 70330064, pos = { x = -4545.217, y = 372.260, z = -4181.127 }, rot = { x = 356.523, y = 8.412, z = 359.916 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 317002, gadget_id = 70900380, pos = { x = -4545.191, y = 375.394, z = -4175.901 }, rot = { x = 1.978, y = 1.802, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 317003, gadget_id = 70900380, pos = { x = -4544.953, y = 375.787, z = -4162.724 }, rot = { x = 1.978, y = 1.802, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 317004, gadget_id = 70900380, pos = { x = -4545.453, y = 375.372, z = -4150.445 }, rot = { x = 1.978, y = 1.802, z = 358.554 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1317006, name = "GADGET_STATE_CHANGE_317006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_317006", action = "action_EVENT_GADGET_STATE_CHANGE_317006", trigger_count = 0 },
	{ config_id = 1317007, name = "GADGET_STATE_CHANGE_317007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_317007", action = "action_EVENT_GADGET_STATE_CHANGE_317007", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 317001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_317006", "GADGET_STATE_CHANGE_317007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 317002, 317003, 317004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_317006(context, evt)
	if 317001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_317006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222317, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_317007(context, evt)
	if 317001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_317007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222317, 3)
	
	return 0
end

require "V2_0/ElectricCore"