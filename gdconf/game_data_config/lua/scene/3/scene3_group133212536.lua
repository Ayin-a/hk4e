-- 基础信息
local base_info = {
	group_id = 133212536
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
	{ config_id = 536001, gadget_id = 70330064, pos = { x = -4299.172, y = 201.955, z = -2543.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 536002, gadget_id = 70900380, pos = { x = -4291.252, y = 205.098, z = -2547.182 }, rot = { x = 0.000, y = 119.913, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 536003, gadget_id = 70900380, pos = { x = -4278.250, y = 206.088, z = -2554.662 }, rot = { x = 0.000, y = 119.913, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 536004, gadget_id = 70900380, pos = { x = -4265.249, y = 207.271, z = -2562.143 }, rot = { x = 0.000, y = 119.913, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 536007, gadget_id = 70900380, pos = { x = -4252.247, y = 208.182, z = -2569.623 }, rot = { x = 0.000, y = 119.913, z = 0.000 }, level = 33, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1536005, name = "GADGET_STATE_CHANGE_536005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_536005", action = "action_EVENT_GADGET_STATE_CHANGE_536005", trigger_count = 0 },
	{ config_id = 1536006, name = "GADGET_STATE_CHANGE_536006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_536006", action = "action_EVENT_GADGET_STATE_CHANGE_536006", trigger_count = 0 }
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
		gadgets = { 536001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_536005", "GADGET_STATE_CHANGE_536006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 536002, 536003, 536004, 536007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_536005(context, evt)
	if 536001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_536005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212536, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_536006(context, evt)
	if 536001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_536006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212536, 2)
	
	return 0
end

require "V2_0/ElectricCore"