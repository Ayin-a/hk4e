-- 基础信息
local base_info = {
	group_id = 133223454
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
	{ config_id = 454001, gadget_id = 70330064, pos = { x = -6314.949, y = 298.575, z = -2733.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 454002, gadget_id = 70900380, pos = { x = -6315.813, y = 307.294, z = -2728.034 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 454003, gadget_id = 70900380, pos = { x = -6318.472, y = 316.589, z = -2721.527 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 454007, gadget_id = 70900380, pos = { x = -6318.068, y = 327.258, z = -2717.952 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 },
	{ config_id = 454008, gadget_id = 70900380, pos = { x = -6311.193, y = 337.621, z = -2718.382 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1454005, name = "GADGET_STATE_CHANGE_454005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_454005", action = "action_EVENT_GADGET_STATE_CHANGE_454005", trigger_count = 0 },
	{ config_id = 1454006, name = "GADGET_STATE_CHANGE_454006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_454006", action = "action_EVENT_GADGET_STATE_CHANGE_454006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 454004, gadget_id = 70900380, pos = { x = -6321.595, y = 320.967, z = -2722.811 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 }
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
		gadgets = { 454001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_454005", "GADGET_STATE_CHANGE_454006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 454002, 454003, 454007, 454008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_454005(context, evt)
	if 454001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_454005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223454, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_454006(context, evt)
	if 454001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_454006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223454, 2)
	
	return 0
end

require "V2_0/ElectricCore"