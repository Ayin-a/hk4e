-- 基础信息
local base_info = {
	group_id = 133212537
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
	{ config_id = 537001, gadget_id = 70330064, pos = { x = -4227.440, y = 202.297, z = -2585.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 537002, gadget_id = 70900380, pos = { x = -4227.359, y = 205.212, z = -2571.059 }, rot = { x = 0.000, y = 2.312, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 537003, gadget_id = 70900380, pos = { x = -4226.754, y = 206.104, z = -2556.071 }, rot = { x = 0.000, y = 2.312, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 537004, gadget_id = 70900380, pos = { x = -4226.149, y = 207.227, z = -2541.083 }, rot = { x = 0.000, y = 2.312, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 537007, gadget_id = 70900380, pos = { x = -4225.543, y = 208.383, z = -2526.095 }, rot = { x = 0.000, y = 2.312, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 537008, gadget_id = 70900380, pos = { x = -4224.939, y = 209.320, z = -2511.107 }, rot = { x = 0.000, y = 2.312, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 537009, gadget_id = 70900380, pos = { x = -4224.329, y = 210.103, z = -2495.990 }, rot = { x = 0.000, y = 2.312, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 537010, gadget_id = 70900380, pos = { x = -4224.329, y = 211.386, z = -2480.990 }, rot = { x = 0.000, y = 2.312, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 537011, gadget_id = 70900380, pos = { x = -4224.329, y = 212.090, z = -2465.990 }, rot = { x = 0.000, y = 2.312, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1537005, name = "GADGET_STATE_CHANGE_537005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_537005", action = "action_EVENT_GADGET_STATE_CHANGE_537005", trigger_count = 0 },
	{ config_id = 1537006, name = "GADGET_STATE_CHANGE_537006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_537006", action = "action_EVENT_GADGET_STATE_CHANGE_537006", trigger_count = 0 }
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
		gadgets = { 537001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_537005", "GADGET_STATE_CHANGE_537006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 537002, 537003, 537004, 537007, 537008, 537009, 537010, 537011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_537005(context, evt)
	if 537001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_537005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212537, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_537006(context, evt)
	if 537001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_537006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212537, 2)
	
	return 0
end

require "V2_0/ElectricCore"