-- 基础信息
local base_info = {
	group_id = 133222319
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
	{ config_id = 319001, gadget_id = 70330064, pos = { x = -4690.915, y = 447.159, z = -4187.493 }, rot = { x = 356.385, y = 197.253, z = 358.936 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 319002, gadget_id = 70900380, pos = { x = -4693.754, y = 451.187, z = -4190.195 }, rot = { x = 359.580, y = 296.998, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 319003, gadget_id = 70900380, pos = { x = -4700.917, y = 453.437, z = -4197.703 }, rot = { x = 359.580, y = 296.998, z = 1.124 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1319005, name = "GADGET_STATE_CHANGE_319005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319005", action = "action_EVENT_GADGET_STATE_CHANGE_319005", trigger_count = 0 },
	{ config_id = 1319006, name = "GADGET_STATE_CHANGE_319006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_319006", action = "action_EVENT_GADGET_STATE_CHANGE_319006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 319004, gadget_id = 70900380, pos = { x = -4709.625, y = 452.540, z = -4194.258 }, rot = { x = 359.580, y = 296.998, z = 1.124 }, level = 30, area_id = 14 }
	}
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
		gadgets = { 319001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_319005", "GADGET_STATE_CHANGE_319006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 319002, 319003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_319005(context, evt)
	if 319001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222319, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_319006(context, evt)
	if 319001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_319006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222319, 3)
	
	return 0
end

require "V2_0/ElectricCore"