-- 基础信息
local base_info = {
	group_id = 133222217
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
	{ config_id = 217001, gadget_id = 70330064, pos = { x = -4551.376, y = 371.466, z = -4191.795 }, rot = { x = 356.523, y = 262.741, z = 359.916 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 217002, gadget_id = 70900380, pos = { x = -4560.846, y = 374.996, z = -4190.059 }, rot = { x = 1.978, y = 256.131, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 217003, gadget_id = 70900380, pos = { x = -4572.606, y = 383.334, z = -4185.976 }, rot = { x = 1.978, y = 256.131, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 217004, gadget_id = 70900380, pos = { x = -4584.636, y = 390.662, z = -4173.033 }, rot = { x = 1.978, y = 256.131, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 217005, gadget_id = 70900380, pos = { x = -4585.509, y = 401.283, z = -4163.669 }, rot = { x = 1.978, y = 256.131, z = 358.554 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1217006, name = "GADGET_STATE_CHANGE_217006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217006", action = "action_EVENT_GADGET_STATE_CHANGE_217006", trigger_count = 0 },
	{ config_id = 1217007, name = "GADGET_STATE_CHANGE_217007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217007", action = "action_EVENT_GADGET_STATE_CHANGE_217007", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 217001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_217006", "GADGET_STATE_CHANGE_217007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 217002, 217003, 217004, 217005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	if 217001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222217, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217007(context, evt)
	if 217001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222217, 3)
	
	return 0
end

require "V2_0/ElectricCore"