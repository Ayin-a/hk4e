-- 基础信息
local base_info = {
	group_id = 133225111
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
	{ config_id = 111001, gadget_id = 70330064, pos = { x = -6351.657, y = 200.114, z = -2371.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 111002, gadget_id = 70900380, pos = { x = -6348.038, y = 205.197, z = -2371.069 }, rot = { x = 358.762, y = 95.770, z = 359.584 }, level = 27, area_id = 18 },
	{ config_id = 111003, gadget_id = 70900380, pos = { x = -6335.771, y = 210.080, z = -2372.340 }, rot = { x = 358.762, y = 95.770, z = 359.584 }, level = 27, area_id = 18 },
	{ config_id = 111004, gadget_id = 70900380, pos = { x = -6324.123, y = 214.202, z = -2373.571 }, rot = { x = 358.762, y = 95.770, z = 359.584 }, level = 27, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111005, name = "GADGET_STATE_CHANGE_111005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111005", action = "action_EVENT_GADGET_STATE_CHANGE_111005", trigger_count = 0 },
	{ config_id = 1111006, name = "GADGET_STATE_CHANGE_111006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111006", action = "action_EVENT_GADGET_STATE_CHANGE_111006", trigger_count = 0 }
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
		gadgets = { 111001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_111005", "GADGET_STATE_CHANGE_111006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 111002, 111003, 111004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_111005(context, evt)
	if 111001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225111, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_111006(context, evt)
	if 111001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225111, 2)
	
	return 0
end

require "V2_0/ElectricCore"