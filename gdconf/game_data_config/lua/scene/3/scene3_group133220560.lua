-- 基础信息
local base_info = {
	group_id = 133220560
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
	{ config_id = 560001, gadget_id = 70330064, pos = { x = -2869.552, y = 199.880, z = -4069.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 560002, gadget_id = 70900380, pos = { x = -2877.443, y = 201.945, z = -4067.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 560003, gadget_id = 70900380, pos = { x = -2889.692, y = 202.568, z = -4065.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 560004, gadget_id = 70900380, pos = { x = -2901.716, y = 203.515, z = -4062.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1560005, name = "GADGET_STATE_CHANGE_560005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_560005", action = "action_EVENT_GADGET_STATE_CHANGE_560005", trigger_count = 0 },
	{ config_id = 1560006, name = "GADGET_STATE_CHANGE_560006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_560006", action = "action_EVENT_GADGET_STATE_CHANGE_560006", trigger_count = 0 }
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
		gadgets = { 560001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_560005", "GADGET_STATE_CHANGE_560006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 560002, 560003, 560004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_560005(context, evt)
	if 560001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_560005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220560, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_560006(context, evt)
	if 560001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_560006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220560, 2)
	
	return 0
end

require "V2_0/ElectricCore"