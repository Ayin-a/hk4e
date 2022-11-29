-- 基础信息
local base_info = {
	group_id = 133220359
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
	{ config_id = 359001, gadget_id = 70330064, pos = { x = -3242.395, y = 209.538, z = -4706.920 }, rot = { x = 353.419, y = 359.949, z = 0.884 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 359002, gadget_id = 70900380, pos = { x = -3245.810, y = 214.052, z = -4697.195 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 359003, gadget_id = 70900380, pos = { x = -3248.886, y = 223.369, z = -4690.021 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 359004, gadget_id = 70900380, pos = { x = -3253.686, y = 233.478, z = -4687.429 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 359007, gadget_id = 70900380, pos = { x = -3257.459, y = 240.402, z = -4693.662 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1359005, name = "GADGET_STATE_CHANGE_359005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_359005", action = "action_EVENT_GADGET_STATE_CHANGE_359005", trigger_count = 0 },
	{ config_id = 1359006, name = "GADGET_STATE_CHANGE_359006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_359006", action = "action_EVENT_GADGET_STATE_CHANGE_359006", trigger_count = 0 }
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
		gadgets = { 359001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_359005", "GADGET_STATE_CHANGE_359006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 359002, 359003, 359004, 359007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_359005(context, evt)
	if 359001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_359005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220359, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_359006(context, evt)
	if 359001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_359006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220359, 2)
	
	return 0
end

require "V2_0/ElectricCore"