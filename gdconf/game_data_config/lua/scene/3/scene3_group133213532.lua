-- 基础信息
local base_info = {
	group_id = 133213532
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
	{ config_id = 532001, gadget_id = 70330064, pos = { x = -3783.191, y = 200.042, z = -2934.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 532002, gadget_id = 70900380, pos = { x = -3774.189, y = 205.887, z = -2922.666 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 532003, gadget_id = 70900380, pos = { x = -3765.194, y = 209.274, z = -2909.098 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 532004, gadget_id = 70900380, pos = { x = -3754.512, y = 212.930, z = -2894.015 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 532007, gadget_id = 70900380, pos = { x = -3782.760, y = 205.652, z = -2943.064 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 532008, gadget_id = 70900380, pos = { x = -3784.699, y = 213.625, z = -2958.621 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 532009, gadget_id = 70900380, pos = { x = -3777.520, y = 221.242, z = -2976.295 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 532010, gadget_id = 70900380, pos = { x = -3797.885, y = 208.014, z = -2933.499 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 532011, gadget_id = 70900380, pos = { x = -3814.523, y = 216.293, z = -2930.947 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 },
	{ config_id = 532012, gadget_id = 70900380, pos = { x = -3834.962, y = 220.398, z = -2939.858 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1532005, name = "GADGET_STATE_CHANGE_532005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_532005", action = "action_EVENT_GADGET_STATE_CHANGE_532005", trigger_count = 0 },
	{ config_id = 1532006, name = "GADGET_STATE_CHANGE_532006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_532006", action = "action_EVENT_GADGET_STATE_CHANGE_532006", trigger_count = 0 }
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
		gadgets = { 532001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_532005", "GADGET_STATE_CHANGE_532006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 532002, 532003, 532004, 532007, 532008, 532009, 532010, 532011, 532012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_532005(context, evt)
	if 532001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_532005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213532, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_532006(context, evt)
	if 532001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_532006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213532, 2)
	
	return 0
end

require "V2_0/ElectricCore"