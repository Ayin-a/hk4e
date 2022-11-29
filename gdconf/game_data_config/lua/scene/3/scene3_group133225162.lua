-- 基础信息
local base_info = {
	group_id = 133225162
}

-- Trigger变量
local defs = {
	point_sum = 23,
	route_2 = 322500058,
	gadget_seelie = 162001,
	route_decal = 322500060,
	route_back = 322500059
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1
defs.decal_final_point = 4
defs.back_point = 10

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
	{ config_id = 162001, gadget_id = 70710010, pos = { x = -6280.698, y = 224.154, z = -2678.873 }, rot = { x = 342.463, y = 200.021, z = 0.000 }, level = 33, route_id = 322500058, start_route = false, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 底座提交
	{ config_id = 1162002, name = "VARIABLE_CHANGE_162002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_162002", action = "action_EVENT_VARIABLE_CHANGE_162002" },
	-- 显示符文
	{ config_id = 1162003, name = "PLATFORM_REACH_POINT_162003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_162003", action = "action_EVENT_PLATFORM_REACH_POINT_162003" },
	{ config_id = 1162004, name = "PLATFORM_REACH_POINT_162004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_162004", action = "", trigger_count = 0 },
	{ config_id = 1162005, name = "AVATAR_NEAR_PLATFORM_162005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_162005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_162005", trigger_count = 0 },
	{ config_id = 1162006, name = "VARIABLE_CHANGE_162006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_162006", action = "action_EVENT_VARIABLE_CHANGE_162006" },
	{ config_id = 1162007, name = "GROUP_LOAD_162007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_162007", action = "action_EVENT_GROUP_LOAD_162007", trigger_count = 0 },
	-- 石头获得，返回
	{ config_id = 1162008, name = "VARIABLE_CHANGE_162008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_162008", action = "action_EVENT_VARIABLE_CHANGE_162008" },
	-- 如果已经拿过石头，设置路径为符文
	{ config_id = 1162009, name = "GADGET_CREATE_162009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_162009", action = "action_EVENT_GADGET_CREATE_162009", trigger_count = 0 },
	-- 已经放置石头，直接开启符文
	{ config_id = 1162010, name = "GADGET_CREATE_162010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_162010", action = "action_EVENT_GADGET_CREATE_162010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "stone_progress", value = 0, no_refresh = true },
	{ config_id = 2, name = "start", value = 0, no_refresh = true }
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
		gadgets = { 162001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_162002", "PLATFORM_REACH_POINT_162003", "PLATFORM_REACH_POINT_162004", "AVATAR_NEAR_PLATFORM_162005", "VARIABLE_CHANGE_162008", "GADGET_CREATE_162009", "GADGET_CREATE_162010" },
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
		triggers = { "VARIABLE_CHANGE_162006", "GROUP_LOAD_162007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_162002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_162002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 162001, 322500060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 162001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_162003(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_162003(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 162001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 162001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "decal_finish_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "decal_finish_2", 1, 133225163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133225162, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_162004(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_162005(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_162005(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 162001) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_162006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_162006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225162, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_162007(context, evt)
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_162007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133225162, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_162008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"stone_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_162008(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 162001, 322500059) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 162001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_162009(context, evt)
	if 162001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stone_progress"为1
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_162009(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 162001, 322500060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 将本组内变量名为 "StoneCanPlace_C" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "StoneCanPlace_C", 1, 133225094) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_162010(context, evt)
	if 162001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"stone_progress"为2
	if ScriptLib.GetGroupVariableValue(context, "stone_progress") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_162010(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 162001, 322500060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 162001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end