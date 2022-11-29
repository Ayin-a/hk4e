-- 基础信息
local base_info = {
	group_id = 133210383
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
	{ config_id = 383001, gadget_id = 70330064, pos = { x = -3639.009, y = 113.382, z = -830.782 }, rot = { x = 352.051, y = 164.357, z = 1.298 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 383002, gadget_id = 70900380, pos = { x = -3641.815, y = 119.312, z = -823.449 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 17 },
	{ config_id = 383007, gadget_id = 70900380, pos = { x = -3645.844, y = 131.131, z = -814.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 383008, gadget_id = 70900380, pos = { x = -3653.906, y = 139.993, z = -803.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 383009, gadget_id = 70900380, pos = { x = -3657.141, y = 147.199, z = -798.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1383005, name = "GADGET_STATE_CHANGE_383005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_383005", action = "action_EVENT_GADGET_STATE_CHANGE_383005", trigger_count = 0 },
	{ config_id = 1383006, name = "GADGET_STATE_CHANGE_383006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_383006", action = "action_EVENT_GADGET_STATE_CHANGE_383006", trigger_count = 0 }
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
		gadgets = { 383001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_383005", "GADGET_STATE_CHANGE_383006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 383002, 383007, 383008, 383009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_383005(context, evt)
	if 383001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_383005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210383, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_383006(context, evt)
	if 383001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_383006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210383, 2)
	
	return 0
end

require "V2_0/ElectricCore"