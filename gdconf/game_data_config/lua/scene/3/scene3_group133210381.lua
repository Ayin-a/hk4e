-- 基础信息
local base_info = {
	group_id = 133210381
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
	{ config_id = 381001, gadget_id = 70330064, pos = { x = -3600.098, y = 155.736, z = -836.253 }, rot = { x = 359.097, y = 359.898, z = 12.919 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 381002, gadget_id = 70900380, pos = { x = -3592.907, y = 162.857, z = -813.927 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 17 },
	{ config_id = 381007, gadget_id = 70900380, pos = { x = -3578.282, y = 175.434, z = -788.635 }, rot = { x = 0.000, y = 164.279, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 381008, gadget_id = 70900380, pos = { x = -3586.781, y = 170.617, z = -803.488 }, rot = { x = 0.000, y = 164.279, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1381005, name = "GADGET_STATE_CHANGE_381005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_381005", action = "action_EVENT_GADGET_STATE_CHANGE_381005", trigger_count = 0 },
	{ config_id = 1381006, name = "GADGET_STATE_CHANGE_381006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_381006", action = "action_EVENT_GADGET_STATE_CHANGE_381006", trigger_count = 0 }
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
		gadgets = { 381001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_381005", "GADGET_STATE_CHANGE_381006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 381002, 381007, 381008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_381005(context, evt)
	if 381001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_381005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210381, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_381006(context, evt)
	if 381001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_381006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210381, 2)
	
	return 0
end

require "V2_0/ElectricCore"