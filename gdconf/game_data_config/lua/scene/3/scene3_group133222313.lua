-- 基础信息
local base_info = {
	group_id = 133222313
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
	{ config_id = 313001, gadget_id = 70330064, pos = { x = -4358.144, y = 231.614, z = -4232.272 }, rot = { x = 3.534, y = 359.981, z = 359.390 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 313002, gadget_id = 70900380, pos = { x = -4359.549, y = 239.947, z = -4232.875 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 313003, gadget_id = 70900380, pos = { x = -4359.669, y = 254.321, z = -4231.515 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 313004, gadget_id = 70900380, pos = { x = -4359.472, y = 264.688, z = -4230.853 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 313007, gadget_id = 70900380, pos = { x = -4359.774, y = 278.261, z = -4230.922 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 313008, gadget_id = 70900380, pos = { x = -4360.045, y = 290.454, z = -4230.984 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313005, name = "GADGET_STATE_CHANGE_313005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313005", action = "action_EVENT_GADGET_STATE_CHANGE_313005", trigger_count = 0 },
	{ config_id = 1313006, name = "GADGET_STATE_CHANGE_313006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313006", action = "action_EVENT_GADGET_STATE_CHANGE_313006", trigger_count = 0 }
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
		gadgets = { 313001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_313005", "GADGET_STATE_CHANGE_313006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 313002, 313003, 313004, 313007, 313008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_313005(context, evt)
	if 313001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222313, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_313006(context, evt)
	if 313001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222313, 2)
	
	return 0
end

require "V2_0/ElectricCore"