-- 基础信息
local base_info = {
	group_id = 133225128
}

-- Trigger变量
local defs = {
	point_sum = 14,
	route_2 = 322500046,
	gadget_seelie = 128001,
	route_decal = 322500047,
	route_back = 322500051
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1
defs.decal_final_point = 4
defs.back_point = 8

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
	{ config_id = 128001, gadget_id = 70710010, pos = { x = -6328.697, y = 254.569, z = -2535.149 }, rot = { x = 342.463, y = 200.021, z = 0.000 }, level = 33, route_id = 322500046, start_route = false, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 底座提交
	{ config_id = 1128002, name = "VARIABLE_CHANGE_128002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_128002", action = "action_EVENT_VARIABLE_CHANGE_128002" },
	-- 显示符文
	{ config_id = 1128003, name = "PLATFORM_REACH_POINT_128003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_128003", action = "action_EVENT_PLATFORM_REACH_POINT_128003" },
	{ config_id = 1128004, name = "PLATFORM_REACH_POINT_128004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_128004", action = "", trigger_count = 0 },
	{ config_id = 1128005, name = "AVATAR_NEAR_PLATFORM_128005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_128005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_128005", trigger_count = 0 },
	{ config_id = 1128006, name = "VARIABLE_CHANGE_128006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_128006", action = "action_EVENT_VARIABLE_CHANGE_128006" },
	{ config_id = 1128007, name = "GROUP_LOAD_128007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_128007", action = "action_EVENT_GROUP_LOAD_128007", trigger_count = 0 },
	-- 石头捡到，返回
	{ config_id = 1128008, name = "VARIABLE_CHANGE_128008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_128008", action = "action_EVENT_VARIABLE_CHANGE_128008" },
	-- 已经捡到石头，设置路径
	{ config_id = 1128009, name = "GADGET_CREATE_128009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_128009", action = "action_EVENT_GADGET_CREATE_128009", trigger_count = 0 },
	-- 石头放置，直接显示符文
	{ config_id = 1128010, name = "GADGET_CREATE_128010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_128010", action = "action_EVENT_GADGET_CREATE_128010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "stone_progress", value = 0, no_refresh = true },
	{ config_id = 2, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1128011, name = "PLATFORM_REACH_POINT_128011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_128011", action = "action_EVENT_PLATFORM_REACH_POINT_128011" }
	}
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 128001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_128002", "PLATFORM_REACH_POINT_128003", "PLATFORM_REACH_POINT_128004", "AVATAR_NEAR_PLATFORM_128005", "VARIABLE_CHANGE_128008", "GADGET_CREATE_128009", "GADGET_CREATE_128010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 最终空suit,
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_128006", "GROUP_LOAD_128007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_128002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_128002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 128001, 322500047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 128001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-6336，259，-2536），持续时间为6秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6336, y=259, z=-2536}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 6, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_128003(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_decal ~= evt.param2 then
	return false
	end
	
	if  defs.decal_final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_128003(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 128001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 128001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "decal_finish_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "decal_finish_2", 1, 133225091) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133225128, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_128004(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_128005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_128005(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 128001) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_128006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_128006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225128, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_128007(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_128007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225128, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_128008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_128008(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 128001, 322500051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 128001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_128009(context, evt)
	if 128001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stone_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_128009(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 128001, 322500047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_128010(context, evt)
	if 128001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stone_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_128010(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 128001, 322500047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 128001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end