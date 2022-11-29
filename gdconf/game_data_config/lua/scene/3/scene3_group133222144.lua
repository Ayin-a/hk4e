-- 基础信息
local base_info = {
	group_id = 133222144
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
	{ config_id = 144001, gadget_id = 70330064, pos = { x = -4846.749, y = 202.890, z = -4614.319 }, rot = { x = 14.861, y = 359.650, z = 357.316 }, level = 27, persistent = true, interact_id = 35, area_id = 14 },
	{ config_id = 144002, gadget_id = 70900380, pos = { x = -4845.513, y = 210.257, z = -4619.631 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 144003, gadget_id = 70900380, pos = { x = -4847.753, y = 216.061, z = -4625.448 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 144004, gadget_id = 70900380, pos = { x = -4850.057, y = 221.794, z = -4631.681 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 144007, gadget_id = 70900380, pos = { x = -4852.254, y = 226.537, z = -4637.967 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 144008, gadget_id = 70900380, pos = { x = -4854.376, y = 231.581, z = -4644.172 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1144005, name = "GADGET_STATE_CHANGE_144005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144005", action = "action_EVENT_GADGET_STATE_CHANGE_144005", trigger_count = 0 },
	{ config_id = 1144006, name = "GADGET_STATE_CHANGE_144006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_144006", action = "action_EVENT_GADGET_STATE_CHANGE_144006", trigger_count = 0 },
	{ config_id = 1144009, name = "GROUP_LOAD_144009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_144009" }
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
		gadgets = { 144001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_144005", "GADGET_STATE_CHANGE_144006", "GROUP_LOAD_144009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 144002, 144003, 144004, 144007, 144008 },
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
function condition_EVENT_GADGET_STATE_CHANGE_144005(context, evt)
	if 144001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222144, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_144006(context, evt)
	if 144001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_144006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222144, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_144009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222144, 2)
	
	return 0
end

require "V2_0/ElectricCore"