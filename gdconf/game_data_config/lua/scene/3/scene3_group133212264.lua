-- 基础信息
local base_info = {
	group_id = 133212264
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
	{ config_id = 264001, gadget_id = 70330064, pos = { x = -3756.528, y = 270.447, z = -2333.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 264002, gadget_id = 70900380, pos = { x = -3752.550, y = 276.038, z = -2332.364 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 13 },
	{ config_id = 264003, gadget_id = 70900380, pos = { x = -3742.296, y = 281.649, z = -2331.994 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 13 },
	{ config_id = 264004, gadget_id = 70900380, pos = { x = -3733.718, y = 286.724, z = -2331.598 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1264005, name = "GADGET_STATE_CHANGE_264005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264005", action = "action_EVENT_GADGET_STATE_CHANGE_264005", trigger_count = 0 },
	{ config_id = 1264006, name = "GADGET_STATE_CHANGE_264006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_264006", action = "action_EVENT_GADGET_STATE_CHANGE_264006", trigger_count = 0 }
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
		gadgets = { 264001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_264005", "GADGET_STATE_CHANGE_264006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 264002, 264003, 264004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_264005(context, evt)
	if 264001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212264, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_264006(context, evt)
	if 264001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_264006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212264, 2)
	
	return 0
end

require "V2_0/ElectricCore"