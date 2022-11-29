-- 基础信息
local base_info = {
	group_id = 220134078
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
	{ config_id = 78001, gadget_id = 70310456, pos = { x = 602.742, y = 620.860, z = -1640.339 }, rot = { x = 358.337, y = 255.517, z = 357.395 }, level = 1 },
	{ config_id = 78002, gadget_id = 70310244, pos = { x = 603.401, y = 620.534, z = -1640.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 78003, gadget_id = 70360001, pos = { x = 602.834, y = 620.580, z = -1640.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 411 } } }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1078004, name = "SELECT_OPTION_78004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78004", action = "action_EVENT_SELECT_OPTION_78004", trigger_count = 0 },
	{ config_id = 1078005, name = "AVATAR_NEAR_PLATFORM_78005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "", action = "action_EVENT_AVATAR_NEAR_PLATFORM_78005", trigger_count = 0 },
	{ config_id = 1078006, name = "PLATFORM_REACH_POINT_78006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_78006", action = "action_EVENT_PLATFORM_REACH_POINT_78006", trigger_count = 0 }
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
		gadgets = { 78001, 78003 },
		regions = { },
		triggers = { "SELECT_OPTION_78004", "AVATAR_NEAR_PLATFORM_78005", "PLATFORM_REACH_POINT_78006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_78004(context, evt)
	-- 判断是gadgetid 78003 option_id 411
	if 78003 ~= evt.param1 then
		return false	
	end
	
	if 411 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_78004(context, evt)
	-- 创建id为78002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 78002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 78002, 11) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 78002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 删除指定group： 220134078 ；指定config：78003；物件身上指定option：411；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220134078, 78003, 411) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_78005(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 78002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_78006(context, evt)
	-- 判断是gadgetid 为 78002的移动平台，是否到达了11 的路线中的 7 点
	
	if 78002 ~= evt.param1 then
	  return false
	end
	
	if 11 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_78006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 78002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end