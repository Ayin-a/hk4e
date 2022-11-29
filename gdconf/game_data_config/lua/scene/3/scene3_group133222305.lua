-- 基础信息
local base_info = {
	group_id = 133222305
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
	{ config_id = 305001, gadget_id = 70330064, pos = { x = -4667.807, y = 446.139, z = -4228.385 }, rot = { x = 356.385, y = 357.076, z = 358.936 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 305002, gadget_id = 70900380, pos = { x = -4670.177, y = 451.168, z = -4221.386 }, rot = { x = 0.000, y = 116.173, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 305003, gadget_id = 70900380, pos = { x = -4673.279, y = 458.385, z = -4214.443 }, rot = { x = 0.000, y = 116.173, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 305004, gadget_id = 70900380, pos = { x = -4674.801, y = 466.781, z = -4207.786 }, rot = { x = 0.000, y = 116.173, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 305005, gadget_id = 70900380, pos = { x = -4677.082, y = 474.276, z = -4199.976 }, rot = { x = 0.000, y = 116.173, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 305008, gadget_id = 70900380, pos = { x = -4677.193, y = 455.910, z = -4203.937 }, rot = { x = 0.000, y = 116.173, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 305009, gadget_id = 70900380, pos = { x = -4682.453, y = 450.752, z = -4192.335 }, rot = { x = 0.000, y = 116.173, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1305006, name = "GADGET_STATE_CHANGE_305006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_305006", action = "action_EVENT_GADGET_STATE_CHANGE_305006", trigger_count = 0 },
	{ config_id = 1305007, name = "GADGET_STATE_CHANGE_305007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_305007", action = "action_EVENT_GADGET_STATE_CHANGE_305007", trigger_count = 0 }
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
		gadgets = { 305001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_305006", "GADGET_STATE_CHANGE_305007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 305002, 305003, 305004, 305005, 305008, 305009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_305006(context, evt)
	if 305001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_305006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222305, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_305007(context, evt)
	if 305001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_305007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222305, 3)
	
	return 0
end

require "V2_0/ElectricCore"