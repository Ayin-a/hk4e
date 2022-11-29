-- 基础信息
local base_info = {
	group_id = 133210402
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
	{ config_id = 402001, gadget_id = 70330064, pos = { x = -4001.006, y = 196.832, z = -882.743 }, rot = { x = 0.385, y = 359.974, z = 352.286 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 402007, gadget_id = 70900380, pos = { x = -3998.993, y = 196.279, z = -895.234 }, rot = { x = 0.000, y = 268.183, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 402008, gadget_id = 70900380, pos = { x = -3995.818, y = 193.632, z = -912.408 }, rot = { x = 0.000, y = 268.183, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1402005, name = "GADGET_STATE_CHANGE_402005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_402005", action = "action_EVENT_GADGET_STATE_CHANGE_402005", trigger_count = 0 },
	{ config_id = 1402006, name = "GADGET_STATE_CHANGE_402006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_402006", action = "action_EVENT_GADGET_STATE_CHANGE_402006", trigger_count = 0 }
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
		gadgets = { 402001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_402005", "GADGET_STATE_CHANGE_402006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 402007, 402008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_402005(context, evt)
	if 402001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_402005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210402, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_402006(context, evt)
	if 402001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_402006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210402, 2)
	
	return 0
end

require "V2_0/ElectricCore"