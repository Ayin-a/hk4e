-- 基础信息
local base_info = {
	group_id = 133222219
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
	{ config_id = 219001, gadget_id = 70330064, pos = { x = -4584.922, y = 405.297, z = -4156.026 }, rot = { x = 356.523, y = 262.509, z = 359.930 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 219002, gadget_id = 70900380, pos = { x = -4579.050, y = 407.832, z = -4156.863 }, rot = { x = 358.514, y = 256.132, z = 358.870 }, level = 30, area_id = 14 },
	{ config_id = 219005, gadget_id = 70900380, pos = { x = -4568.877, y = 411.045, z = -4159.090 }, rot = { x = 358.514, y = 256.132, z = 358.870 }, level = 30, area_id = 14 },
	{ config_id = 219008, gadget_id = 70900380, pos = { x = -4563.899, y = 415.771, z = -4166.480 }, rot = { x = 358.514, y = 256.132, z = 358.870 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1219006, name = "GADGET_STATE_CHANGE_219006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_219006", action = "action_EVENT_GADGET_STATE_CHANGE_219006", trigger_count = 0 },
	{ config_id = 1219007, name = "GADGET_STATE_CHANGE_219007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_219007", action = "action_EVENT_GADGET_STATE_CHANGE_219007", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 219003, gadget_id = 70330093, pos = { x = -4567.619, y = 401.080, z = -4156.326 }, rot = { x = 0.522, y = 359.984, z = 356.561 }, level = 30, area_id = 14 },
		{ config_id = 219004, gadget_id = 70330093, pos = { x = -4564.120, y = 400.914, z = -4161.201 }, rot = { x = 0.522, y = 359.984, z = 356.561 }, level = 30, area_id = 14 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 219001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_219006", "GADGET_STATE_CHANGE_219007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 219002, 219005, 219008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_219006(context, evt)
	if 219001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_219006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222219, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_219007(context, evt)
	if 219001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_219007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222219, 3)
	
	return 0
end

require "V2_0/ElectricCore"