-- 基础信息
local base_info = {
	group_id = 133106248
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
	{ config_id = 248001, gadget_id = 70380015, pos = { x = -145.239, y = 179.060, z = 929.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 310600092, start_route = false, persistent = true, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1248002, name = "PLATFORM_REACH_POINT_248002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_248002", action = "action_EVENT_PLATFORM_REACH_POINT_248002" },
	{ config_id = 1248003, name = "VARIABLE_CHANGE_248003", event = EventType.EVENT_VARIABLE_CHANGE, source = "finish", condition = "condition_EVENT_VARIABLE_CHANGE_248003", action = "action_EVENT_VARIABLE_CHANGE_248003" },
	{ config_id = 1248004, name = "GROUP_LOAD_248004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_248004", action = "action_EVENT_GROUP_LOAD_248004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 248001 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_248002", "VARIABLE_CHANGE_248003", "GROUP_LOAD_248004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_248002(context, evt)
	-- 判断是gadgetid 为 248001的移动平台，是否到达了310600092 的路线中的 1 点
	
	if 248001 ~= evt.param1 then
	  return false
	end
	
	if 310600092 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_248002(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_248003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_248003(context, evt)
	-- 通知场景上的所有玩家播放名字为310624801 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 310624801, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 248001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_248004(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_248004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 248001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end