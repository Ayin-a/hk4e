-- 基础信息
local base_info = {
	group_id = 201058008
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
	{ config_id = 8001, gadget_id = 70350071, pos = { x = 0.830, y = 90.190, z = 65.550 }, rot = { x = 290.564, y = 132.370, z = 180.011 }, level = 1 },
	{ config_id = 8002, gadget_id = 70350071, pos = { x = -41.511, y = 91.040, z = 101.978 }, rot = { x = 284.941, y = 312.880, z = 177.439 }, level = 1 },
	{ config_id = 8003, gadget_id = 70350071, pos = { x = -83.584, y = 91.622, z = 138.379 }, rot = { x = 286.246, y = 129.517, z = 180.014 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8004, gadget_id = 70350071, pos = { x = -120.900, y = 94.620, z = 135.470 }, rot = { x = 275.338, y = 225.131, z = 178.962 }, level = 1 },
	{ config_id = 8005, gadget_id = 70350071, pos = { x = -90.480, y = 90.960, z = 172.380 }, rot = { x = 285.553, y = 36.526, z = 180.152 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8006, gadget_id = 70350071, pos = { x = -44.860, y = 101.340, z = 179.120 }, rot = { x = 284.179, y = 326.087, z = 172.040 }, level = 1 },
	{ config_id = 8007, gadget_id = 70350061, pos = { x = -6.540, y = 99.550, z = 146.070 }, rot = { x = 289.328, y = 124.980, z = 176.966 }, level = 1 },
	{ config_id = 8008, gadget_id = 70350071, pos = { x = -4.460, y = 94.610, z = 105.630 }, rot = { x = 275.099, y = 39.113, z = 178.271 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8009, gadget_id = 70350071, pos = { x = -39.000, y = 96.520, z = 65.790 }, rot = { x = 270.795, y = 83.543, z = 321.816 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8010, gadget_id = 70350071, pos = { x = -43.311, y = 95.430, z = 141.087 }, rot = { x = 294.423, y = 40.582, z = 180.009 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8011, gadget_id = 71700118, pos = { x = -21.169, y = 88.392, z = 84.956 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 8012, gadget_id = 71700118, pos = { x = -26.359, y = 97.442, z = 160.813 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, route_id = 10, start_route = false },
	{ config_id = 8013, gadget_id = 71700119, pos = { x = -104.227, y = 88.383, z = 154.422 }, rot = { x = 0.000, y = 38.000, z = 0.000 }, level = 1, route_id = 18, start_route = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008014, name = "VARIABLE_CHANGE_8014", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage1", condition = "condition_EVENT_VARIABLE_CHANGE_8014", action = "action_EVENT_VARIABLE_CHANGE_8014", trigger_count = 0 },
	{ config_id = 1008015, name = "VARIABLE_CHANGE_8015", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage1", condition = "condition_EVENT_VARIABLE_CHANGE_8015", action = "action_EVENT_VARIABLE_CHANGE_8015", trigger_count = 0 },
	{ config_id = 1008016, name = "VARIABLE_CHANGE_8016", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage1", condition = "condition_EVENT_VARIABLE_CHANGE_8016", action = "action_EVENT_VARIABLE_CHANGE_8016", trigger_count = 0 },
	{ config_id = 1008017, name = "VARIABLE_CHANGE_8017", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage1", condition = "condition_EVENT_VARIABLE_CHANGE_8017", action = "action_EVENT_VARIABLE_CHANGE_8017", trigger_count = 0 },
	{ config_id = 1008018, name = "VARIABLE_CHANGE_8018", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage1", condition = "condition_EVENT_VARIABLE_CHANGE_8018", action = "action_EVENT_VARIABLE_CHANGE_8018", trigger_count = 0 },
	{ config_id = 1008019, name = "VARIABLE_CHANGE_8019", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage1", condition = "condition_EVENT_VARIABLE_CHANGE_8019", action = "action_EVENT_VARIABLE_CHANGE_8019", trigger_count = 0 },
	{ config_id = 1008020, name = "VARIABLE_CHANGE_8020", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage1", condition = "condition_EVENT_VARIABLE_CHANGE_8020", action = "action_EVENT_VARIABLE_CHANGE_8020", trigger_count = 0 },
	{ config_id = 1008021, name = "VARIABLE_CHANGE_8021", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage1", condition = "condition_EVENT_VARIABLE_CHANGE_8021", action = "action_EVENT_VARIABLE_CHANGE_8021", trigger_count = 0 },
	{ config_id = 1008022, name = "TIMER_EVENT_8022", event = EventType.EVENT_TIMER_EVENT, source = "state1", condition = "", action = "action_EVENT_TIMER_EVENT_8022", trigger_count = 0 },
	{ config_id = 1008023, name = "TIMER_EVENT_8023", event = EventType.EVENT_TIMER_EVENT, source = "state2", condition = "", action = "action_EVENT_TIMER_EVENT_8023", trigger_count = 0 },
	{ config_id = 1008025, name = "VARIABLE_CHANGE_8025", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage2", condition = "condition_EVENT_VARIABLE_CHANGE_8025", action = "action_EVENT_VARIABLE_CHANGE_8025", trigger_count = 0 },
	{ config_id = 1008026, name = "VARIABLE_CHANGE_8026", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage2", condition = "condition_EVENT_VARIABLE_CHANGE_8026", action = "action_EVENT_VARIABLE_CHANGE_8026", trigger_count = 0 },
	{ config_id = 1008027, name = "VARIABLE_CHANGE_8027", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage2", condition = "condition_EVENT_VARIABLE_CHANGE_8027", action = "action_EVENT_VARIABLE_CHANGE_8027", trigger_count = 0 },
	{ config_id = 1008028, name = "VARIABLE_CHANGE_8028", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage2", condition = "condition_EVENT_VARIABLE_CHANGE_8028", action = "action_EVENT_VARIABLE_CHANGE_8028", trigger_count = 0 },
	{ config_id = 1008029, name = "VARIABLE_CHANGE_8029", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage2", condition = "condition_EVENT_VARIABLE_CHANGE_8029", action = "action_EVENT_VARIABLE_CHANGE_8029", trigger_count = 0 },
	{ config_id = 1008030, name = "VARIABLE_CHANGE_8030", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage2", condition = "condition_EVENT_VARIABLE_CHANGE_8030", action = "action_EVENT_VARIABLE_CHANGE_8030", trigger_count = 0 },
	{ config_id = 1008031, name = "VARIABLE_CHANGE_8031", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage2", condition = "condition_EVENT_VARIABLE_CHANGE_8031", action = "action_EVENT_VARIABLE_CHANGE_8031", trigger_count = 0 },
	{ config_id = 1008032, name = "VARIABLE_CHANGE_8032", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage2", condition = "condition_EVENT_VARIABLE_CHANGE_8032", action = "action_EVENT_VARIABLE_CHANGE_8032", trigger_count = 0 },
	{ config_id = 1008033, name = "TIMER_EVENT_8033", event = EventType.EVENT_TIMER_EVENT, source = "state3", condition = "", action = "action_EVENT_TIMER_EVENT_8033", trigger_count = 0 },
	{ config_id = 1008034, name = "TIMER_EVENT_8034", event = EventType.EVENT_TIMER_EVENT, source = "state4", condition = "", action = "action_EVENT_TIMER_EVENT_8034", trigger_count = 0 },
	{ config_id = 1008035, name = "VARIABLE_CHANGE_8035", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage3", condition = "condition_EVENT_VARIABLE_CHANGE_8035", action = "action_EVENT_VARIABLE_CHANGE_8035", trigger_count = 0 },
	{ config_id = 1008036, name = "VARIABLE_CHANGE_8036", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage3", condition = "condition_EVENT_VARIABLE_CHANGE_8036", action = "action_EVENT_VARIABLE_CHANGE_8036", trigger_count = 0 },
	{ config_id = 1008037, name = "VARIABLE_CHANGE_8037", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage3", condition = "condition_EVENT_VARIABLE_CHANGE_8037", action = "action_EVENT_VARIABLE_CHANGE_8037", trigger_count = 0 },
	{ config_id = 1008038, name = "VARIABLE_CHANGE_8038", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage3", condition = "condition_EVENT_VARIABLE_CHANGE_8038", action = "action_EVENT_VARIABLE_CHANGE_8038", trigger_count = 0 },
	{ config_id = 1008039, name = "VARIABLE_CHANGE_8039", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage3", condition = "condition_EVENT_VARIABLE_CHANGE_8039", action = "action_EVENT_VARIABLE_CHANGE_8039", trigger_count = 0 },
	{ config_id = 1008040, name = "VARIABLE_CHANGE_8040", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage3", condition = "condition_EVENT_VARIABLE_CHANGE_8040", action = "action_EVENT_VARIABLE_CHANGE_8040", trigger_count = 0 },
	{ config_id = 1008041, name = "VARIABLE_CHANGE_8041", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage3", condition = "condition_EVENT_VARIABLE_CHANGE_8041", action = "action_EVENT_VARIABLE_CHANGE_8041", trigger_count = 0 },
	{ config_id = 1008042, name = "VARIABLE_CHANGE_8042", event = EventType.EVENT_VARIABLE_CHANGE, source = "stage3", condition = "condition_EVENT_VARIABLE_CHANGE_8042", action = "action_EVENT_VARIABLE_CHANGE_8042", trigger_count = 0 },
	{ config_id = 1008043, name = "TIMER_EVENT_8043", event = EventType.EVENT_TIMER_EVENT, source = "state5", condition = "", action = "action_EVENT_TIMER_EVENT_8043", trigger_count = 0 },
	{ config_id = 1008044, name = "TIMER_EVENT_8044", event = EventType.EVENT_TIMER_EVENT, source = "state6", condition = "", action = "action_EVENT_TIMER_EVENT_8044", trigger_count = 0 },
	{ config_id = 1008045, name = "TIMER_EVENT_8045", event = EventType.EVENT_TIMER_EVENT, source = "state7", condition = "", action = "action_EVENT_TIMER_EVENT_8045", trigger_count = 0 },
	{ config_id = 1008046, name = "TIMER_EVENT_8046", event = EventType.EVENT_TIMER_EVENT, source = "state8", condition = "", action = "action_EVENT_TIMER_EVENT_8046", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "stage1", value = 0, no_refresh = false },
	{ config_id = 2, name = "stage1state", value = 1, no_refresh = false },
	{ config_id = 3, name = "stage2", value = 0, no_refresh = false },
	{ config_id = 4, name = "stage2state", value = 1, no_refresh = false },
	{ config_id = 5, name = "stage3", value = 0, no_refresh = false },
	{ config_id = 6, name = "stage3state", value = 1, no_refresh = false }
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
		gadgets = { 8001, 8002, 8003, 8004, 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012, 8013 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_8014", "VARIABLE_CHANGE_8015", "VARIABLE_CHANGE_8016", "VARIABLE_CHANGE_8017", "VARIABLE_CHANGE_8018", "VARIABLE_CHANGE_8019", "VARIABLE_CHANGE_8020", "VARIABLE_CHANGE_8021", "TIMER_EVENT_8022", "TIMER_EVENT_8023", "VARIABLE_CHANGE_8025", "VARIABLE_CHANGE_8026", "VARIABLE_CHANGE_8027", "VARIABLE_CHANGE_8028", "VARIABLE_CHANGE_8029", "VARIABLE_CHANGE_8030", "VARIABLE_CHANGE_8031", "VARIABLE_CHANGE_8032", "TIMER_EVENT_8033", "TIMER_EVENT_8034", "VARIABLE_CHANGE_8035", "VARIABLE_CHANGE_8036", "VARIABLE_CHANGE_8037", "VARIABLE_CHANGE_8038", "VARIABLE_CHANGE_8039", "VARIABLE_CHANGE_8040", "VARIABLE_CHANGE_8041", "VARIABLE_CHANGE_8042", "TIMER_EVENT_8043", "TIMER_EVENT_8044", "TIMER_EVENT_8045", "TIMER_EVENT_8046" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage1"为102
	if ScriptLib.GetGroupVariableValue(context, "stage1") ~= 102 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8014(context, evt)
	-- 将本组内变量名为 "stage1state" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1state", 2, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state1", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8011, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage1"为203
	if ScriptLib.GetGroupVariableValue(context, "stage1") ~= 203 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8015(context, evt)
	-- 将本组内变量名为 "stage1state" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1state", 3, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state2", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8011, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage1"为304
	if ScriptLib.GetGroupVariableValue(context, "stage1") ~= 304 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8016(context, evt)
	-- 将本组内变量名为 "stage1state" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1state", 4, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state1", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8011, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage1"为401
	if ScriptLib.GetGroupVariableValue(context, "stage1") ~= 401 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8017(context, evt)
	-- 将本组内变量名为 "stage1state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1state", 1, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state2", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8011, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage1"为104
	if ScriptLib.GetGroupVariableValue(context, "stage1") ~= 104 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8018(context, evt)
	-- 将本组内变量名为 "stage1state" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1state", 4, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state1", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8011, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage1"为201
	if ScriptLib.GetGroupVariableValue(context, "stage1") ~= 201 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8019(context, evt)
	-- 将本组内变量名为 "stage1state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1state", 1, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state2", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8011, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage1"为302
	if ScriptLib.GetGroupVariableValue(context, "stage1") ~= 302 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8020(context, evt)
	-- 将本组内变量名为 "stage1state" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1state", 2, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state1", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8011, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage1"为403
	if ScriptLib.GetGroupVariableValue(context, "stage1") ~= 403 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8021(context, evt)
	-- 将本组内变量名为 "stage1state" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1state", 3, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state2", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8011, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8022(context, evt)
	-- 将configid为 8001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8023(context, evt)
	-- 将configid为 8001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage2"为102
	if ScriptLib.GetGroupVariableValue(context, "stage2") ~= 102 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8025(context, evt)
	-- 将本组内变量名为 "stage2state" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2state", 2, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state3", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8012, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage2"为203
	if ScriptLib.GetGroupVariableValue(context, "stage2") ~= 203 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8026(context, evt)
	-- 将本组内变量名为 "stage2state" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2state", 3, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state4", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8012, 12) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage2"为304
	if ScriptLib.GetGroupVariableValue(context, "stage2") ~= 304 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8027(context, evt)
	-- 将本组内变量名为 "stage2state" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2state", 4, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state3", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8012, 14) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage2"为401
	if ScriptLib.GetGroupVariableValue(context, "stage2") ~= 401 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8028(context, evt)
	-- 将本组内变量名为 "stage2state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2state", 1, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state4", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8012, 16) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage2"为104
	if ScriptLib.GetGroupVariableValue(context, "stage2") ~= 104 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8029(context, evt)
	-- 将本组内变量名为 "stage2state" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2state", 4, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state3", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8012, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8030(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage2"为201
	if ScriptLib.GetGroupVariableValue(context, "stage2") ~= 201 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8030(context, evt)
	-- 将本组内变量名为 "stage2state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2state", 1, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state4", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8012, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage2"为302
	if ScriptLib.GetGroupVariableValue(context, "stage2") ~= 302 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8031(context, evt)
	-- 将本组内变量名为 "stage2state" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2state", 2, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state3", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8012, 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage2"为403
	if ScriptLib.GetGroupVariableValue(context, "stage2") ~= 403 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8032(context, evt)
	-- 将本组内变量名为 "stage2state" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2state", 3, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state4", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8012, 17) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8033(context, evt)
	-- 将configid为 8006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8034(context, evt)
	-- 将configid为 8006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage3"为102
	if ScriptLib.GetGroupVariableValue(context, "stage3") ~= 102 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8035(context, evt)
	-- 将本组内变量名为 "stage3state" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3state", 2, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state5", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8013, 18) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage3"为203
	if ScriptLib.GetGroupVariableValue(context, "stage3") ~= 203 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8036(context, evt)
	-- 将本组内变量名为 "stage3state" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3state", 3, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state6" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state6", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8013, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage3"为304
	if ScriptLib.GetGroupVariableValue(context, "stage3") ~= 304 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8037(context, evt)
	-- 将本组内变量名为 "stage3state" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3state", 4, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state7" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state7", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8013, 22) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage3"为401
	if ScriptLib.GetGroupVariableValue(context, "stage3") ~= 401 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8038(context, evt)
	-- 将本组内变量名为 "stage3state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3state", 1, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state8" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state8", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8013, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage3"为104
	if ScriptLib.GetGroupVariableValue(context, "stage3") ~= 104 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8039(context, evt)
	-- 将本组内变量名为 "stage3state" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3state", 4, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state7" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state7", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8013, 19) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage3"为201
	if ScriptLib.GetGroupVariableValue(context, "stage3") ~= 201 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8040(context, evt)
	-- 将本组内变量名为 "stage3state" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3state", 1, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state8" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state8", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8013, 21) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage3"为302
	if ScriptLib.GetGroupVariableValue(context, "stage3") ~= 302 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8041(context, evt)
	-- 将本组内变量名为 "stage3state" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3state", 2, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state5", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8013, 23) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_8042(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stage3"为403
	if ScriptLib.GetGroupVariableValue(context, "stage3") ~= 403 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_8042(context, evt)
	-- 将本组内变量名为 "stage3state" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3state", 3, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：201058008的对象,请求一次调用,并将string参数："state6" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058008, "state6", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 8013, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 8013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8043(context, evt)
	-- 将configid为 8003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8044(context, evt)
	-- 将configid为 8003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8045(context, evt)
	-- 将configid为 8003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8046(context, evt)
	-- 将configid为 8003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 8005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end