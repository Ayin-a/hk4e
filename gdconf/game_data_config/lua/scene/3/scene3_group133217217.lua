-- 基础信息
local base_info = {
	group_id = 133217217
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
	{ config_id = 217001, gadget_id = 70330064, pos = { x = -4884.391, y = 200.535, z = -4036.169 }, rot = { x = 0.000, y = 310.985, z = 0.000 }, level = 27, interact_id = 35, area_id = 14 },
	{ config_id = 217002, gadget_id = 70900380, pos = { x = -4843.621, y = 206.138, z = -4098.710 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 217003, gadget_id = 70900380, pos = { x = -4850.393, y = 212.918, z = -4088.951 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 217004, gadget_id = 70900380, pos = { x = -4856.875, y = 218.486, z = -4079.267 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
	{ config_id = 217007, gadget_id = 70900380, pos = { x = -4880.851, y = 206.138, z = -4043.220 }, rot = { x = 359.838, y = 135.774, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 217008, gadget_id = 70900380, pos = { x = -4874.142, y = 212.918, z = -4053.072 }, rot = { x = 359.838, y = 135.774, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 217009, gadget_id = 70900380, pos = { x = -4868.819, y = 218.486, z = -4061.710 }, rot = { x = 359.838, y = 135.774, z = 1.296 }, level = 30, area_id = 14 },
	{ config_id = 217010, gadget_id = 70330064, pos = { x = -4842.591, y = 200.052, z = -4101.768 }, rot = { x = 0.000, y = 310.985, z = 0.000 }, level = 30, interact_id = 35, area_id = 14 },
	{ config_id = 217011, gadget_id = 70900380, pos = { x = -4863.833, y = 221.132, z = -4069.305 }, rot = { x = 359.838, y = 135.774, z = 1.296 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1217005, name = "GADGET_STATE_CHANGE_217005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217005", action = "action_EVENT_GADGET_STATE_CHANGE_217005", trigger_count = 0 },
	{ config_id = 1217006, name = "GADGET_STATE_CHANGE_217006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217006", action = "action_EVENT_GADGET_STATE_CHANGE_217006", trigger_count = 0 },
	{ config_id = 1217012, name = "GADGET_STATE_CHANGE_217012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217012", action = "action_EVENT_GADGET_STATE_CHANGE_217012", trigger_count = 0 },
	{ config_id = 1217013, name = "GADGET_STATE_CHANGE_217013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_217013", action = "action_EVENT_GADGET_STATE_CHANGE_217013", trigger_count = 0 }
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
		gadgets = { 217001, 217010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_217005", "GADGET_STATE_CHANGE_217006", "GADGET_STATE_CHANGE_217012", "GADGET_STATE_CHANGE_217013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 217002, 217003, 217004, 217007, 217008, 217009, 217011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_217005(context, evt)
	if 217001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217217, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	if 217001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217217, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217012(context, evt)
	if 217010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217217, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_217013(context, evt)
	if 217010 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_217013(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133217217, 2)
	
	return 0
end

require "V2_0/ElectricCore"