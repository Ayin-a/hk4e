-- 基础信息
local base_info = {
	group_id = 133213540
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
	{ config_id = 540001, gadget_id = 70330064, pos = { x = -3522.171, y = 202.491, z = -3416.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 540002, gadget_id = 70900380, pos = { x = -3530.379, y = 210.689, z = -3416.146 }, rot = { x = 1.306, y = 257.163, z = -0.001 }, level = 27, area_id = 12 },
	{ config_id = 540003, gadget_id = 70900380, pos = { x = -3538.730, y = 219.791, z = -3418.049 }, rot = { x = 1.306, y = 257.163, z = -0.001 }, level = 27, area_id = 12 },
	{ config_id = 540004, gadget_id = 70900380, pos = { x = -3545.934, y = 229.716, z = -3419.665 }, rot = { x = 1.306, y = 257.163, z = -0.001 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1540005, name = "GADGET_STATE_CHANGE_540005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_540005", action = "action_EVENT_GADGET_STATE_CHANGE_540005", trigger_count = 0 },
	{ config_id = 1540006, name = "GADGET_STATE_CHANGE_540006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_540006", action = "action_EVENT_GADGET_STATE_CHANGE_540006", trigger_count = 0 }
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
		gadgets = { 540001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_540005", "GADGET_STATE_CHANGE_540006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 540002, 540003, 540004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_540005(context, evt)
	if 540001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_540005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213540, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_540006(context, evt)
	if 540001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_540006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213540, 2)
	
	return 0
end

require "V2_0/ElectricCore"