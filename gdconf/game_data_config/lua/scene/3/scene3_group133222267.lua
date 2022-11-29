-- 基础信息
local base_info = {
	group_id = 133222267
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
	{ config_id = 267001, gadget_id = 70330064, pos = { x = -4668.124, y = 99.935, z = -4257.990 }, rot = { x = 0.000, y = 72.362, z = 0.000 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 267002, gadget_id = 70900380, pos = { x = -4664.298, y = 110.575, z = -4258.118 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 267003, gadget_id = 70900380, pos = { x = -4664.060, y = 119.876, z = -4258.426 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 267004, gadget_id = 70900380, pos = { x = -4664.718, y = 129.971, z = -4255.157 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 267007, gadget_id = 70900380, pos = { x = -4664.882, y = 140.625, z = -4252.195 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1267005, name = "GADGET_STATE_CHANGE_267005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_267005", action = "action_EVENT_GADGET_STATE_CHANGE_267005", trigger_count = 0 },
	{ config_id = 1267006, name = "GADGET_STATE_CHANGE_267006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_267006", action = "action_EVENT_GADGET_STATE_CHANGE_267006", trigger_count = 0 }
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
		gadgets = { 267001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_267005", "GADGET_STATE_CHANGE_267006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 267002, 267003, 267004, 267007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_267005(context, evt)
	if 267001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_267005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222267, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_267006(context, evt)
	if 267001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_267006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222267, 2)
	
	return 0
end

require "V2_0/ElectricCore"