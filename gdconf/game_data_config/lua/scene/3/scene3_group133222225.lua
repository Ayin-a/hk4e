-- 基础信息
local base_info = {
	group_id = 133222225
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
	{ config_id = 225001, gadget_id = 70330064, pos = { x = -4648.672, y = 438.755, z = -4186.355 }, rot = { x = 356.385, y = 240.903, z = 358.936 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 225002, gadget_id = 70900380, pos = { x = -4655.865, y = 450.026, z = -4186.866 }, rot = { x = 359.580, y = 340.648, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 225003, gadget_id = 70900380, pos = { x = -4670.408, y = 475.858, z = -4190.986 }, rot = { x = 359.580, y = 340.648, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 225004, gadget_id = 70900380, pos = { x = -4659.022, y = 462.147, z = -4186.316 }, rot = { x = 359.580, y = 340.648, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 225005, gadget_id = 70900380, pos = { x = -4663.421, y = 471.043, z = -4188.444 }, rot = { x = 359.580, y = 340.648, z = 1.124 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1225006, name = "GADGET_STATE_CHANGE_225006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_225006", action = "action_EVENT_GADGET_STATE_CHANGE_225006", trigger_count = 0 },
	{ config_id = 1225007, name = "GADGET_STATE_CHANGE_225007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_225007", action = "action_EVENT_GADGET_STATE_CHANGE_225007", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 225001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_225006", "GADGET_STATE_CHANGE_225007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 225002, 225003, 225004, 225005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_225006(context, evt)
	if 225001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_225006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222225, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_225007(context, evt)
	if 225001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_225007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222225, 3)
	
	return 0
end

require "V2_0/ElectricCore"