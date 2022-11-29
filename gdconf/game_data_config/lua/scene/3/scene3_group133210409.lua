-- 基础信息
local base_info = {
	group_id = 133210409
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
	{ config_id = 409001, gadget_id = 70330064, pos = { x = -3569.762, y = 206.963, z = -883.406 }, rot = { x = 4.763, y = 359.710, z = 348.526 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 409007, gadget_id = 70900380, pos = { x = -3498.831, y = 228.056, z = -849.525 }, rot = { x = 0.000, y = 259.963, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 409008, gadget_id = 70900380, pos = { x = -3512.775, y = 223.394, z = -860.153 }, rot = { x = 0.000, y = 215.283, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 409009, gadget_id = 70900380, pos = { x = -3527.864, y = 218.155, z = -869.560 }, rot = { x = 0.000, y = 80.270, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 409010, gadget_id = 70900380, pos = { x = -3543.605, y = 214.100, z = -877.026 }, rot = { x = 0.000, y = 202.293, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 409011, gadget_id = 70900380, pos = { x = -3558.911, y = 209.698, z = -883.395 }, rot = { x = 0.000, y = 109.080, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1409005, name = "GADGET_STATE_CHANGE_409005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_409005", action = "action_EVENT_GADGET_STATE_CHANGE_409005", trigger_count = 0 },
	{ config_id = 1409006, name = "GADGET_STATE_CHANGE_409006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_409006", action = "action_EVENT_GADGET_STATE_CHANGE_409006", trigger_count = 0 }
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
		gadgets = { 409001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_409005", "GADGET_STATE_CHANGE_409006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 409007, 409008, 409009, 409010, 409011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_409005(context, evt)
	if 409001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_409005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210409, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_409006(context, evt)
	if 409001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_409006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210409, 2)
	
	return 0
end

require "V2_0/ElectricCore"