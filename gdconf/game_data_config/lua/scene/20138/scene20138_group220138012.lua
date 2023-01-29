-- 基础信息
local base_info = {
	group_id = 220138012
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
	{ config_id = 12001, gadget_id = 70310251, pos = { x = -12.558, y = 38.320, z = 62.806 }, rot = { x = 0.000, y = 272.237, z = 0.000 }, level = 1, persistent = true, arguments = { 26 } },
	{ config_id = 12002, gadget_id = 70310379, pos = { x = 15.195, y = 22.413, z = 54.429 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, persistent = true },
	{ config_id = 12004, gadget_id = 70310308, pos = { x = 11.692, y = 17.471, z = 49.809 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 1, is_enable_interact = false },
	{ config_id = 12005, gadget_id = 70310313, pos = { x = 11.750, y = 19.056, z = 49.821 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 12006, gadget_id = 70310314, pos = { x = 11.747, y = 21.551, z = 49.823 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 12007, gadget_id = 70310316, pos = { x = 11.732, y = 22.746, z = 49.906 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 12008, gadget_id = 70310314, pos = { x = 11.691, y = 22.793, z = 51.113 }, rot = { x = 0.000, y = 180.000, z = 270.000 }, level = 1, is_enable_interact = false },
	{ config_id = 12009, gadget_id = 70310313, pos = { x = 11.744, y = 22.794, z = 53.628 }, rot = { x = 0.000, y = 180.000, z = 270.000 }, level = 1 },
	{ config_id = 12010, gadget_id = 70310314, pos = { x = 11.744, y = 22.793, z = 55.947 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 12011, gadget_id = 70310313, pos = { x = 11.723, y = 22.794, z = 58.449 }, rot = { x = 0.000, y = 180.000, z = 270.000 }, level = 1 },
	{ config_id = 12012, gadget_id = 70310314, pos = { x = 11.722, y = 22.793, z = 60.767 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 12013, gadget_id = 70310313, pos = { x = 11.723, y = 22.794, z = 63.290 }, rot = { x = 0.000, y = 180.000, z = 270.000 }, level = 1 },
	{ config_id = 12014, gadget_id = 70310314, pos = { x = 11.722, y = 22.793, z = 65.608 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 12015, gadget_id = 70310429, pos = { x = 14.427, y = 24.811, z = 56.858 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12016, gadget_id = 70310429, pos = { x = 14.541, y = 24.865, z = 52.290 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 12017, gadget_id = 70310316, pos = { x = 5.923, y = 22.848, z = 73.189 }, rot = { x = 89.437, y = 0.000, z = 90.000 }, level = 1 },
	{ config_id = 12018, gadget_id = 70310314, pos = { x = 5.859, y = 22.793, z = 72.249 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, is_enable_interact = false },
	{ config_id = 12019, gadget_id = 70310314, pos = { x = 5.859, y = 24.036, z = 73.268 }, rot = { x = 89.821, y = 0.090, z = 90.092 }, level = 1, is_enable_interact = false },
	{ config_id = 12020, gadget_id = 70310314, pos = { x = 5.859, y = 28.856, z = 73.253 }, rot = { x = 89.839, y = 0.084, z = 90.087 }, level = 1 },
	{ config_id = 12021, gadget_id = 70310313, pos = { x = 5.859, y = 26.517, z = 73.260 }, rot = { x = 89.839, y = 0.084, z = 90.087 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012003, name = "GADGET_STATE_CHANGE_12003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12003", action = "action_EVENT_GADGET_STATE_CHANGE_12003", trigger_count = 0 },
	{ config_id = 1012022, name = "OBSERVATION_POINT_NOTIFY_12022", event = EventType.EVENT_OBSERVATION_POINT_NOTIFY, source = "", condition = "", action = "action_EVENT_OBSERVATION_POINT_NOTIFY_12022", trigger_count = 0 },
	{ config_id = 1012023, name = "GROUP_LOAD_12023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_12023", action = "action_EVENT_GROUP_LOAD_12023", trigger_count = 0 }
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
		gadgets = { 12001, 12002, 12004, 12005, 12006, 12007, 12008, 12011, 12012, 12013, 12014, 12015, 12016, 12017, 12018, 12019, 12020, 12021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_12003", "OBSERVATION_POINT_NOTIFY_12022", "GROUP_LOAD_12023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 12009, 12010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_12003(context, evt)
	-- 检测config_id为12002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 12002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220138012, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_OBSERVATION_POINT_NOTIFY_12022(context, evt)
	if 12001 == evt.param1 and 605 == evt.param2 then
		ScriptLib.SetGadgetStateByConfigId(context,12002, GadgetState.GearStart)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "eyefinish1", 1, 220138022)
		
		ScriptLib.SetGadgetStateByConfigId(context,12001, GadgetState.ChestOpened)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220138012, config_id=12015, entity_type=EntityType.GADGET})
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220138012, config_id=12016, entity_type=EntityType.GADGET})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_12023(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220138012, 12002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_12023(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220138012, 2)
	
	return 0
end