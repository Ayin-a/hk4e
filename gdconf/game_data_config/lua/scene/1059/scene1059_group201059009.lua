-- 基础信息
local base_info = {
	group_id = 201059009
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
	{ config_id = 9001, gadget_id = 70350152, pos = { x = -250.941, y = 126.405, z = 24.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, start_route = false },
	{ config_id = 9002, gadget_id = 70350153, pos = { x = -249.363, y = 119.906, z = 89.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 3, start_route = false },
	-- 下面补位
	{ config_id = 9003, gadget_id = 70350152, pos = { x = -250.941, y = 126.405, z = 24.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	-- 上面补位
	{ config_id = 9004, gadget_id = 70350152, pos = { x = -250.941, y = 153.268, z = 24.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 9008, gadget_id = 70350153, pos = { x = -249.363, y = 119.906, z = 89.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false },
	{ config_id = 9009, gadget_id = 70350153, pos = { x = -249.363, y = 146.769, z = 89.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009005, name = "VARIABLE_CHANGE_9005", event = EventType.EVENT_VARIABLE_CHANGE, source = "start", condition = "condition_EVENT_VARIABLE_CHANGE_9005", action = "action_EVENT_VARIABLE_CHANGE_9005" },
	{ config_id = 1009006, name = "PLATFORM_REACH_POINT_9006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_9006", action = "action_EVENT_PLATFORM_REACH_POINT_9006", trigger_count = 0 },
	{ config_id = 1009007, name = "GADGET_CREATE_9007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9007", action = "action_EVENT_GADGET_CREATE_9007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = false }
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
		gadgets = { 9001, 9002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_9005", "PLATFORM_REACH_POINT_9006", "GADGET_CREATE_9007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9003, 9008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 9004, 9009 },
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
function condition_EVENT_VARIABLE_CHANGE_9005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"start"为1
	if ScriptLib.GetGroupVariableValue(context, "start") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9005(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 9001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 9002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_9006(context, evt)
	-- 判断是gadgetid 为 9001的移动平台，是否到达了2 的路线中的 1 点
	
	if 9001 ~= evt.param1 then
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
function action_EVENT_PLATFORM_REACH_POINT_9006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9007(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201059009, 3)
	
	return 0
end