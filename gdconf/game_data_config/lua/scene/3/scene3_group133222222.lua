-- 基础信息
local base_info = {
	group_id = 133222222
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
	{ config_id = 222001, gadget_id = 70330064, pos = { x = -4571.885, y = 374.506, z = -4227.078 }, rot = { x = 0.675, y = 324.430, z = 356.588 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 222002, gadget_id = 70900380, pos = { x = -4568.459, y = 380.162, z = -4222.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 222003, gadget_id = 70900380, pos = { x = -4563.404, y = 381.552, z = -4212.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 222004, gadget_id = 70900380, pos = { x = -4557.795, y = 379.424, z = -4202.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1222006, name = "GADGET_STATE_CHANGE_222006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222006", action = "action_EVENT_GADGET_STATE_CHANGE_222006", trigger_count = 0 },
	{ config_id = 1222007, name = "GADGET_STATE_CHANGE_222007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222007", action = "action_EVENT_GADGET_STATE_CHANGE_222007", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 222005, gadget_id = 70900380, pos = { x = -4585.796, y = 395.389, z = -4186.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 222008, gadget_id = 70900380, pos = { x = -4586.296, y = 404.108, z = -4178.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 222009, gadget_id = 70900380, pos = { x = -4586.437, y = 408.413, z = -4165.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
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
		gadgets = { 222001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_222006", "GADGET_STATE_CHANGE_222007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 222002, 222003, 222004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_222006(context, evt)
	if 222001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222222, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_222007(context, evt)
	if 222001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222222, 3)
	
	return 0
end

require "V2_0/ElectricCore"