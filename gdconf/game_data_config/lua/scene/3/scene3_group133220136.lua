-- 基础信息
local base_info = {
	group_id = 133220136
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
	{ config_id = 136001, gadget_id = 70330064, pos = { x = -3015.238, y = 201.915, z = -3969.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 136002, gadget_id = 70900380, pos = { x = -3013.456, y = 206.138, z = -3961.232 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 136003, gadget_id = 70900380, pos = { x = -3016.105, y = 209.714, z = -3951.696 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 136004, gadget_id = 70900380, pos = { x = -3013.951, y = 214.290, z = -3942.730 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 136007, gadget_id = 70900380, pos = { x = -3007.194, y = 209.900, z = -3954.153 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 },
	{ config_id = 136008, gadget_id = 70900380, pos = { x = -3004.687, y = 214.483, z = -3945.382 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1136005, name = "GADGET_STATE_CHANGE_136005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136005", action = "action_EVENT_GADGET_STATE_CHANGE_136005", trigger_count = 0 },
	{ config_id = 1136006, name = "GADGET_STATE_CHANGE_136006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_136006", action = "action_EVENT_GADGET_STATE_CHANGE_136006", trigger_count = 0 }
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
		gadgets = { 136001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_136005", "GADGET_STATE_CHANGE_136006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 136002, 136003, 136004, 136007, 136008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_136005(context, evt)
	if 136001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220136, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_136006(context, evt)
	if 136001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_136006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220136, 2)
	
	return 0
end

require "V2_0/ElectricCore"