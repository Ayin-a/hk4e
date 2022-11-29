-- 基础信息
local base_info = {
	group_id = 133225171
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
	{ config_id = 171001, gadget_id = 70330064, pos = { x = -6327.368, y = 253.064, z = -2725.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 171002, gadget_id = 70900380, pos = { x = -6330.982, y = 257.467, z = -2717.023 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 171003, gadget_id = 70900380, pos = { x = -6335.993, y = 265.228, z = -2711.302 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 171004, gadget_id = 70900380, pos = { x = -6339.588, y = 273.662, z = -2706.112 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171005, name = "GADGET_STATE_CHANGE_171005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171005", action = "action_EVENT_GADGET_STATE_CHANGE_171005", trigger_count = 0 },
	{ config_id = 1171006, name = "GADGET_STATE_CHANGE_171006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171006", action = "action_EVENT_GADGET_STATE_CHANGE_171006", trigger_count = 0 }
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
		gadgets = { 171001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_171005", "GADGET_STATE_CHANGE_171006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 171002, 171003, 171004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_171005(context, evt)
	if 171001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225171, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171006(context, evt)
	if 171001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225171, 2)
	
	return 0
end

require "V2_0/ElectricCore"