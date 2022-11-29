-- 基础信息
local base_info = {
	group_id = 133217291
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
	{ config_id = 291001, gadget_id = 70330064, pos = { x = -4773.964, y = 205.849, z = -3685.833 }, rot = { x = 10.171, y = 52.309, z = 11.517 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 291002, gadget_id = 70900380, pos = { x = -4777.345, y = 210.275, z = -3675.472 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 291003, gadget_id = 70900380, pos = { x = -4783.914, y = 215.356, z = -3660.889 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 291004, gadget_id = 70900380, pos = { x = -4791.826, y = 218.379, z = -3646.791 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 291007, gadget_id = 70900380, pos = { x = -4797.960, y = 220.605, z = -3632.560 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 291008, gadget_id = 70900380, pos = { x = -4805.962, y = 220.572, z = -3618.665 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 291009, gadget_id = 70330064, pos = { x = -4820.609, y = 206.179, z = -3602.566 }, rot = { x = 9.485, y = 0.056, z = 0.675 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 291010, gadget_id = 70900380, pos = { x = -4814.627, y = 214.948, z = -3609.240 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1291005, name = "GADGET_STATE_CHANGE_291005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291005", action = "action_EVENT_GADGET_STATE_CHANGE_291005", trigger_count = 0 },
	{ config_id = 1291006, name = "GADGET_STATE_CHANGE_291006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291006", action = "action_EVENT_GADGET_STATE_CHANGE_291006", trigger_count = 0 },
	{ config_id = 1291011, name = "GADGET_STATE_CHANGE_291011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291011", action = "action_EVENT_GADGET_STATE_CHANGE_291011", trigger_count = 0 },
	{ config_id = 1291012, name = "GADGET_STATE_CHANGE_291012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291012", action = "action_EVENT_GADGET_STATE_CHANGE_291012", trigger_count = 0 }
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
		gadgets = { 291001, 291009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_291005", "GADGET_STATE_CHANGE_291006", "GADGET_STATE_CHANGE_291011", "GADGET_STATE_CHANGE_291012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 291002, 291003, 291004, 291007, 291008, 291010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_291005(context, evt)
	if 291001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217291, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291006(context, evt)
	if 291001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217291, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291011(context, evt)
	if 291009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217291, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291012(context, evt)
	if 291009 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291012(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217291, 2)
	
	return 0
end

require "V2_0/ElectricCore"