-- 基础信息
local base_info = {
	group_id = 220134033
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
	{ config_id = 33001, gadget_id = 70220113, pos = { x = 500.131, y = 613.465, z = -1591.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033002, name = "VARIABLE_CHANGE_33002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_33002", action = "action_EVENT_VARIABLE_CHANGE_33002", trigger_count = 0 },
	{ config_id = 1033003, name = "GROUP_LOAD_33003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_33003", action = "action_EVENT_GROUP_LOAD_33003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "door1", value = 0, no_refresh = true },
	{ config_id = 2, name = "door2", value = 0, no_refresh = true },
	{ config_id = 3, name = "door3", value = 0, no_refresh = true },
	{ config_id = 4, name = "door4", value = 0, no_refresh = true },
	{ config_id = 5, name = "starreach", value = 0, no_refresh = true }
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
		gadgets = { 33001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_33002", "GROUP_LOAD_33003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_33002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"starreach"为1
	if ScriptLib.GetGroupVariableValue(context, "starreach") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_33002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 33001, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 33001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_33003(context, evt)
	-- 判断变量"starreach"为1
	if ScriptLib.GetGroupVariableValue(context, "starreach") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_33003(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 33001, 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 33001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end