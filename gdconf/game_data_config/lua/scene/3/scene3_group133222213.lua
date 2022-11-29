-- 基础信息
local base_info = {
	group_id = 133222213
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
	{ config_id = 213001, gadget_id = 70330064, pos = { x = -4533.934, y = 357.769, z = -4270.781 }, rot = { x = 3.659, y = 359.838, z = 354.936 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 213002, gadget_id = 70900380, pos = { x = -4527.680, y = 363.899, z = -4269.170 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 213003, gadget_id = 70900380, pos = { x = -4521.234, y = 371.683, z = -4265.990 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 213004, gadget_id = 70900380, pos = { x = -4510.337, y = 373.938, z = -4258.050 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1213005, name = "GADGET_STATE_CHANGE_213005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_213005", action = "action_EVENT_GADGET_STATE_CHANGE_213005", trigger_count = 0 },
	{ config_id = 1213006, name = "GADGET_STATE_CHANGE_213006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_213006", action = "action_EVENT_GADGET_STATE_CHANGE_213006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 213007, gadget_id = 70330093, pos = { x = -4513.127, y = 380.160, z = -4251.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 213008, gadget_id = 70330093, pos = { x = -4507.794, y = 380.160, z = -4249.940 }, rot = { x = 0.000, y = 54.342, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 213009, gadget_id = 70900380, pos = { x = -4499.833, y = 375.749, z = -4249.621 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
	}
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
		gadgets = { 213001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_213005", "GADGET_STATE_CHANGE_213006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 213002, 213003, 213004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_213005(context, evt)
	if 213001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_213005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222213, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_213006(context, evt)
	if 213001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_213006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222213, 3)
	
	return 0
end

require "V2_0/ElectricCore"