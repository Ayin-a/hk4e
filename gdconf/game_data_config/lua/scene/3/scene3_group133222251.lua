-- 基础信息
local base_info = {
	group_id = 133222251
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
	{ config_id = 251001, gadget_id = 70330064, pos = { x = -4278.375, y = 212.685, z = -4252.595 }, rot = { x = 8.489, y = 64.291, z = 14.482 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 251002, gadget_id = 70900380, pos = { x = -4289.921, y = 222.794, z = -4254.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1251005, name = "GADGET_STATE_CHANGE_251005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_251005", action = "action_EVENT_GADGET_STATE_CHANGE_251005", trigger_count = 0 },
	{ config_id = 1251006, name = "GADGET_STATE_CHANGE_251006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_251006", action = "action_EVENT_GADGET_STATE_CHANGE_251006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 251003, gadget_id = 70900380, pos = { x = -4307.298, y = 226.380, z = -4237.670 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 251004, gadget_id = 70900380, pos = { x = -4307.067, y = 230.419, z = -4231.101 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 }
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
		gadgets = { 251001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_251005", "GADGET_STATE_CHANGE_251006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 251002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_251005(context, evt)
	if 251001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_251005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222251, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_251006(context, evt)
	if 251001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_251006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222251, 2)
	
	return 0
end

require "V2_0/ElectricCore"