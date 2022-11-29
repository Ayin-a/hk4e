-- 基础信息
local base_info = {
	group_id = 133217272
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
	{ config_id = 272001, gadget_id = 70330064, pos = { x = -4561.608, y = 201.721, z = -4596.490 }, rot = { x = 346.043, y = 0.765, z = 353.758 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 272002, gadget_id = 70900380, pos = { x = -4554.042, y = 211.471, z = -4612.625 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 272003, gadget_id = 70900380, pos = { x = -4547.417, y = 213.318, z = -4628.215 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 272004, gadget_id = 70900380, pos = { x = -4541.648, y = 216.521, z = -4643.600 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 272005, gadget_id = 70900380, pos = { x = -4536.584, y = 218.627, z = -4661.561 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1272006, name = "GADGET_STATE_CHANGE_272006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_272006", action = "action_EVENT_GADGET_STATE_CHANGE_272006", trigger_count = 0 },
	{ config_id = 1272007, name = "GADGET_STATE_CHANGE_272007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_272007", action = "action_EVENT_GADGET_STATE_CHANGE_272007", trigger_count = 0 }
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
		gadgets = { 272001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_272006", "GADGET_STATE_CHANGE_272007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 272002, 272003, 272004, 272005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_272006(context, evt)
	if 272001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_272006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217272, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_272007(context, evt)
	if 272001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_272007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217272, 2)
	
	return 0
end

require "V2_0/ElectricCore"