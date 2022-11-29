-- 基础信息
local base_info = {
	group_id = 133222304
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
	{ config_id = 304001, gadget_id = 70330064, pos = { x = -4638.207, y = 438.632, z = -4202.797 }, rot = { x = 356.385, y = 240.903, z = 358.936 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 304002, gadget_id = 70900380, pos = { x = -4643.438, y = 443.787, z = -4208.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 304003, gadget_id = 70900380, pos = { x = -4650.038, y = 447.723, z = -4216.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 304004, gadget_id = 70900380, pos = { x = -4660.000, y = 449.313, z = -4222.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 304005, gadget_id = 70900380, pos = { x = -4652.950, y = 471.046, z = -4204.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1304006, name = "GADGET_STATE_CHANGE_304006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304006", action = "action_EVENT_GADGET_STATE_CHANGE_304006", trigger_count = 0 },
	{ config_id = 1304007, name = "GADGET_STATE_CHANGE_304007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304007", action = "action_EVENT_GADGET_STATE_CHANGE_304007", trigger_count = 0 }
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
		gadgets = { 304001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_304006", "GADGET_STATE_CHANGE_304007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 304002, 304003, 304004, 304005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_304006(context, evt)
	if 304001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222304, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304007(context, evt)
	if 304001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222304, 3)
	
	return 0
end

require "V2_0/ElectricCore"