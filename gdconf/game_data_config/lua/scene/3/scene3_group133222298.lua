-- 基础信息
local base_info = {
	group_id = 133222298
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
	{ config_id = 298001, gadget_id = 70330064, pos = { x = -4525.690, y = 205.093, z = -4487.729 }, rot = { x = 6.074, y = 0.403, z = 22.796 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 298002, gadget_id = 70900380, pos = { x = -4523.617, y = 215.143, z = -4492.484 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 298003, gadget_id = 70900380, pos = { x = -4513.311, y = 219.433, z = -4501.403 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 298004, gadget_id = 70900380, pos = { x = -4502.204, y = 216.098, z = -4505.279 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1298005, name = "GADGET_STATE_CHANGE_298005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_298005", action = "action_EVENT_GADGET_STATE_CHANGE_298005", trigger_count = 0 },
	{ config_id = 1298006, name = "GADGET_STATE_CHANGE_298006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_298006", action = "action_EVENT_GADGET_STATE_CHANGE_298006", trigger_count = 0 }
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
		gadgets = { 298001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_298005", "GADGET_STATE_CHANGE_298006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 298002, 298003, 298004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_298005(context, evt)
	if 298001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_298005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222298, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_298006(context, evt)
	if 298001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_298006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222298, 2)
	
	return 0
end

require "V2_0/ElectricCore"