-- 基础信息
local base_info = {
	group_id = 220138013
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
	{ config_id = 13001, gadget_id = 70310251, pos = { x = 6.272, y = 38.320, z = 45.930 }, rot = { x = 0.000, y = 180.615, z = 0.000 }, level = 1, persistent = true, arguments = { 27 } },
	{ config_id = 13002, gadget_id = 70310379, pos = { x = 9.346, y = 32.174, z = 73.735 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, persistent = true },
	{ config_id = 13004, gadget_id = 70310313, pos = { x = 5.859, y = 31.344, z = 73.213 }, rot = { x = 89.839, y = 0.084, z = 90.087 }, level = 1, is_enable_interact = false },
	{ config_id = 13005, gadget_id = 70310314, pos = { x = 5.859, y = 33.683, z = 73.206 }, rot = { x = 89.839, y = 0.084, z = 90.087 }, level = 1, is_enable_interact = false },
	{ config_id = 13006, gadget_id = 70310429, pos = { x = 5.979, y = 29.820, z = 74.182 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, persistent = true },
	{ config_id = 13009, gadget_id = 70310314, pos = { x = 11.650, y = 36.694, z = 69.738 }, rot = { x = 0.000, y = 180.000, z = 270.002 }, level = 1 },
	{ config_id = 13010, gadget_id = 70310316, pos = { x = 11.695, y = 36.633, z = 68.069 }, rot = { x = 270.184, y = 173.531, z = 276.343 }, level = 1, is_enable_interact = false },
	{ config_id = 13011, gadget_id = 70310314, pos = { x = 11.670, y = 35.441, z = 67.989 }, rot = { x = 270.476, y = 175.329, z = 274.663 }, level = 1, is_enable_interact = false },
	{ config_id = 13012, gadget_id = 70310313, pos = { x = 11.651, y = 34.265, z = 68.008 }, rot = { x = 89.385, y = 355.421, z = 85.489 }, level = 1, is_enable_interact = false },
	{ config_id = 13013, gadget_id = 70310316, pos = { x = 11.696, y = 32.418, z = 67.945 }, rot = { x = 89.763, y = 150.942, z = 240.955 }, level = 1 },
	{ config_id = 13014, gadget_id = 70310314, pos = { x = 11.630, y = 32.361, z = 66.731 }, rot = { x = 0.069, y = 359.972, z = 90.000 }, level = 1 },
	{ config_id = 13015, gadget_id = 70310314, pos = { x = 11.650, y = 36.694, z = 69.290 }, rot = { x = 0.000, y = 180.000, z = 270.002 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013003, name = "GADGET_STATE_CHANGE_13003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13003", action = "action_EVENT_GADGET_STATE_CHANGE_13003", trigger_count = 0 },
	{ config_id = 1013007, name = "GROUP_LOAD_13007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_13007", action = "action_EVENT_GROUP_LOAD_13007", trigger_count = 0 },
	{ config_id = 1013016, name = "OBSERVATION_POINT_NOTIFY_13016", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_13016", trigger_count = 0 }
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
		gadgets = { 13001, 13002, 13006, 13009, 13010, 13011, 13012, 13013, 13014, 13015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_13003", "GROUP_LOAD_13007", "OBSERVATION_POINT_NOTIFY_13016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 13004, 13005 },
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
function condition_EVENT_GADGET_STATE_CHANGE_13003(context, evt)
	-- 检测config_id为13002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 13002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220138013, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_13007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220138013, 13002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_13007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220138013, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_13016(context, evt)
	if 13001 == evt.param1 and 604 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,13002, GadgetState.GearStart)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "eyefinish2", 1, 220138022)
		
		ScriptLib.SetGadgetStateByConfigId(context,13001, GadgetState.ChestOpened)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220138013, config_id=13006, entity_type=EntityType.GADGET})
	end
	
	return 0
end