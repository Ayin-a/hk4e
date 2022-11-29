-- 基础信息
local base_info = {
	group_id = 133222322
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
	{ config_id = 322001, gadget_id = 70330064, pos = { x = -4785.087, y = 512.259, z = -4255.154 }, rot = { x = 356.445, y = 242.881, z = 4.410 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 322002, gadget_id = 70900380, pos = { x = -4778.343, y = 516.253, z = -4255.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 322003, gadget_id = 70900380, pos = { x = -4764.921, y = 519.111, z = -4256.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 322006, gadget_id = 70900380, pos = { x = -4750.184, y = 521.468, z = -4256.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1322004, name = "GADGET_STATE_CHANGE_322004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_322004", action = "action_EVENT_GADGET_STATE_CHANGE_322004", trigger_count = 0 },
	{ config_id = 1322005, name = "GADGET_STATE_CHANGE_322005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_322005", action = "action_EVENT_GADGET_STATE_CHANGE_322005", trigger_count = 0 }
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
		gadgets = { 322001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_322004", "GADGET_STATE_CHANGE_322005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 322002, 322003, 322006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_322004(context, evt)
	if 322001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_322004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222322, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_322005(context, evt)
	if 322001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_322005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222322, 2)
	
	return 0
end

require "V2_0/ElectricCore"