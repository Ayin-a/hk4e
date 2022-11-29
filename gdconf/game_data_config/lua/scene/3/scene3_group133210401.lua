-- 基础信息
local base_info = {
	group_id = 133210401
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
	{ config_id = 401001, gadget_id = 70330064, pos = { x = -3521.099, y = 202.075, z = -855.823 }, rot = { x = 356.456, y = 359.301, z = 22.310 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 401002, gadget_id = 70900380, pos = { x = -3503.000, y = 213.722, z = -840.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 401003, gadget_id = 70900380, pos = { x = -3487.004, y = 218.855, z = -827.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1401005, name = "GADGET_STATE_CHANGE_401005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401005", action = "action_EVENT_GADGET_STATE_CHANGE_401005", trigger_count = 0 },
	{ config_id = 1401006, name = "GADGET_STATE_CHANGE_401006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401006", action = "action_EVENT_GADGET_STATE_CHANGE_401006", trigger_count = 0 }
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
		gadgets = { 401001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_401005", "GADGET_STATE_CHANGE_401006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 401002, 401003 },
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
function condition_EVENT_GADGET_STATE_CHANGE_401005(context, evt)
	if 401001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210401, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401006(context, evt)
	if 401001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_401006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210401, 2)
	
	return 0
end

require "V2_0/ElectricCore"