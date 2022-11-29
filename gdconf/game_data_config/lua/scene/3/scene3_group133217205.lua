-- 基础信息
local base_info = {
	group_id = 133217205
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
	{ config_id = 205001, gadget_id = 70330064, pos = { x = -4881.315, y = 225.915, z = -3930.331 }, rot = { x = 0.000, y = 203.635, z = 0.000 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 205002, gadget_id = 70900380, pos = { x = -4876.743, y = 233.074, z = -3935.410 }, rot = { x = 359.838, y = 230.962, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 205003, gadget_id = 70900380, pos = { x = -4870.843, y = 240.063, z = -3941.156 }, rot = { x = 359.838, y = 230.962, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 205004, gadget_id = 70900380, pos = { x = -4864.580, y = 248.260, z = -3946.929 }, rot = { x = 359.838, y = 230.962, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 205007, gadget_id = 70900380, pos = { x = -4858.377, y = 256.346, z = -3952.635 }, rot = { x = 359.838, y = 230.962, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 205008, gadget_id = 70900380, pos = { x = -4852.544, y = 263.856, z = -3958.522 }, rot = { x = 359.838, y = 230.962, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 205009, gadget_id = 70900380, pos = { x = -4846.521, y = 270.937, z = -3966.842 }, rot = { x = 359.728, y = 235.844, z = 1.278 }, level = 30, area_id = 14 },
	{ config_id = 205010, gadget_id = 70900380, pos = { x = -4841.122, y = 277.927, z = -3973.060 }, rot = { x = 359.728, y = 235.844, z = 1.278 }, level = 30, area_id = 14 },
	{ config_id = 205011, gadget_id = 70900380, pos = { x = -4835.361, y = 286.125, z = -3979.333 }, rot = { x = 359.728, y = 235.844, z = 1.278 }, level = 30, area_id = 14 },
	{ config_id = 205012, gadget_id = 70900380, pos = { x = -4829.655, y = 294.211, z = -3985.536 }, rot = { x = 359.728, y = 235.844, z = 1.278 }, level = 30, area_id = 14 },
	{ config_id = 205013, gadget_id = 70900380, pos = { x = -4824.333, y = 301.722, z = -3991.887 }, rot = { x = 359.728, y = 235.844, z = 1.278 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1205005, name = "GADGET_STATE_CHANGE_205005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_205005", action = "action_EVENT_GADGET_STATE_CHANGE_205005", trigger_count = 0 },
	{ config_id = 1205006, name = "GADGET_STATE_CHANGE_205006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_205006", action = "action_EVENT_GADGET_STATE_CHANGE_205006", trigger_count = 0 }
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
		gadgets = { 205001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_205005", "GADGET_STATE_CHANGE_205006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 205002, 205003, 205004, 205007, 205008, 205009, 205010, 205011, 205012, 205013 },
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
function condition_EVENT_GADGET_STATE_CHANGE_205005(context, evt)
	if 205001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_205005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217205, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_205006(context, evt)
	if 205001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_205006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217205, 2)
	
	return 0
end

require "V2_0/ElectricCore"