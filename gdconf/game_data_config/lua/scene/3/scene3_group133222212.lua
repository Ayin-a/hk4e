-- 基础信息
local base_info = {
	group_id = 133222212
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
	{ config_id = 212001, gadget_id = 70330064, pos = { x = -4570.538, y = 333.122, z = -4301.618 }, rot = { x = 3.659, y = 359.838, z = 354.936 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 212002, gadget_id = 70900380, pos = { x = -4568.168, y = 338.753, z = -4291.512 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 212003, gadget_id = 70900380, pos = { x = -4553.228, y = 362.086, z = -4279.697 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 212004, gadget_id = 70900380, pos = { x = -4558.880, y = 349.608, z = -4283.657 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1212005, name = "GADGET_STATE_CHANGE_212005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_212005", action = "action_EVENT_GADGET_STATE_CHANGE_212005", trigger_count = 0 },
	{ config_id = 1212006, name = "GADGET_STATE_CHANGE_212006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_212006", action = "action_EVENT_GADGET_STATE_CHANGE_212006", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 212001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_212005", "GADGET_STATE_CHANGE_212006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 212002, 212003, 212004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_212005(context, evt)
	if 212001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_212005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222212, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_212006(context, evt)
	if 212001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_212006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222212, 3)
	
	return 0
end

require "V2_0/ElectricCore"