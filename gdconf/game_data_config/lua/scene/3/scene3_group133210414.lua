-- 基础信息
local base_info = {
	group_id = 133210414
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
	{ config_id = 414001, gadget_id = 70330064, pos = { x = -3660.939, y = 131.728, z = -641.775 }, rot = { x = 359.957, y = 0.001, z = 356.369 }, level = 27, interact_id = 35, area_id = 17 },
	{ config_id = 414007, gadget_id = 70900380, pos = { x = -3658.833, y = 142.118, z = -634.601 }, rot = { x = 0.000, y = 209.192, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1414005, name = "GADGET_STATE_CHANGE_414005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_414005", action = "action_EVENT_GADGET_STATE_CHANGE_414005", trigger_count = 0 },
	{ config_id = 1414006, name = "GADGET_STATE_CHANGE_414006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_414006", action = "action_EVENT_GADGET_STATE_CHANGE_414006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 414002, gadget_id = 70900380, pos = { x = -3668.679, y = 141.910, z = -626.342 }, rot = { x = 0.000, y = 209.192, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 414003, gadget_id = 70900380, pos = { x = -3680.387, y = 147.619, z = -617.738 }, rot = { x = 0.000, y = 209.192, z = 0.000 }, level = 30, area_id = 17 }
	}
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
		gadgets = { 414001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_414005", "GADGET_STATE_CHANGE_414006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 414007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_414005(context, evt)
	if 414001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_414005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210414, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_414006(context, evt)
	if 414001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_414006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133210414, 2)
	
	return 0
end

require "V2_0/ElectricCore"