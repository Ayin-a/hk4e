-- 基础信息
local base_info = {
	group_id = 133222252
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
	{ config_id = 252001, gadget_id = 70330064, pos = { x = -4309.639, y = 226.837, z = -4211.854 }, rot = { x = 354.544, y = 1.317, z = 344.485 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 252002, gadget_id = 70900380, pos = { x = -4314.123, y = 235.424, z = -4212.245 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 252003, gadget_id = 70900380, pos = { x = -4323.858, y = 244.265, z = -4215.660 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1252005, name = "GADGET_STATE_CHANGE_252005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_252005", action = "action_EVENT_GADGET_STATE_CHANGE_252005", trigger_count = 0 },
	{ config_id = 1252006, name = "GADGET_STATE_CHANGE_252006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_252006", action = "action_EVENT_GADGET_STATE_CHANGE_252006", trigger_count = 0 }
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
		gadgets = { 252001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_252005", "GADGET_STATE_CHANGE_252006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 252002, 252003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_252005(context, evt)
	if 252001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_252005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222252, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_252006(context, evt)
	if 252001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_252006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222252, 2)
	
	return 0
end

require "V2_0/ElectricCore"