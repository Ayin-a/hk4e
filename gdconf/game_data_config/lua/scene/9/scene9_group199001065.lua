-- 基础信息
local base_info = {
	group_id = 199001065
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
	{ config_id = 65001, gadget_id = 70380325, pos = { x = 193.476, y = 91.119, z = 391.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900100016, start_route = false, persistent = true, area_id = 402 },
	{ config_id = 65005, gadget_id = 70211101, pos = { x = 219.067, y = 83.755, z = 395.566 }, rot = { x = 7.341, y = 280.772, z = 7.268 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- WatorHeight=1 
	{ config_id = 1065003, name = "VARIABLE_CHANGE_65003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_65003", action = "action_EVENT_VARIABLE_CHANGE_65003", trigger_count = 0 },
	-- WatorHeight=2 
	{ config_id = 1065004, name = "VARIABLE_CHANGE_65004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_65004", action = "action_EVENT_VARIABLE_CHANGE_65004", trigger_count = 0 },
	{ config_id = 1065010, name = "GROUP_LOAD_65010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65010", action = "action_EVENT_GROUP_LOAD_65010", trigger_count = 0 },
	{ config_id = 1065011, name = "GROUP_LOAD_65011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65011", action = "action_EVENT_GROUP_LOAD_65011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "WatorHeight", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1065002, name = "GADGET_STATE_CHANGE_65002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65002", action = "action_EVENT_GADGET_STATE_CHANGE_65002", trigger_count = 0 },
		{ config_id = 1065006, name = "GADGET_STATE_CHANGE_65006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65006", action = "action_EVENT_GADGET_STATE_CHANGE_65006", trigger_count = 0 },
		{ config_id = 1065007, name = "GROUP_LOAD_65007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_65007", action = "action_EVENT_GROUP_LOAD_65007", trigger_count = 0 },
		{ config_id = 1065008, name = "PLATFORM_REACH_POINT_65008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_65008", action = "action_EVENT_PLATFORM_REACH_POINT_65008", trigger_count = 0 },
		{ config_id = 1065009, name = "PLATFORM_REACH_POINT_65009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_65009", action = "action_EVENT_PLATFORM_REACH_POINT_65009", trigger_count = 0 }
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
		gadgets = { 65001, 65005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_65003", "VARIABLE_CHANGE_65004", "GROUP_LOAD_65010", "GROUP_LOAD_65011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"WatorHeight"为1
	if ScriptLib.GetGroupVariableValue(context, "WatorHeight") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65003(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 65001, 900100016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 65001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_65004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"WatorHeight"为2
	if ScriptLib.GetGroupVariableValue(context, "WatorHeight") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_65004(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 65001, 900100105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 65001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_65010(context, evt)
	-- 判断变量"WatorHeight"为1
	if ScriptLib.GetGroupVariableValue(context, "WatorHeight") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65010(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 65001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_65011(context, evt)
	-- 判断变量"WatorHeight"为2
	if ScriptLib.GetGroupVariableValue(context, "WatorHeight") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_65011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199001065, EntityType.GADGET, 65001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end