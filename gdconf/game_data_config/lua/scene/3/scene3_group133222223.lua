-- 基础信息
local base_info = {
	group_id = 133222223
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
	{ config_id = 223001, gadget_id = 70330064, pos = { x = -4580.448, y = 415.577, z = -4166.403 }, rot = { x = 8.350, y = 128.614, z = 10.695 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 223002, gadget_id = 70900380, pos = { x = -4584.982, y = 423.966, z = -4161.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 223003, gadget_id = 70900380, pos = { x = -4594.604, y = 430.120, z = -4153.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 223004, gadget_id = 70900380, pos = { x = -4602.052, y = 434.617, z = -4145.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1223005, name = "GADGET_STATE_CHANGE_223005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223005", action = "action_EVENT_GADGET_STATE_CHANGE_223005", trigger_count = 0 },
	{ config_id = 1223006, name = "GADGET_STATE_CHANGE_223006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223006", action = "action_EVENT_GADGET_STATE_CHANGE_223006", trigger_count = 0 }
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
		gadgets = { 223001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_223005", "GADGET_STATE_CHANGE_223006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 223002, 223003, 223004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_223005(context, evt)
	if 223001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222223, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_223006(context, evt)
	if 223001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222223, 3)
	
	return 0
end

require "V2_0/ElectricCore"