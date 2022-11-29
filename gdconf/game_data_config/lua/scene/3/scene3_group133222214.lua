-- 基础信息
local base_info = {
	group_id = 133222214
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
	{ config_id = 214001, gadget_id = 70330064, pos = { x = -4531.417, y = 371.322, z = -4224.088 }, rot = { x = 0.541, y = 0.297, z = 356.564 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 214002, gadget_id = 70900380, pos = { x = -4534.231, y = 373.955, z = -4220.395 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 214003, gadget_id = 70900380, pos = { x = -4541.556, y = 375.768, z = -4211.166 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 214004, gadget_id = 70900380, pos = { x = -4547.942, y = 376.152, z = -4199.688 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1214007, name = "GADGET_STATE_CHANGE_214007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_214007", action = "action_EVENT_GADGET_STATE_CHANGE_214007", trigger_count = 0 },
	{ config_id = 1214008, name = "GADGET_STATE_CHANGE_214008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_214008", action = "action_EVENT_GADGET_STATE_CHANGE_214008", trigger_count = 0 }
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
		gadgets = { 214001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_214007", "GADGET_STATE_CHANGE_214008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 214002, 214003, 214004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_214007(context, evt)
	if 214001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_214007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222214, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_214008(context, evt)
	if 214001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_214008(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222214, 3)
	
	return 0
end

require "V2_0/ElectricCore"