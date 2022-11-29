-- 基础信息
local base_info = {
	group_id = 133217273
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
	{ config_id = 273001, gadget_id = 70330064, pos = { x = -4621.444, y = 201.213, z = -4617.437 }, rot = { x = 350.276, y = 111.511, z = 358.083 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 273002, gadget_id = 70900380, pos = { x = -4637.151, y = 211.471, z = -4621.611 }, rot = { x = 359.838, y = 90.224, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 273003, gadget_id = 70900380, pos = { x = -4653.341, y = 213.318, z = -4626.594 }, rot = { x = 359.838, y = 90.224, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 273004, gadget_id = 70900380, pos = { x = -4669.235, y = 216.521, z = -4630.750 }, rot = { x = 359.838, y = 90.224, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 273005, gadget_id = 70900380, pos = { x = -4687.623, y = 218.627, z = -4633.937 }, rot = { x = 359.838, y = 90.224, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1273006, name = "GADGET_STATE_CHANGE_273006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273006", action = "action_EVENT_GADGET_STATE_CHANGE_273006", trigger_count = 0 },
	{ config_id = 1273007, name = "GADGET_STATE_CHANGE_273007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_273007", action = "action_EVENT_GADGET_STATE_CHANGE_273007", trigger_count = 0 }
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
		gadgets = { 273001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_273006", "GADGET_STATE_CHANGE_273007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 273002, 273003, 273004, 273005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_273006(context, evt)
	if 273001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217273, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_273007(context, evt)
	if 273001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_273007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217273, 2)
	
	return 0
end

require "V2_0/ElectricCore"