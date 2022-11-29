-- 基础信息
local base_info = {
	group_id = 133210412
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
	{ config_id = 412001, gadget_id = 70330064, pos = { x = -3899.642, y = 121.972, z = -962.293 }, rot = { x = 357.429, y = 359.746, z = 1.741 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 412002, gadget_id = 70900380, pos = { x = -3900.444, y = 124.893, z = -975.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 412003, gadget_id = 70900380, pos = { x = -3913.299, y = 124.893, z = -995.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 412004, gadget_id = 70900380, pos = { x = -3926.624, y = 128.455, z = -1013.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 412007, gadget_id = 70900380, pos = { x = -3899.945, y = 127.696, z = -988.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1412005, name = "GADGET_STATE_CHANGE_412005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_412005", action = "action_EVENT_GADGET_STATE_CHANGE_412005", trigger_count = 0 },
	{ config_id = 1412006, name = "GADGET_STATE_CHANGE_412006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_412006", action = "action_EVENT_GADGET_STATE_CHANGE_412006", trigger_count = 0 }
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
		gadgets = { 412001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_412005", "GADGET_STATE_CHANGE_412006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 412002, 412003, 412004, 412007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_412005(context, evt)
	if 412001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_412005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210412, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_412006(context, evt)
	if 412001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_412006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210412, 2)
	
	return 0
end

require "V2_0/ElectricCore"