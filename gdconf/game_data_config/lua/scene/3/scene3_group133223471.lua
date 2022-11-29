-- 基础信息
local base_info = {
	group_id = 133223471
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
	{ config_id = 471001, gadget_id = 70330064, pos = { x = -6419.571, y = 218.254, z = -2812.165 }, rot = { x = 0.000, y = 306.581, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 471002, gadget_id = 70900380, pos = { x = -6420.604, y = 221.853, z = -2800.864 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 471003, gadget_id = 70900380, pos = { x = -6422.762, y = 230.284, z = -2794.467 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 471004, gadget_id = 70900380, pos = { x = -6425.730, y = 240.764, z = -2792.717 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1471005, name = "GADGET_STATE_CHANGE_471005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_471005", action = "action_EVENT_GADGET_STATE_CHANGE_471005", trigger_count = 0 },
	{ config_id = 1471006, name = "GADGET_STATE_CHANGE_471006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_471006", action = "action_EVENT_GADGET_STATE_CHANGE_471006", trigger_count = 0 }
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
		gadgets = { 471001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_471005", "GADGET_STATE_CHANGE_471006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 471002, 471003, 471004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_471005(context, evt)
	if 471001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_471005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223471, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_471006(context, evt)
	if 471001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_471006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223471, 2)
	
	return 0
end

require "V2_0/ElectricCore"