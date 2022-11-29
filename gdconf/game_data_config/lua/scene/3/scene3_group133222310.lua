-- 基础信息
local base_info = {
	group_id = 133222310
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
	{ config_id = 310001, gadget_id = 70330064, pos = { x = -4711.791, y = 444.046, z = -4131.849 }, rot = { x = 20.884, y = 142.242, z = 344.391 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 310002, gadget_id = 70900380, pos = { x = -4712.506, y = 448.176, z = -4136.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 310003, gadget_id = 70900380, pos = { x = -4709.652, y = 456.216, z = -4148.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 310004, gadget_id = 70900380, pos = { x = -4708.890, y = 461.588, z = -4160.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 310005, gadget_id = 70900380, pos = { x = -4709.049, y = 468.190, z = -4173.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 310008, gadget_id = 70900380, pos = { x = -4704.085, y = 474.129, z = -4185.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1310006, name = "GADGET_STATE_CHANGE_310006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310006", action = "action_EVENT_GADGET_STATE_CHANGE_310006", trigger_count = 0 },
	{ config_id = 1310007, name = "GADGET_STATE_CHANGE_310007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_310007", action = "action_EVENT_GADGET_STATE_CHANGE_310007", trigger_count = 0 }
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
		gadgets = { 310001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_310006", "GADGET_STATE_CHANGE_310007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 310002, 310003, 310004, 310005, 310008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_310006(context, evt)
	if 310001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_310006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222310, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_310007(context, evt)
	if 310001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_310007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222310, 3)
	
	return 0
end

require "V2_0/ElectricCore"