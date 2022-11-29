-- 基础信息
local base_info = {
	group_id = 133212128
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
	{ config_id = 128001, gadget_id = 70900380, pos = { x = -3694.461, y = 276.133, z = -2325.556 }, rot = { x = 355.582, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 128002, gadget_id = 70900380, pos = { x = -3704.987, y = 282.316, z = -2326.421 }, rot = { x = 355.582, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 128003, gadget_id = 70900380, pos = { x = -3718.242, y = 289.024, z = -2328.147 }, rot = { x = 355.582, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 128004, gadget_id = 70900380, pos = { x = -3727.826, y = 294.917, z = -2329.409 }, rot = { x = 355.582, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 128005, gadget_id = 70330064, pos = { x = -3687.895, y = 270.739, z = -2323.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1128006, name = "GADGET_STATE_CHANGE_128006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_128006", action = "action_EVENT_GADGET_STATE_CHANGE_128006", trigger_count = 0 },
	{ config_id = 1128007, name = "GADGET_STATE_CHANGE_128007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_128007", action = "action_EVENT_GADGET_STATE_CHANGE_128007", trigger_count = 0 }
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
		gadgets = { 128005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_128006", "GADGET_STATE_CHANGE_128007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 128001, 128002, 128003, 128004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_128006(context, evt)
	if 128005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_128006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212128, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_128007(context, evt)
	if 128005 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_128007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212128, 2)
	
	return 0
end

require "V2_0/ElectricCore"