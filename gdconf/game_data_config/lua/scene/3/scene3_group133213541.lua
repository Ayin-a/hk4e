-- 基础信息
local base_info = {
	group_id = 133213541
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
	{ config_id = 541001, gadget_id = 70330064, pos = { x = -3606.459, y = 235.554, z = -3037.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 12 },
	{ config_id = 541002, gadget_id = 70900380, pos = { x = -3615.908, y = 239.739, z = -3033.850 }, rot = { x = 0.897, y = 303.804, z = 0.949 }, level = 27, area_id = 12 },
	{ config_id = 541003, gadget_id = 70900380, pos = { x = -3623.058, y = 248.901, z = -3029.249 }, rot = { x = 0.897, y = 303.804, z = 0.949 }, level = 27, area_id = 12 },
	{ config_id = 541004, gadget_id = 70900380, pos = { x = -3629.214, y = 258.877, z = -3025.299 }, rot = { x = 0.897, y = 303.804, z = 0.949 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1541005, name = "GADGET_STATE_CHANGE_541005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_541005", action = "action_EVENT_GADGET_STATE_CHANGE_541005", trigger_count = 0 },
	{ config_id = 1541006, name = "GADGET_STATE_CHANGE_541006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_541006", action = "action_EVENT_GADGET_STATE_CHANGE_541006", trigger_count = 0 }
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
		gadgets = { 541001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_541005", "GADGET_STATE_CHANGE_541006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 541002, 541003, 541004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_541005(context, evt)
	if 541001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_541005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213541, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_541006(context, evt)
	if 541001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_541006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213541, 2)
	
	return 0
end

require "V2_0/ElectricCore"