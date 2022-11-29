-- 基础信息
local base_info = {
	group_id = 133222228
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
	{ config_id = 228001, gadget_id = 70330064, pos = { x = -4691.402, y = 479.533, z = -4229.107 }, rot = { x = 3.514, y = 162.250, z = 2.119 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 228002, gadget_id = 70900380, pos = { x = -4693.752, y = 506.153, z = -4221.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 228003, gadget_id = 70900380, pos = { x = -4692.242, y = 483.367, z = -4226.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 228004, gadget_id = 70900380, pos = { x = -4693.679, y = 495.025, z = -4225.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 228005, gadget_id = 70900380, pos = { x = -4692.117, y = 515.274, z = -4217.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1228006, name = "GADGET_STATE_CHANGE_228006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228006", action = "action_EVENT_GADGET_STATE_CHANGE_228006", trigger_count = 0 },
	{ config_id = 1228007, name = "GADGET_STATE_CHANGE_228007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228007", action = "action_EVENT_GADGET_STATE_CHANGE_228007", trigger_count = 0 }
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
		gadgets = { 228001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_228006", "GADGET_STATE_CHANGE_228007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 228002, 228003, 228004, 228005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_228006(context, evt)
	if 228001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222228, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_228007(context, evt)
	if 228001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222228, 3)
	
	return 0
end

require "V2_0/ElectricCore"