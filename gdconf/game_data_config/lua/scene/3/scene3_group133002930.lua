-- 基础信息
local base_info = {
	group_id = 133002930
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
	{ config_id = 930001, gadget_id = 70720214, pos = { x = 1210.328, y = 383.790, z = -948.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300200271, start_route = false, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1930002, name = "AVATAR_NEAR_PLATFORM_930002", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_930002", action = "action_EVENT_AVATAR_NEAR_PLATFORM_930002", trigger_count = 0 },
	{ config_id = 1930003, name = "AVATAR_NEAR_PLATFORM_930003", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_930003", action = "action_EVENT_AVATAR_NEAR_PLATFORM_930003", trigger_count = 0 },
	{ config_id = 1930004, name = "AVATAR_NEAR_PLATFORM_930004", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_930004", action = "action_EVENT_AVATAR_NEAR_PLATFORM_930004", trigger_count = 0 },
	{ config_id = 1930005, name = "AVATAR_NEAR_PLATFORM_930005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_930005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_930005", trigger_count = 0 },
	{ config_id = 1930006, name = "AVATAR_NEAR_PLATFORM_930006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_930006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_930006", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 930001 },
		regions = { },
		triggers = { "AVATAR_NEAR_PLATFORM_930002", "AVATAR_NEAR_PLATFORM_930003", "AVATAR_NEAR_PLATFORM_930004", "AVATAR_NEAR_PLATFORM_930005", "AVATAR_NEAR_PLATFORM_930006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_930002(context, evt)
	-- 判断是gadgetid 为 930001的移动平台，是否到达了300200271 的路线中的 4 点
	
	if 930001 ~= evt.param1 then
	  return false
	end
	
	if 300200271 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_930002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133002930") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_930003(context, evt)
	if 930001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_930003(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 930001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_930004(context, evt)
	-- 判断是gadgetid 为 930001的移动平台，是否到达了300200271 的路线中的 1 点
	
	if 930001 ~= evt.param1 then
	  return false
	end
	
	if 300200271 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_930004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 930001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_930005(context, evt)
	-- 判断是gadgetid 为 930001的移动平台，是否到达了300200271 的路线中的 2 点
	
	if 930001 ~= evt.param1 then
	  return false
	end
	
	if 300200271 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_930005(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 930001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_930006(context, evt)
	-- 判断是gadgetid 为 930001的移动平台，是否到达了300200271 的路线中的 3 点
	
	if 930001 ~= evt.param1 then
	  return false
	end
	
	if 300200271 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_930006(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 930001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end