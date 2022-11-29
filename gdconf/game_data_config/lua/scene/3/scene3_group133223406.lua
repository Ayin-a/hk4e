-- 基础信息
local base_info = {
	group_id = 133223406
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
	{ config_id = 406001, gadget_id = 70330064, pos = { x = -5958.379, y = 237.938, z = -2603.585 }, rot = { x = 346.634, y = 4.149, z = 352.463 }, level = 33, interact_id = 35, area_id = 18 },
	{ config_id = 406002, gadget_id = 70900380, pos = { x = -5953.655, y = 246.967, z = -2602.665 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 },
	{ config_id = 406003, gadget_id = 70900380, pos = { x = -5951.446, y = 257.146, z = -2600.715 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 },
	{ config_id = 406006, gadget_id = 70900380, pos = { x = -5951.027, y = 270.738, z = -2599.936 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 },
	{ config_id = 406007, gadget_id = 70900380, pos = { x = -5950.099, y = 281.843, z = -2599.936 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1406004, name = "GADGET_STATE_CHANGE_406004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_406004", action = "action_EVENT_GADGET_STATE_CHANGE_406004", trigger_count = 0 },
	{ config_id = 1406005, name = "GADGET_STATE_CHANGE_406005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_406005", action = "action_EVENT_GADGET_STATE_CHANGE_406005", trigger_count = 0 }
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
		gadgets = { 406001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_406004", "GADGET_STATE_CHANGE_406005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 406002, 406003, 406006, 406007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_406004(context, evt)
	if 406001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_406004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223406, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_406005(context, evt)
	if 406001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_406005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133223406, 2)
	
	return 0
end

require "V2_0/ElectricCore"