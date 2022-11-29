-- 基础信息
local base_info = {
	group_id = 133210413
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
	{ config_id = 413001, gadget_id = 70330064, pos = { x = -3919.526, y = 129.556, z = -1031.356 }, rot = { x = 354.566, y = 0.062, z = 358.697 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 413002, gadget_id = 70900380, pos = { x = -3905.616, y = 147.519, z = -1027.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 413007, gadget_id = 70900380, pos = { x = -3914.537, y = 137.412, z = -1029.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 413008, gadget_id = 70900380, pos = { x = -3872.665, y = 158.180, z = -1043.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 413009, gadget_id = 70900380, pos = { x = -3856.480, y = 160.525, z = -1043.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1413005, name = "GADGET_STATE_CHANGE_413005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_413005", action = "action_EVENT_GADGET_STATE_CHANGE_413005", trigger_count = 0 },
	{ config_id = 1413006, name = "GADGET_STATE_CHANGE_413006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_413006", action = "action_EVENT_GADGET_STATE_CHANGE_413006", trigger_count = 0 }
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
		gadgets = { 413001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_413005", "GADGET_STATE_CHANGE_413006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 413002, 413007, 413008, 413009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_413005(context, evt)
	if 413001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_413005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210413, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_413006(context, evt)
	if 413001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_413006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210413, 2)
	
	return 0
end

require "V2_0/ElectricCore"