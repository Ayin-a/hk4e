-- 基础信息
local base_info = {
	group_id = 199003044
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
	{ config_id = 44001, gadget_id = 70310241, pos = { x = -914.511, y = 387.307, z = -102.429 }, rot = { x = 0.000, y = 1.785, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 44002, gadget_id = 70310241, pos = { x = -915.289, y = 387.307, z = -127.395 }, rot = { x = 0.000, y = 1.785, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 44003, gadget_id = 70310241, pos = { x = -890.295, y = 387.307, z = -128.174 }, rot = { x = 0.000, y = 1.785, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 44004, gadget_id = 70310241, pos = { x = -889.516, y = 387.307, z = -103.193 }, rot = { x = 0.000, y = 1.785, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 44007, gadget_id = 70211132, pos = { x = -915.657, y = 387.747, z = -114.678 }, rot = { x = 0.000, y = 86.519, z = 0.000 }, level = 16, drop_tag = "解谜超级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 44016, gadget_id = 70310244, pos = { x = -1000.000, y = 460.311, z = -113.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 44022, gadget_id = 70360001, pos = { x = -902.592, y = 388.061, z = -115.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 411 } }, area_id = 403 },
	{ config_id = 44025, gadget_id = 70310244, pos = { x = -902.592, y = 388.061, z = -115.762 }, rot = { x = 0.000, y = 48.471, z = 0.000 }, level = 20, persistent = true, area_id = 403 }
}

-- 区域
regions = {
	-- groupload判断finish为1保底
	{ config_id = 44020, shape = RegionShape.SPHERE, radius = 40, pos = { x = -902.365, y = 387.807, z = -115.562 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1044006, name = "SELECT_OPTION_44006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_44006", action = "action_EVENT_SELECT_OPTION_44006", trigger_count = 0 },
	{ config_id = 1044008, name = "TIME_AXIS_PASS_44008", event = EventType.EVENT_TIME_AXIS_PASS, source = "star2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_44008", trigger_count = 0 },
	{ config_id = 1044009, name = "TIME_AXIS_PASS_44009", event = EventType.EVENT_TIME_AXIS_PASS, source = "star3", condition = "", action = "action_EVENT_TIME_AXIS_PASS_44009", trigger_count = 0 },
	{ config_id = 1044010, name = "TIME_AXIS_PASS_44010", event = EventType.EVENT_TIME_AXIS_PASS, source = "star4", condition = "", action = "action_EVENT_TIME_AXIS_PASS_44010", trigger_count = 0 },
	{ config_id = 1044011, name = "TIME_AXIS_PASS_44011", event = EventType.EVENT_TIME_AXIS_PASS, source = "star5", condition = "", action = "action_EVENT_TIME_AXIS_PASS_44011", trigger_count = 0 },
	{ config_id = 1044012, name = "TIME_AXIS_PASS_44012", event = EventType.EVENT_TIME_AXIS_PASS, source = "star6", condition = "", action = "action_EVENT_TIME_AXIS_PASS_44012", trigger_count = 0 },
	{ config_id = 1044013, name = "TIME_AXIS_PASS_44013", event = EventType.EVENT_TIME_AXIS_PASS, source = "star7", condition = "", action = "action_EVENT_TIME_AXIS_PASS_44013", trigger_count = 0 },
	{ config_id = 1044014, name = "TIME_AXIS_PASS_44014", event = EventType.EVENT_TIME_AXIS_PASS, source = "star8", condition = "", action = "action_EVENT_TIME_AXIS_PASS_44014", trigger_count = 0 },
	{ config_id = 1044015, name = "TIME_AXIS_PASS_44015", event = EventType.EVENT_TIME_AXIS_PASS, source = "star9", condition = "", action = "action_EVENT_TIME_AXIS_PASS_44015", trigger_count = 0 },
	{ config_id = 1044017, name = "PLATFORM_REACH_POINT_44017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_44017", action = "action_EVENT_PLATFORM_REACH_POINT_44017", trigger_count = 0 },
	{ config_id = 1044019, name = "SELECT_OPTION_44019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_44019", action = "action_EVENT_SELECT_OPTION_44019", trigger_count = 0 },
	-- groupload判断finish为1保底
	{ config_id = 1044020, name = "ENTER_REGION_44020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44020", action = "action_EVENT_ENTER_REGION_44020", trigger_count = 0 },
	-- 开宝箱finish为1
	{ config_id = 1044021, name = "GADGET_STATE_CHANGE_44021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44021", action = "action_EVENT_GADGET_STATE_CHANGE_44021", trigger_count = 0 },
	{ config_id = 1044023, name = "SELECT_OPTION_44023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_44023", action = "action_EVENT_SELECT_OPTION_44023", trigger_count = 0 },
	{ config_id = 1044026, name = "TIME_AXIS_PASS_44026", event = EventType.EVENT_TIME_AXIS_PASS, source = "route", condition = "", action = "action_EVENT_TIME_AXIS_PASS_44026", trigger_count = 0 },
	{ config_id = 1044027, name = "GROUP_LOAD_44027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_44027", action = "action_EVENT_GROUP_LOAD_44027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 44005, gadget_id = 70310244, pos = { x = -902.592, y = 388.061, z = -115.762 }, rot = { x = 0.000, y = 48.471, z = 0.000 }, level = 20, isOneoff = true, persistent = true, area_id = 403 }
	},
	regions = {
		{ config_id = 44024, shape = RegionShape.SPHERE, radius = 30, pos = { x = -905.460, y = 387.807, z = -115.294 }, area_id = 403 }
	},
	triggers = {
		{ config_id = 1044018, name = "ANY_GADGET_DIE_44018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_44018", action = "action_EVENT_ANY_GADGET_DIE_44018", trigger_count = 0 },
		{ config_id = 1044024, name = "ENTER_REGION_44024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44024", action = "action_EVENT_ENTER_REGION_44024", trigger_count = 0 }
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
		gadgets = { 44001, 44002, 44003, 44004, 44007, 44022, 44025 },
		regions = { 44020 },
		triggers = { "SELECT_OPTION_44006", "TIME_AXIS_PASS_44008", "TIME_AXIS_PASS_44009", "TIME_AXIS_PASS_44010", "TIME_AXIS_PASS_44011", "TIME_AXIS_PASS_44012", "TIME_AXIS_PASS_44013", "TIME_AXIS_PASS_44014", "TIME_AXIS_PASS_44015", "PLATFORM_REACH_POINT_44017", "SELECT_OPTION_44019", "ENTER_REGION_44020", "GADGET_STATE_CHANGE_44021", "SELECT_OPTION_44023", "TIME_AXIS_PASS_44026", "GROUP_LOAD_44027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 44016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_SELECT_OPTION_44006(context, evt)
	-- 判断是gadgetid 44022 option_id 411
	if 44022 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_44006(context, evt)
	-- 创建标识为"star2"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star2", {1}, false)
	
	
	-- 创建标识为"star3"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star3", {2}, false)
	
	
	-- 创建标识为"star4"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star4", {3}, false)
	
	
	-- 创建标识为"star5"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star5", {4}, false)
	
	
	-- 创建标识为"star6"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star6", {5}, false)
	
	
	-- 创建标识为"star7"，时间节点为{6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star7", {6}, false)
	
	
	-- 创建标识为"star8"，时间节点为{7}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star8", {7}, false)
	
	
	-- 创建标识为"star9"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star9", {8}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003140, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003140) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003141, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003141) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003142, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003142) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003143, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003143) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003144, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003144) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003145, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003145) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003146, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003146) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44015(context, evt)
	ScriptLib.RefreshGroup(context, { group_id = 199003147, suite = 1 }) 
	 ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003147) 
	 ScriptLib.CreateGadget(context, { config_id = 44016 })
	 ScriptLib.SetPlatformRouteId(context, 44016, 900300044)
	 ScriptLib.StartPlatform(context, 44016) 
	
	local pos = {x=-953, y=410, z=-114.5}
	  local pos_follow = {x=0, y=0, z=0}
	 ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 5.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 6,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_44017(context, evt)
	-- 判断是gadgetid 为 44016的移动平台，是否到达了900300044 的路线中的 3 点
	
	if 44016 ~= evt.param1 then
	  return false
	end
	
	if 900300044 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_44017(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 44016, 900300048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 改变指定group组199003044中， configid为44007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199003044, 44007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"route"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "route", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_44019(context, evt)
	-- 判断是gadgetid 44022 option_id 411
	if 44022 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_44019(context, evt)
	 ScriptLib.SetGroupVariableValue(context, "finish", 1)
	ScriptLib.RefreshGroup(context, { group_id = 199003139, suite = 1 }) 
	ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003139) 
	ScriptLib.SetGroupVariableValueByGroup(context, "weather", 3, 199003100)
	ScriptLib.SetWeatherAreaState(context, 9005, 1)
	ScriptLib.SetWeatherAreaState(context, 9006, 0)
	ScriptLib.SetWeatherAreaState(context, 9007, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_44020(context, evt)
	if evt.param1 ~= 44020 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003139, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 199003139) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"star2"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star2", {1}, false)
	
	
	-- 创建标识为"star3"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star3", {2}, false)
	
	
	-- 创建标识为"star4"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star4", {3}, false)
	
	
	-- 创建标识为"star5"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star5", {4}, false)
	
	
	-- 创建标识为"star6"，时间节点为{5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star6", {5}, false)
	
	
	-- 创建标识为"star7"，时间节点为{6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star7", {6}, false)
	
	
	-- 创建标识为"star8"，时间节点为{7}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star8", {7}, false)
	
	
	-- 创建标识为"star9"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "star9", {8}, false)
	
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 44025, 900300047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 44025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_44021(context, evt)
	if 44007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44021(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44025 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 44016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_44023(context, evt)
	-- 判断是gadgetid 44022 option_id 411
	if 44022 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_44023(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 44025, 900300047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 44025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199003044, EntityType.GADGET, 44022 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_44026(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 44016, 900300048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 44016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_44027(context, evt)
	-- 判断变量"finish"为2
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_44027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003139, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003140, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003141, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003142, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003143, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003144, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003145, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003146, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003147, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end