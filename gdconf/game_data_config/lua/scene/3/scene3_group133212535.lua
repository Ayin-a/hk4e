-- 基础信息
local base_info = {
	group_id = 133212535
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
	{ config_id = 535001, gadget_id = 70330064, pos = { x = -4307.632, y = 203.070, z = -2473.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 535002, gadget_id = 70900380, pos = { x = -4306.091, y = 204.863, z = -2485.584 }, rot = { x = 359.801, y = 173.969, z = 359.899 }, level = 27, area_id = 13 },
	{ config_id = 535003, gadget_id = 70900380, pos = { x = -4304.518, y = 205.855, z = -2500.498 }, rot = { x = 359.801, y = 173.969, z = 359.899 }, level = 27, area_id = 13 },
	{ config_id = 535004, gadget_id = 70900380, pos = { x = -4302.944, y = 206.970, z = -2515.412 }, rot = { x = 359.801, y = 173.969, z = 359.899 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1535005, name = "GADGET_STATE_CHANGE_535005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_535005", action = "action_EVENT_GADGET_STATE_CHANGE_535005", trigger_count = 0 },
	{ config_id = 1535006, name = "GADGET_STATE_CHANGE_535006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_535006", action = "action_EVENT_GADGET_STATE_CHANGE_535006", trigger_count = 0 }
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
		gadgets = { 535001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_535005", "GADGET_STATE_CHANGE_535006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 535002, 535003, 535004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_535005(context, evt)
	if 535001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_535005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212535, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_535006(context, evt)
	if 535001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_535006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212535, 2)
	
	return 0
end

require "V2_0/ElectricCore"