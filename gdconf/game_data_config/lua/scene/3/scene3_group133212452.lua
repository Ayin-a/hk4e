-- 基础信息
local base_info = {
	group_id = 133212452
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
	{ config_id = 452001, gadget_id = 70330064, pos = { x = -3855.948, y = 201.574, z = -2201.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 452002, gadget_id = 70900380, pos = { x = -3858.252, y = 207.423, z = -2200.002 }, rot = { x = 0.000, y = 36.902, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 452003, gadget_id = 70900380, pos = { x = -3858.252, y = 222.258, z = -2200.002 }, rot = { x = 0.000, y = 36.902, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 452004, gadget_id = 70900380, pos = { x = -3858.252, y = 237.316, z = -2200.002 }, rot = { x = 0.000, y = 36.902, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 452005, gadget_id = 70900380, pos = { x = -3871.145, y = 244.626, z = -2206.123 }, rot = { x = 0.000, y = 36.902, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 452006, gadget_id = 70900380, pos = { x = -3887.570, y = 252.763, z = -2213.694 }, rot = { x = 0.000, y = 36.902, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 452007, gadget_id = 70900380, pos = { x = -3898.787, y = 258.498, z = -2217.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1452008, name = "GADGET_STATE_CHANGE_452008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_452008", action = "action_EVENT_GADGET_STATE_CHANGE_452008", trigger_count = 0 },
	{ config_id = 1452009, name = "GADGET_STATE_CHANGE_452009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_452009", action = "action_EVENT_GADGET_STATE_CHANGE_452009", trigger_count = 0 }
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
		gadgets = { 452001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_452008", "GADGET_STATE_CHANGE_452009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 452002, 452003, 452004, 452005, 452006, 452007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_452008(context, evt)
	if 452001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_452008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212452, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_452009(context, evt)
	if 452001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_452009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212452, 2)
	
	return 0
end

require "V2_0/ElectricCore"