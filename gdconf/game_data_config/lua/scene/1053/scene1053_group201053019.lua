-- 基础信息
local base_info = {
	group_id = 201053019
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
	{ config_id = 19007, gadget_id = 70380007, pos = { x = -69.463, y = 33.368, z = 100.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false }
}

-- 区域
regions = {
	{ config_id = 19001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -129.601, y = 34.288, z = 49.288 } },
	{ config_id = 19004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -116.644, y = 41.383, z = 107.872 } },
	{ config_id = 19005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -125.233, y = 61.639, z = 148.554 } },
	{ config_id = 19006, shape = RegionShape.SPHERE, radius = 15, pos = { x = -39.640, y = 63.100, z = 118.654 } },
	{ config_id = 19009, shape = RegionShape.SPHERE, radius = 12, pos = { x = -18.818, y = 112.312, z = 69.035 } },
	{ config_id = 19014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -7.150, y = 70.197, z = 87.456 } }
}

-- 触发器
triggers = {
	{ config_id = 1019001, name = "ENTER_REGION_19001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19001", action = "action_EVENT_ENTER_REGION_19001" },
	{ config_id = 1019002, name = "PLATFORM_REACH_POINT_19002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19002", action = "action_EVENT_PLATFORM_REACH_POINT_19002", trigger_count = 0 },
	{ config_id = 1019003, name = "VARIABLE_CHANGE_19003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_19003", action = "action_EVENT_VARIABLE_CHANGE_19003", trigger_count = 0 },
	{ config_id = 1019004, name = "ENTER_REGION_19004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19004", action = "action_EVENT_ENTER_REGION_19004" },
	{ config_id = 1019005, name = "ENTER_REGION_19005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19005", action = "action_EVENT_ENTER_REGION_19005" },
	{ config_id = 1019006, name = "ENTER_REGION_19006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19006", action = "action_EVENT_ENTER_REGION_19006" },
	{ config_id = 1019008, name = "PLATFORM_REACH_POINT_19008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19008", action = "action_EVENT_PLATFORM_REACH_POINT_19008", trigger_count = 0 },
	{ config_id = 1019009, name = "ENTER_REGION_19009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19009", action = "action_EVENT_ENTER_REGION_19009" },
	{ config_id = 1019011, name = "PLATFORM_REACH_POINT_19011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19011", action = "action_EVENT_PLATFORM_REACH_POINT_19011", trigger_count = 0 },
	{ config_id = 1019012, name = "TIMER_EVENT_19012", event = EventType.EVENT_TIMER_EVENT, source = "waterRaise", condition = "", action = "action_EVENT_TIMER_EVENT_19012", trigger_count = 0 },
	{ config_id = 1019013, name = "VARIABLE_CHANGE_19013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_19013", action = "action_EVENT_VARIABLE_CHANGE_19013" },
	{ config_id = 1019014, name = "ENTER_REGION_19014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19014", action = "action_EVENT_ENTER_REGION_19014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "waterPath", value = 0, no_refresh = false },
	{ config_id = 2, name = "startPlatform7", value = 0, no_refresh = false },
	{ config_id = 3, name = "startPlatform6", value = 0, no_refresh = false }
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
		gadgets = { 19007 },
		regions = { 19001, 19004, 19005, 19006, 19009, 19014 },
		triggers = { "ENTER_REGION_19001", "PLATFORM_REACH_POINT_19002", "VARIABLE_CHANGE_19003", "ENTER_REGION_19004", "ENTER_REGION_19005", "ENTER_REGION_19006", "PLATFORM_REACH_POINT_19008", "ENTER_REGION_19009", "PLATFORM_REACH_POINT_19011", "TIMER_EVENT_19012", "VARIABLE_CHANGE_19013", "ENTER_REGION_19014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_19001(context, evt)
	if evt.param1 ~= 19001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19001(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 19007, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19002(context, evt)
	-- 判断是gadgetid 为 19007的移动平台，是否到达了2 的路线中的 1 点
	
	if 19007 ~= evt.param1 then
	  return false
	end
	
	if 2 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19002(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_19003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"waterPath"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "waterPath", 201053019) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_19003(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 19007, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19004(context, evt)
	if evt.param1 ~= 19004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19004(context, evt)
	-- 将本组内变量名为 "icon6Appear" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "icon6Appear", 2, 201053021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201053019的对象,请求一次调用,并将string参数："waterRaise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201053019, "waterRaise", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19005(context, evt)
	if evt.param1 ~= 19005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19005(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 19007, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19006(context, evt)
	if evt.param1 ~= 19006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19006(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 19007, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 调用提示id为 10530108 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10530108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19008(context, evt)
	-- 判断是gadgetid 为 19007的移动平台，是否到达了3 的路线中的 1 点
	
	if 19007 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19008(context, evt)
	-- 将本组内变量名为 "icon6Appear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "icon6Appear", 1, 201053021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19009(context, evt)
	if evt.param1 ~= 19009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19009(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 19007, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19011(context, evt)
	-- 判断是gadgetid 为 19007的移动平台，是否到达了3 的路线中的 1 点
	
	if 19007 ~= evt.param1 then
	  return false
	end
	
	if 3 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19011(context, evt)
	-- 将本组内变量名为 "icon3Appear" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "icon3Appear", 2, 201053021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_19012(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_19013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"startPlatform7"为1
	if ScriptLib.GetGroupVariableValue(context, "startPlatform7") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_19013(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 19007, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19014(context, evt)
	if evt.param1 ~= 19014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19014(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 19007, 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 19007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end