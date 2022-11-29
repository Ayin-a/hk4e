-- 基础信息
local base_info = {
	group_id = 133212070
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
	{ config_id = 70001, gadget_id = 70330064, pos = { x = -3864.825, y = 206.949, z = -2147.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 70002, gadget_id = 70900380, pos = { x = -3869.342, y = 212.799, z = -2146.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 70003, gadget_id = 70900380, pos = { x = -3869.342, y = 227.633, z = -2146.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 70004, gadget_id = 70900380, pos = { x = -3869.342, y = 242.692, z = -2146.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 70007, gadget_id = 70900380, pos = { x = -3875.976, y = 250.002, z = -2159.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 70008, gadget_id = 70900380, pos = { x = -3884.566, y = 258.139, z = -2175.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 70009, gadget_id = 70900380, pos = { x = -3891.464, y = 263.874, z = -2185.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 70010, gadget_id = 70900380, pos = { x = -3899.796, y = 265.644, z = -2198.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1070005, name = "GADGET_STATE_CHANGE_70005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_70005", action = "action_EVENT_GADGET_STATE_CHANGE_70005", trigger_count = 0 },
	{ config_id = 1070006, name = "GADGET_STATE_CHANGE_70006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_70006", action = "action_EVENT_GADGET_STATE_CHANGE_70006", trigger_count = 0 }
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
		gadgets = { 70001, 70010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_70005", "GADGET_STATE_CHANGE_70006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 70002, 70003, 70004, 70007, 70008, 70009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_70005(context, evt)
	if 70001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_70005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212070, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_70006(context, evt)
	if 70001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_70006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212070, 2)
	
	return 0
end

require "V2_0/ElectricCore"