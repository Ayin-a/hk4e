-- 基础信息
local base_info = {
	group_id = 133223453
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
	{ config_id = 453001, gadget_id = 70330064, pos = { x = -5999.047, y = 235.566, z = -2540.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 453002, gadget_id = 70900380, pos = { x = -5995.301, y = 238.773, z = -2545.092 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 453003, gadget_id = 70900380, pos = { x = -5990.998, y = 240.412, z = -2555.347 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 453004, gadget_id = 70900380, pos = { x = -5990.566, y = 241.873, z = -2567.844 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1453005, name = "GADGET_STATE_CHANGE_453005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_453005", action = "action_EVENT_GADGET_STATE_CHANGE_453005", trigger_count = 0 },
	{ config_id = 1453006, name = "GADGET_STATE_CHANGE_453006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_453006", action = "action_EVENT_GADGET_STATE_CHANGE_453006", trigger_count = 0 }
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
		gadgets = { 453001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_453005", "GADGET_STATE_CHANGE_453006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 453002, 453003, 453004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_453005(context, evt)
	if 453001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_453005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223453, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_453006(context, evt)
	if 453001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_453006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223453, 2)
	
	return 0
end

require "V2_0/ElectricCore"