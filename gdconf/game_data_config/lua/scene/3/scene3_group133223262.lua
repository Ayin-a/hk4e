-- 基础信息
local base_info = {
	group_id = 133223262
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
	{ config_id = 262001, gadget_id = 70330064, pos = { x = -6345.832, y = 280.263, z = -2692.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 262002, gadget_id = 70900380, pos = { x = -6336.302, y = 282.840, z = -2689.724 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 262003, gadget_id = 70900380, pos = { x = -6324.221, y = 285.818, z = -2690.160 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 262004, gadget_id = 70900380, pos = { x = -6311.178, y = 289.752, z = -2689.956 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 262007, gadget_id = 70900380, pos = { x = -6298.681, y = 290.679, z = -2693.936 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1262005, name = "GADGET_STATE_CHANGE_262005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_262005", action = "action_EVENT_GADGET_STATE_CHANGE_262005", trigger_count = 0 },
	{ config_id = 1262006, name = "GADGET_STATE_CHANGE_262006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_262006", action = "action_EVENT_GADGET_STATE_CHANGE_262006", trigger_count = 0 }
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
		gadgets = { 262001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_262005", "GADGET_STATE_CHANGE_262006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 262002, 262003, 262004, 262007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_262005(context, evt)
	if 262001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_262005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223262, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_262006(context, evt)
	if 262001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_262006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223262, 2)
	
	return 0
end

require "V2_0/ElectricCore"