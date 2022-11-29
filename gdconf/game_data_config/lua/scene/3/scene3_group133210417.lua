-- 基础信息
local base_info = {
	group_id = 133210417
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
	{ config_id = 417001, gadget_id = 70330064, pos = { x = -3885.498, y = 210.189, z = -491.965 }, rot = { x = 8.154, y = 1.296, z = 11.801 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 417002, gadget_id = 70900380, pos = { x = -3873.906, y = 217.910, z = -467.537 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1417005, name = "GADGET_STATE_CHANGE_417005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_417005", action = "action_EVENT_GADGET_STATE_CHANGE_417005", trigger_count = 0 },
	{ config_id = 1417006, name = "GADGET_STATE_CHANGE_417006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_417006", action = "action_EVENT_GADGET_STATE_CHANGE_417006", trigger_count = 0 }
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
		gadgets = { 417001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_417005", "GADGET_STATE_CHANGE_417006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 417002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_417005(context, evt)
	if 417001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_417005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210417, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_417006(context, evt)
	if 417001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_417006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210417, 2)
	
	return 0
end

require "V2_0/ElectricCore"