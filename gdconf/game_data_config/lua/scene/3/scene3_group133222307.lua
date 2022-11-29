-- 基础信息
local base_info = {
	group_id = 133222307
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
	{ config_id = 307001, gadget_id = 70330064, pos = { x = -4641.400, y = 438.632, z = -4174.706 }, rot = { x = 356.608, y = 275.988, z = 0.767 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 307002, gadget_id = 70900380, pos = { x = -4646.438, y = 443.771, z = -4168.605 }, rot = { x = 359.580, y = 15.733, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 307003, gadget_id = 70900380, pos = { x = -4651.779, y = 449.174, z = -4162.430 }, rot = { x = 359.580, y = 15.733, z = 1.124 }, level = 30, area_id = 14 },
	{ config_id = 307004, gadget_id = 70900380, pos = { x = -4659.014, y = 455.214, z = -4154.260 }, rot = { x = 359.580, y = 15.733, z = 1.124 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1307005, name = "GADGET_STATE_CHANGE_307005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307005", action = "action_EVENT_GADGET_STATE_CHANGE_307005", trigger_count = 0 },
	{ config_id = 1307006, name = "GADGET_STATE_CHANGE_307006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_307006", action = "action_EVENT_GADGET_STATE_CHANGE_307006", trigger_count = 0 }
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
		gadgets = { 307001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_307005", "GADGET_STATE_CHANGE_307006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 307002, 307003, 307004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_307005(context, evt)
	if 307001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222307, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_307006(context, evt)
	if 307001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_307006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222307, 3)
	
	return 0
end

require "V2_0/ElectricCore"