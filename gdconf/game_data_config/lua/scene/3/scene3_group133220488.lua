-- 基础信息
local base_info = {
	group_id = 133220488
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
	{ config_id = 488001, gadget_id = 70330064, pos = { x = -2149.183, y = 165.515, z = -4486.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 488002, gadget_id = 70900380, pos = { x = -2140.559, y = 167.800, z = -4489.844 }, rot = { x = 358.705, y = 69.764, z = 0.169 }, level = 27, area_id = 11 },
	{ config_id = 488003, gadget_id = 70900380, pos = { x = -2131.229, y = 169.755, z = -4486.400 }, rot = { x = 358.705, y = 69.764, z = 0.169 }, level = 27, area_id = 11 },
	{ config_id = 488004, gadget_id = 70900380, pos = { x = -2121.635, y = 171.503, z = -4482.857 }, rot = { x = 358.705, y = 69.764, z = 0.169 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1488005, name = "GADGET_STATE_CHANGE_488005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_488005", action = "action_EVENT_GADGET_STATE_CHANGE_488005", trigger_count = 0 },
	{ config_id = 1488006, name = "GADGET_STATE_CHANGE_488006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_488006", action = "action_EVENT_GADGET_STATE_CHANGE_488006", trigger_count = 0 }
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
		gadgets = { 488001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_488005", "GADGET_STATE_CHANGE_488006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 488002, 488003, 488004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_488005(context, evt)
	if 488001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_488005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220488, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_488006(context, evt)
	if 488001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_488006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220488, 2)
	
	return 0
end

require "V2_0/ElectricCore"