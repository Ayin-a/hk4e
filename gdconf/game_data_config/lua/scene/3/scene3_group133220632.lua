-- 基础信息
local base_info = {
	group_id = 133220632
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
	{ config_id = 632001, gadget_id = 70330064, pos = { x = -3367.385, y = 200.838, z = -4259.196 }, rot = { x = 4.452, y = 0.092, z = 9.731 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 632002, gadget_id = 70900380, pos = { x = -3370.051, y = 208.481, z = -4246.442 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 632003, gadget_id = 70900380, pos = { x = -3373.107, y = 224.437, z = -4232.910 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 632004, gadget_id = 70900380, pos = { x = -3377.045, y = 229.640, z = -4218.326 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1632005, name = "GADGET_STATE_CHANGE_632005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_632005", action = "action_EVENT_GADGET_STATE_CHANGE_632005", trigger_count = 0 },
	{ config_id = 1632006, name = "GADGET_STATE_CHANGE_632006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_632006", action = "action_EVENT_GADGET_STATE_CHANGE_632006", trigger_count = 0 }
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
		gadgets = { 632001, 632002, 632003, 632004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_632005", "GADGET_STATE_CHANGE_632006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_632005(context, evt)
	if 632001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_632005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220632, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_632006(context, evt)
	if 632001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_632006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220632, 2)
	
	return 0
end

require "V2_0/ElectricCore"