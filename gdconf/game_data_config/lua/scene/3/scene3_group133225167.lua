-- 基础信息
local base_info = {
	group_id = 133225167
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
	{ config_id = 167001, gadget_id = 70330064, pos = { x = -6383.114, y = 274.658, z = -2690.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 167002, gadget_id = 70900380, pos = { x = -6378.351, y = 285.535, z = -2700.491 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 167003, gadget_id = 70900380, pos = { x = -6372.348, y = 296.574, z = -2710.678 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 167004, gadget_id = 70900380, pos = { x = -6367.963, y = 304.837, z = -2720.966 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 },
	{ config_id = 167007, gadget_id = 70900380, pos = { x = -6356.098, y = 308.997, z = -2731.250 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 },
	{ config_id = 167008, gadget_id = 70900380, pos = { x = -6339.045, y = 306.941, z = -2739.916 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1167005, name = "GADGET_STATE_CHANGE_167005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167005", action = "action_EVENT_GADGET_STATE_CHANGE_167005", trigger_count = 0 },
	{ config_id = 1167006, name = "GADGET_STATE_CHANGE_167006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167006", action = "action_EVENT_GADGET_STATE_CHANGE_167006", trigger_count = 0 }
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
		gadgets = { 167001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_167005", "GADGET_STATE_CHANGE_167006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 167002, 167003, 167004, 167007, 167008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_167005(context, evt)
	if 167001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225167, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_167006(context, evt)
	if 167001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_167006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225167, 2)
	
	return 0
end

require "V2_0/ElectricCore"