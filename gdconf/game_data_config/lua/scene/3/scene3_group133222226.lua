-- 基础信息
local base_info = {
	group_id = 133222226
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
	{ config_id = 226001, gadget_id = 70330064, pos = { x = -4701.317, y = 470.212, z = -4194.772 }, rot = { x = 11.778, y = 243.700, z = 357.923 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 226002, gadget_id = 70900380, pos = { x = -4711.933, y = 493.786, z = -4192.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 226003, gadget_id = 70900380, pos = { x = -4703.202, y = 473.864, z = -4194.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 226004, gadget_id = 70900380, pos = { x = -4706.250, y = 482.095, z = -4194.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 226005, gadget_id = 70900380, pos = { x = -4716.847, y = 503.855, z = -4191.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1226006, name = "GADGET_STATE_CHANGE_226006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_226006", action = "action_EVENT_GADGET_STATE_CHANGE_226006", trigger_count = 0 },
	{ config_id = 1226007, name = "GADGET_STATE_CHANGE_226007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_226007", action = "action_EVENT_GADGET_STATE_CHANGE_226007", trigger_count = 0 }
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
		gadgets = { 226001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_226006", "GADGET_STATE_CHANGE_226007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 226002, 226003, 226004, 226005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_226006(context, evt)
	if 226001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_226006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222226, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_226007(context, evt)
	if 226001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_226007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222226, 3)
	
	return 0
end

require "V2_0/ElectricCore"