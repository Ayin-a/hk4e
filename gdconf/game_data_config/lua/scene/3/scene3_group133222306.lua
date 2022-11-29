-- 基础信息
local base_info = {
	group_id = 133222306
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
	{ config_id = 306001, gadget_id = 70330064, pos = { x = -4687.379, y = 447.058, z = -4185.076 }, rot = { x = 356.377, y = 240.903, z = 1.037 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 306002, gadget_id = 70900380, pos = { x = -4694.486, y = 452.317, z = -4181.492 }, rot = { x = 359.580, y = 340.648, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 306004, gadget_id = 70900380, pos = { x = -4700.689, y = 460.000, z = -4183.198 }, rot = { x = 359.580, y = 340.648, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 306005, gadget_id = 70900380, pos = { x = -4703.279, y = 469.743, z = -4189.173 }, rot = { x = 359.580, y = 340.648, z = 1.124 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1306006, name = "GADGET_STATE_CHANGE_306006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_306006", action = "action_EVENT_GADGET_STATE_CHANGE_306006", trigger_count = 0 },
	{ config_id = 1306007, name = "GADGET_STATE_CHANGE_306007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_306007", action = "action_EVENT_GADGET_STATE_CHANGE_306007", trigger_count = 0 }
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
		gadgets = { 306001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_306006", "GADGET_STATE_CHANGE_306007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 306002, 306004, 306005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_306006(context, evt)
	if 306001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_306006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222306, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_306007(context, evt)
	if 306001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_306007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222306, 3)
	
	return 0
end

require "V2_0/ElectricCore"