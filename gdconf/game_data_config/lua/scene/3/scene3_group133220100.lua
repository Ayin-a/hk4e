-- 基础信息
local base_info = {
	group_id = 133220100
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 100007, monster_id = 24020301, pos = { x = -2276.505, y = 192.096, z = -4309.984 }, rot = { x = 0.000, y = 325.583, z = 0.000 }, level = 27, drop_tag = "拟生机关", isOneoff = true, pose_id = 100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 100001, gadget_id = 70380285, pos = { x = -2317.517, y = 200.000, z = -4273.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 322000099, start_route = false, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100002, name = "VARIABLE_CHANGE_100002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_100002", action = "action_EVENT_VARIABLE_CHANGE_100002", trigger_count = 0 },
	{ config_id = 1100003, name = "VARIABLE_CHANGE_100003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_100003", action = "action_EVENT_VARIABLE_CHANGE_100003", trigger_count = 0 },
	{ config_id = 1100004, name = "GROUP_LOAD_100004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_100004", action = "action_EVENT_GROUP_LOAD_100004", trigger_count = 0 },
	{ config_id = 1100009, name = "GROUP_LOAD_100009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_100009", action = "action_EVENT_GROUP_LOAD_100009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "waterdown", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 100006, monster_id = 24020301, pos = { x = -2345.911, y = 190.760, z = -4217.871 }, rot = { x = 0.000, y = 157.267, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 }
	},
	triggers = {
		{ config_id = 1100005, name = "PLATFORM_REACH_POINT_100005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_100005", action = "action_EVENT_PLATFORM_REACH_POINT_100005", trigger_count = 0 },
		{ config_id = 1100008, name = "GADGET_STATE_CHANGE_100008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_100008", action = "action_EVENT_GADGET_STATE_CHANGE_100008", trigger_count = 0 }
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
		gadgets = { 100001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_100002", "VARIABLE_CHANGE_100003", "GROUP_LOAD_100004", "GROUP_LOAD_100009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 100007 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_100004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_100002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_100002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 100001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_100003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"waterdown"为2
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_100003(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 100001, 322000100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 100001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_100004(context, evt)
	-- 判断变量"waterdown"为2
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_100004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220100, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_100009(context, evt)
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_100009(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 100001, 322000099) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 100001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end