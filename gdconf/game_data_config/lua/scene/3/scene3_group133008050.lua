-- 基础信息
local base_info = {
	group_id = 133008050
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
	{ config_id = 50001, gadget_id = 70290033, pos = { x = 1041.850, y = 469.340, z = -821.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 50002, gadget_id = 70290034, pos = { x = 1023.538, y = 524.599, z = -842.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800004, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50003, gadget_id = 70290035, pos = { x = 1045.395, y = 482.161, z = -812.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800006, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50004, gadget_id = 70290036, pos = { x = 1044.892, y = 477.410, z = -803.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800002, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50005, gadget_id = 70290037, pos = { x = 1050.400, y = 479.010, z = -807.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800003, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50006, gadget_id = 70290038, pos = { x = 1063.203, y = 497.798, z = -835.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800005, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50007, gadget_id = 70290039, pos = { x = 1028.524, y = 530.288, z = -833.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800015, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50008, gadget_id = 70290040, pos = { x = 1080.109, y = 500.308, z = -839.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800016, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50009, gadget_id = 70290041, pos = { x = 1062.781, y = 499.851, z = -823.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800017, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50010, gadget_id = 70290042, pos = { x = 1071.926, y = 498.807, z = -832.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800018, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50011, gadget_id = 70290043, pos = { x = 1029.498, y = 528.378, z = -845.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 300800019, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 50012, gadget_id = 70290026, pos = { x = 1045.813, y = 484.553, z = -814.159 }, rot = { x = 0.000, y = 0.002, z = 0.000 }, level = 30, state = GadgetState.GearAction1, persistent = true, oneoff_reset_version = 2, area_id = 10 },
	{ config_id = 50013, gadget_id = 70290026, pos = { x = 1031.036, y = 534.763, z = -831.585 }, rot = { x = 0.000, y = 0.002, z = 0.000 }, level = 30, state = GadgetState.GearAction1, persistent = true, oneoff_reset_version = 2, area_id = 10 },
	{ config_id = 50014, gadget_id = 70290026, pos = { x = 1058.297, y = 501.317, z = -822.036 }, rot = { x = 0.000, y = 0.002, z = 0.000 }, level = 30, state = GadgetState.GearAction1, persistent = true, oneoff_reset_version = 2, area_id = 10 },
	{ config_id = 50021, gadget_id = 70290046, pos = { x = 1045.723, y = 486.096, z = -814.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 50022, gadget_id = 70290046, pos = { x = 1031.008, y = 536.481, z = -831.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 50023, gadget_id = 70290046, pos = { x = 1058.242, y = 502.819, z = -822.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 50024, gadget_id = 70360001, pos = { x = 1045.781, y = 486.063, z = -814.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 50025, gadget_id = 70360001, pos = { x = 1031.017, y = 536.031, z = -831.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 50026, gadget_id = 70360001, pos = { x = 1058.271, y = 502.798, z = -822.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 50066, gadget_id = 70360011, pos = { x = 1041.850, y = 477.840, z = -821.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1050015, name = "SELECT_OPTION_50015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_50015", action = "action_EVENT_SELECT_OPTION_50015", trigger_count = 0 },
	{ config_id = 1050016, name = "SELECT_OPTION_50016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_50016", action = "action_EVENT_SELECT_OPTION_50016", trigger_count = 0 },
	{ config_id = 1050017, name = "SELECT_OPTION_50017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_50017", action = "action_EVENT_SELECT_OPTION_50017", trigger_count = 0 },
	{ config_id = 1050018, name = "PLATFORM_REACH_POINT_50018", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50018", action = "action_EVENT_PLATFORM_REACH_POINT_50018", trigger_count = 0 },
	{ config_id = 1050019, name = "VARIABLE_CHANGE_50019", event = EventType.EVENT_VARIABLE_CHANGE, source = "reach_point_count", condition = "condition_EVENT_VARIABLE_CHANGE_50019", action = "action_EVENT_VARIABLE_CHANGE_50019", trigger_count = 0 },
	{ config_id = 1050020, name = "QUEST_START_50020", event = EventType.EVENT_QUEST_START, source = "7014122", condition = "", action = "action_EVENT_QUEST_START_50020", trigger_count = 0 },
	{ config_id = 1050027, name = "GADGET_CREATE_50027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_50027", action = "action_EVENT_GADGET_CREATE_50027", trigger_count = 0 },
	{ config_id = 1050028, name = "GADGET_CREATE_50028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_50028", action = "action_EVENT_GADGET_CREATE_50028", trigger_count = 0 },
	{ config_id = 1050029, name = "GADGET_CREATE_50029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_50029", action = "action_EVENT_GADGET_CREATE_50029", trigger_count = 0 },
	{ config_id = 1050030, name = "ANY_GADGET_DIE_50030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_50030", action = "action_EVENT_ANY_GADGET_DIE_50030" },
	{ config_id = 1050031, name = "ANY_GADGET_DIE_50031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_50031", action = "action_EVENT_ANY_GADGET_DIE_50031" },
	{ config_id = 1050032, name = "ANY_GADGET_DIE_50032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_50032", action = "action_EVENT_ANY_GADGET_DIE_50032" },
	{ config_id = 1050033, name = "VARIABLE_CHANGE_50033", event = EventType.EVENT_VARIABLE_CHANGE, source = "reach_point_count_option_50015", condition = "condition_EVENT_VARIABLE_CHANGE_50033", action = "action_EVENT_VARIABLE_CHANGE_50033", trigger_count = 0 },
	{ config_id = 1050034, name = "QUEST_START_50034", event = EventType.EVENT_QUEST_START, source = "7014105", condition = "condition_EVENT_QUEST_START_50034", action = "action_EVENT_QUEST_START_50034", trigger_count = 0 },
	{ config_id = 1050035, name = "QUEST_START_50035", event = EventType.EVENT_QUEST_START, source = "7014105", condition = "condition_EVENT_QUEST_START_50035", action = "action_EVENT_QUEST_START_50035", trigger_count = 0 },
	{ config_id = 1050036, name = "QUEST_START_50036", event = EventType.EVENT_QUEST_START, source = "7014105", condition = "condition_EVENT_QUEST_START_50036", action = "action_EVENT_QUEST_START_50036", trigger_count = 0 },
	{ config_id = 1050037, name = "VARIABLE_CHANGE_50037", event = EventType.EVENT_VARIABLE_CHANGE, source = "reach_point_count_option_50016", condition = "condition_EVENT_VARIABLE_CHANGE_50037", action = "action_EVENT_VARIABLE_CHANGE_50037", trigger_count = 0 },
	{ config_id = 1050038, name = "VARIABLE_CHANGE_50038", event = EventType.EVENT_VARIABLE_CHANGE, source = "reach_point_count_option_50017", condition = "condition_EVENT_VARIABLE_CHANGE_50038", action = "action_EVENT_VARIABLE_CHANGE_50038", trigger_count = 0 },
	{ config_id = 1050039, name = "QUEST_START_50039", event = EventType.EVENT_QUEST_START, source = "7014105", condition = "condition_EVENT_QUEST_START_50039", action = "action_EVENT_QUEST_START_50039", trigger_count = 0 },
	{ config_id = 1050040, name = "QUEST_START_50040", event = EventType.EVENT_QUEST_START, source = "7014105", condition = "condition_EVENT_QUEST_START_50040", action = "action_EVENT_QUEST_START_50040", trigger_count = 0 },
	{ config_id = 1050041, name = "QUEST_START_50041", event = EventType.EVENT_QUEST_START, source = "7014105", condition = "condition_EVENT_QUEST_START_50041", action = "action_EVENT_QUEST_START_50041", trigger_count = 0 },
	{ config_id = 1050042, name = "PLATFORM_REACH_POINT_50042", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50042", action = "action_EVENT_PLATFORM_REACH_POINT_50042", trigger_count = 0 },
	{ config_id = 1050043, name = "PLATFORM_REACH_POINT_50043", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50043", action = "action_EVENT_PLATFORM_REACH_POINT_50043", trigger_count = 0 },
	{ config_id = 1050044, name = "PLATFORM_REACH_POINT_50044", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50044", action = "action_EVENT_PLATFORM_REACH_POINT_50044", trigger_count = 0 },
	{ config_id = 1050045, name = "PLATFORM_REACH_POINT_50045", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50045", action = "action_EVENT_PLATFORM_REACH_POINT_50045", trigger_count = 0 },
	{ config_id = 1050046, name = "PLATFORM_REACH_POINT_50046", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50046", action = "action_EVENT_PLATFORM_REACH_POINT_50046", trigger_count = 0 },
	{ config_id = 1050047, name = "PLATFORM_REACH_POINT_50047", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50047", action = "action_EVENT_PLATFORM_REACH_POINT_50047", trigger_count = 0 },
	{ config_id = 1050048, name = "PLATFORM_REACH_POINT_50048", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50048", action = "action_EVENT_PLATFORM_REACH_POINT_50048", trigger_count = 0 },
	{ config_id = 1050049, name = "PLATFORM_REACH_POINT_50049", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50049", action = "action_EVENT_PLATFORM_REACH_POINT_50049", trigger_count = 0 },
	{ config_id = 1050050, name = "PLATFORM_REACH_POINT_50050", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_50050", action = "action_EVENT_PLATFORM_REACH_POINT_50050", trigger_count = 0 },
	{ config_id = 1050051, name = "QUEST_START_50051", event = EventType.EVENT_QUEST_START, source = "7014105", condition = "condition_EVENT_QUEST_START_50051", action = "action_EVENT_QUEST_START_50051", trigger_count = 0 },
	{ config_id = 1050068, name = "TIMER_EVENT_50068", event = EventType.EVENT_TIMER_EVENT, source = "delay_remove", condition = "", action = "action_EVENT_TIMER_EVENT_50068", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "reach_point_count", value = 0, no_refresh = true },
	{ config_id = 2, name = "option_50015_active", value = 0, no_refresh = true },
	{ config_id = 3, name = "option_50016_active", value = 0, no_refresh = true },
	{ config_id = 4, name = "option_50017_active", value = 0, no_refresh = true },
	{ config_id = 5, name = "reach_point_count_option_50015", value = 0, no_refresh = true },
	{ config_id = 6, name = "reach_point_count_option_50016", value = 0, no_refresh = true },
	{ config_id = 7, name = "reach_point_count_option_50017", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
	end_suite = 2,
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
		gadgets = { 50001, 50002, 50003, 50004, 50005, 50006, 50007, 50008, 50009, 50010, 50011, 50012, 50013, 50014, 50024, 50025, 50026, 50066 },
		regions = { },
		triggers = { "SELECT_OPTION_50015", "SELECT_OPTION_50016", "SELECT_OPTION_50017", "PLATFORM_REACH_POINT_50018", "VARIABLE_CHANGE_50019", "QUEST_START_50020", "GADGET_CREATE_50027", "GADGET_CREATE_50028", "GADGET_CREATE_50029", "ANY_GADGET_DIE_50030", "ANY_GADGET_DIE_50031", "ANY_GADGET_DIE_50032", "VARIABLE_CHANGE_50033", "QUEST_START_50034", "QUEST_START_50035", "QUEST_START_50036", "VARIABLE_CHANGE_50037", "VARIABLE_CHANGE_50038", "QUEST_START_50039", "QUEST_START_50040", "QUEST_START_50041", "PLATFORM_REACH_POINT_50042", "PLATFORM_REACH_POINT_50043", "PLATFORM_REACH_POINT_50044", "PLATFORM_REACH_POINT_50045", "PLATFORM_REACH_POINT_50046", "PLATFORM_REACH_POINT_50047", "PLATFORM_REACH_POINT_50048", "PLATFORM_REACH_POINT_50049", "PLATFORM_REACH_POINT_50050", "QUEST_START_50051", "TIMER_EVENT_50068" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 50001, 50002, 50003, 50004, 50005, 50006, 50007, 50008, 50009, 50010, 50011 },
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
function condition_EVENT_SELECT_OPTION_50015(context, evt)
	-- 判断是gadgetid 50024 option_id 7
	if 50024 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_50015(context, evt)
	-- 将本组内变量名为 "option_50015_active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "option_50015_active", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133008050 ；指定config：50024；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008050, 50024, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50004, 300800002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50005, 300800003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50003, 300800006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 50021 的物件更改为状态 GadgetState.GearStart
	ScriptLib.SetGadgetStateByConfigId(context, 50021, GadgetState.GearStart) 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 50021 }) then
			    return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_50016(context, evt)
	-- 判断是gadgetid 50025 option_id 7
	if 50025 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_50016(context, evt)
	-- 将本组内变量名为 "option_50016_active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "option_50016_active", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133008050 ；指定config：50025；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008050, 50025, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50002, 300800004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50011, 300800019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50007, 300800015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 50022 的物件更改为状态 GadgetState.GearStart
	ScriptLib.SetGadgetStateByConfigId(context, 50022, GadgetState.GearStart)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 50022 }) then
			    return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_50017(context, evt)
	-- 判断是gadgetid 50026 option_id 7
	if 50026 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_50017(context, evt)
	-- 将本组内变量名为 "option_50017_active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "option_50017_active", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133008050 ；指定config：50026；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133008050, 50026, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50006, 300800005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50008, 300800016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50009, 300800017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50010, 300800018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将configid为 50023 的物件更改为状态 GadgetState.GearStart
	ScriptLib.SetGadgetStateByConfigId(context, 50023, GadgetState.GearStart) 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 50023 }) then
			    return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50018(context, evt)
	-- 判断是gadgetid 为 50002的移动平台，是否到达了300800004 的路线中的 1 点
	
	if 50002 ~= evt.param1 then
	  return false
	end
	
	if 300800004 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50018(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50016" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50016", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_50019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reach_point_count"为3
	if ScriptLib.GetGroupVariableValue(context, "reach_point_count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_50019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330080501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_50020(context, evt)
	-- 延迟2秒后,向groupId为：133008050的对象,请求一次调用,并将string参数："delay_remove" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008050, "delay_remove", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_50027(context, evt)
	if 50021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_50027(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008050, 50024, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_50028(context, evt)
	if 50022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_50028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008050, 50025, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_50029(context, evt)
	if 50023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_50029(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008050, 50026, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_50030(context, evt)
	if 50012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_50030(context, evt)
	-- 创建id为50021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008050, 50024, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008644) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008170) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_50031(context, evt)
	if 50013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_50031(context, evt)
	-- 创建id为50022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008050, 50025, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008644) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008170) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_50032(context, evt)
	if 50014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_50032(context, evt)
	-- 创建id为50023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008050, 50026, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008644) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133008170) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_50033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reach_point_count_option_50015"为3
	if ScriptLib.GetGroupVariableValue(context, "reach_point_count_option_50015") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_50033(context, evt)
	-- 针对当前group内变量名为 "reach_point_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_50034(context, evt)
	-- 判断变量"option_50015_active"为1
	if ScriptLib.GetGroupVariableValue(context, "option_50015_active") ~= 1 or ScriptLib.GetGroupVariableValue(context, "reach_point_count_option_50015") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_50034(context, evt)
	-- 将本组内变量名为 "reach_point_count_option_50015" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach_point_count_option_50015", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "option_50015_active" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "option_50015_active", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为50021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50004, 300800063) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50005, 300800064) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50003, 300800062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_50035(context, evt)
	-- 判断变量"option_50016_active"为1
	if ScriptLib.GetGroupVariableValue(context, "option_50016_active") ~= 1 or ScriptLib.GetGroupVariableValue(context, "reach_point_count_option_50016") == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_50035(context, evt)
	-- 将本组内变量名为 "reach_point_count_option_50016" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach_point_count_option_50016", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "option_50016_active" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "option_50016_active", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为50022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50002, 300800061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50011, 300800070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50007, 300800066) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_50036(context, evt)
	-- 判断变量"option_50017_active"为1
	if ScriptLib.GetGroupVariableValue(context, "option_50017_active") ~= 1 or ScriptLib.GetGroupVariableValue(context, "reach_point_count_option_50017") == 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_50036(context, evt)
	-- 将本组内变量名为 "reach_point_count_option_50017" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach_point_count_option_50017", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "option_50017_active" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "option_50017_active", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为50023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50006, 300800065) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50008, 300800067) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50009, 300800068) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 50010, 300800069) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 50010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_50037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reach_point_count_option_50016"为3
	if ScriptLib.GetGroupVariableValue(context, "reach_point_count_option_50016") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_50037(context, evt)
	-- 针对当前group内变量名为 "reach_point_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_50038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"reach_point_count_option_50017"为4
	if ScriptLib.GetGroupVariableValue(context, "reach_point_count_option_50017") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_50038(context, evt)
	-- 针对当前group内变量名为 "reach_point_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_50039(context, evt)
	-- 判断变量"option_50015_active"为0，核心和冰块是否存在
	
	if ScriptLib.GetGroupVariableValue(context, "option_50015_active") ~= 0 or ScriptLib.GetGroupVariableValue(context, "reach_point_count_option_50015") == 3 or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008050, 50021) or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008050, 50012) 
	then
			return false
	end
		
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_50039(context, evt)
	-- 将本组内变量名为 "reach_point_count_option_50015" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach_point_count_option_50015", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为50021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_50040(context, evt)
	-- 判断变量"option_50016_active"为0，核心和冰块是否存在
	
	if ScriptLib.GetGroupVariableValue(context, "option_50016_active") ~= 0 or ScriptLib.GetGroupVariableValue(context, "reach_point_count_option_50016") == 3 or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008050, 50022) or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008050, 50013) 
	then
			return false
	end
		
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_50040(context, evt)
	-- 将本组内变量名为 "reach_point_count_option_50016" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach_point_count_option_50016", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为50022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_50041(context, evt)
	-- 判断变量"option_50017_active"为0，核心和冰块是否存在
	
	if ScriptLib.GetGroupVariableValue(context, "option_50017_active") ~= 0 or ScriptLib.GetGroupVariableValue(context, "reach_point_count_option_50017") == 4 or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008050, 50023) or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008050, 50014) 
	then
			return false
	end
		
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_50041(context, evt)
	-- 将本组内变量名为 "reach_point_count_option_50017" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reach_point_count_option_50017", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为50023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 50023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50042(context, evt)
	-- 判断是gadgetid 为 50003的移动平台，是否到达了300800006 的路线中的 1 点
	
	if 50003 ~= evt.param1 then
	  return false
	end
	
	if 300800006 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50042(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50015" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50015", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50043(context, evt)
	-- 判断是gadgetid 为 50004的移动平台，是否到达了300800002 的路线中的 1 点
	
	if 50004 ~= evt.param1 then
	  return false
	end
	
	if 300800002 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50043(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50015" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50015", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50044(context, evt)
	-- 判断是gadgetid 为 50005的移动平台，是否到达了300800003 的路线中的 1 点
	
	if 50005 ~= evt.param1 then
	  return false
	end
	
	if 300800003 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50044(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50015" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50015", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50045(context, evt)
	-- 判断是gadgetid 为 50006的移动平台，是否到达了300800005 的路线中的 1 点
	
	if 50006 ~= evt.param1 then
	  return false
	end
	
	if 300800005 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50045(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50017" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50017", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50046(context, evt)
	-- 判断是gadgetid 为 50007的移动平台，是否到达了300800015 的路线中的 1 点
	
	if 50007 ~= evt.param1 then
	  return false
	end
	
	if 300800015 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50046(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50016" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50016", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50047(context, evt)
	-- 判断是gadgetid 为 50008的移动平台，是否到达了300800016 的路线中的 1 点
	
	if 50008 ~= evt.param1 then
	  return false
	end
	
	if 300800016 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50047(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50017" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50017", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50048(context, evt)
	-- 判断是gadgetid 为 50009的移动平台，是否到达了300800017 的路线中的 1 点
	
	if 50009 ~= evt.param1 then
	  return false
	end
	
	if 300800017 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50048(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50017" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50017", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50049(context, evt)
	-- 判断是gadgetid 为 50010的移动平台，是否到达了300800018 的路线中的 1 点
	
	if 50010 ~= evt.param1 then
	  return false
	end
	
	if 300800018 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50049(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50017" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50017", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_50050(context, evt)
	-- 判断是gadgetid 为 50011的移动平台，是否到达了300800019 的路线中的 1 点
	
	if 50011 ~= evt.param1 then
	  return false
	end
	
	if 300800019 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_50050(context, evt)
	-- 针对当前group内变量名为 "reach_point_count_option_50016" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "reach_point_count_option_50016", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_50051(context, evt)
	-- 判断变量"reach_point_count"为3
	if ScriptLib.GetGroupVariableValue(context, "reach_point_count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_50051(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330080501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_50068(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133008050, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end