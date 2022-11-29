-- 基础信息
local base_info = {
	group_id = 133222321
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
	{ config_id = 321001, gadget_id = 70330064, pos = { x = -4705.874, y = 446.975, z = -4204.052 }, rot = { x = 356.385, y = 197.253, z = 358.936 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 321002, gadget_id = 70900380, pos = { x = -4703.247, y = 452.181, z = -4202.644 }, rot = { x = 359.580, y = 296.998, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 321003, gadget_id = 70900380, pos = { x = -4700.886, y = 463.461, z = -4202.438 }, rot = { x = 359.580, y = 296.998, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 321004, gadget_id = 70900380, pos = { x = -4699.774, y = 474.670, z = -4201.573 }, rot = { x = 359.580, y = 296.998, z = 1.124 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1321005, name = "GADGET_STATE_CHANGE_321005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_321005", action = "action_EVENT_GADGET_STATE_CHANGE_321005", trigger_count = 0 },
	{ config_id = 1321006, name = "GADGET_STATE_CHANGE_321006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_321006", action = "action_EVENT_GADGET_STATE_CHANGE_321006", trigger_count = 0 }
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
		gadgets = { 321001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_321005", "GADGET_STATE_CHANGE_321006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 321002, 321003, 321004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_321005(context, evt)
	if 321001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_321005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222321, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_321006(context, evt)
	if 321001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_321006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222321, 3)
	
	return 0
end

require "V2_0/ElectricCore"