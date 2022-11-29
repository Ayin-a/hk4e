-- 基础信息
local base_info = {
	group_id = 133222316
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
	{ config_id = 316001, gadget_id = 70330064, pos = { x = -4547.142, y = 371.564, z = -4141.813 }, rot = { x = 356.523, y = 262.741, z = 359.916 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 316002, gadget_id = 70900380, pos = { x = -4554.462, y = 374.729, z = -4140.449 }, rot = { x = 1.978, y = 256.131, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 316003, gadget_id = 70900380, pos = { x = -4563.851, y = 383.466, z = -4135.776 }, rot = { x = 1.978, y = 256.131, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 316004, gadget_id = 70900380, pos = { x = -4575.929, y = 391.964, z = -4140.101 }, rot = { x = 1.978, y = 256.131, z = 358.554 }, level = 30, area_id = 14 },
	{ config_id = 316005, gadget_id = 70900380, pos = { x = -4579.086, y = 404.080, z = -4147.047 }, rot = { x = 1.978, y = 256.131, z = 358.554 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1316006, name = "GADGET_STATE_CHANGE_316006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_316006", action = "action_EVENT_GADGET_STATE_CHANGE_316006", trigger_count = 0 },
	{ config_id = 1316007, name = "GADGET_STATE_CHANGE_316007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_316007", action = "action_EVENT_GADGET_STATE_CHANGE_316007", trigger_count = 0 }
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
		gadgets = { 316001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_316006", "GADGET_STATE_CHANGE_316007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 316002, 316003, 316004, 316005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_316006(context, evt)
	if 316001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_316006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222316, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_316007(context, evt)
	if 316001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_316007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222316, 3)
	
	return 0
end

require "V2_0/ElectricCore"