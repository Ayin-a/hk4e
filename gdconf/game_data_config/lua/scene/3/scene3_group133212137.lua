-- 基础信息
local base_info = {
	group_id = 133212137
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
	{ config_id = 137001, gadget_id = 70900380, pos = { x = -3488.685, y = 205.146, z = -2677.178 }, rot = { x = 0.000, y = 121.165, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 137002, gadget_id = 70900380, pos = { x = -3488.685, y = 220.405, z = -2677.178 }, rot = { x = 0.000, y = 121.165, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 137003, gadget_id = 70330064, pos = { x = -3491.167, y = 200.319, z = -2678.882 }, rot = { x = 0.000, y = 121.165, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 137004, gadget_id = 70900380, pos = { x = -3487.851, y = 227.278, z = -2671.854 }, rot = { x = 0.000, y = 121.165, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 137005, gadget_id = 70900380, pos = { x = -3487.241, y = 233.102, z = -2666.687 }, rot = { x = 0.000, y = 121.165, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 137008, gadget_id = 70900380, pos = { x = -3487.028, y = 238.887, z = -2660.490 }, rot = { x = 0.000, y = 121.165, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 137009, gadget_id = 70900380, pos = { x = -3486.680, y = 243.422, z = -2654.514 }, rot = { x = 0.000, y = 121.165, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1137006, name = "GADGET_STATE_CHANGE_137006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_137006", action = "action_EVENT_GADGET_STATE_CHANGE_137006", trigger_count = 0 },
	{ config_id = 1137007, name = "GADGET_STATE_CHANGE_137007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_137007", action = "action_EVENT_GADGET_STATE_CHANGE_137007", trigger_count = 0 }
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
		gadgets = { 137003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_137006", "GADGET_STATE_CHANGE_137007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 137001, 137002, 137004, 137005, 137008, 137009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_137006(context, evt)
	if 137003 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_137006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212137, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_137007(context, evt)
	if 137003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_137007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212137, 2)
	
	return 0
end

require "V2_0/ElectricCore"