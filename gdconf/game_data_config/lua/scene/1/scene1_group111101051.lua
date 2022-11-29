-- 基础信息
local base_info = {
	group_id = 111101051
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
	{ config_id = 51001, gadget_id = 70950079, pos = { x = 2664.006, y = 196.647, z = -1675.463 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, route_id = 110100063 },
	{ config_id = 51002, gadget_id = 70950079, pos = { x = 2669.406, y = 196.421, z = -1679.879 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, route_id = 110100064 },
	{ config_id = 51003, gadget_id = 70950079, pos = { x = 2662.628, y = 196.421, z = -1686.886 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, route_id = 110100065 },
	-- 临时替代靶标
	{ config_id = 51004, gadget_id = 70900039, pos = { x = 2667.523, y = 195.781, z = -1691.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 51005, gadget_id = 70360006, pos = { x = 2666.795, y = 195.338, z = -1667.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 51009, gadget_id = 70950079, pos = { x = 2670.132, y = 196.421, z = -1701.987 }, rot = { x = 0.000, y = 318.412, z = 0.000 }, level = 1, route_id = 110100066 },
	{ config_id = 51010, gadget_id = 70211111, pos = { x = 2674.904, y = 195.232, z = -1678.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 踩踏重力压板，台座上升，创建靶标
	{ config_id = 1051006, name = "GADGET_STATE_CHANGE_51006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51006", action = "action_EVENT_GADGET_STATE_CHANGE_51006", trigger_count = 0 },
	-- 踩踏重力压板，台座上升，销毁靶标
	{ config_id = 1051007, name = "GADGET_STATE_CHANGE_51007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51007", action = "action_EVENT_GADGET_STATE_CHANGE_51007", trigger_count = 0 },
	-- 台座2到达最高点后开始自转
	{ config_id = 1051008, name = "PLATFORM_REACH_POINT_51008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51008", action = "action_EVENT_PLATFORM_REACH_POINT_51008", trigger_count = 0 },
	-- 击中靶标，创建宝箱
	{ config_id = 1051011, name = "GADGET_STATE_CHANGE_51011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51011", action = "action_EVENT_GADGET_STATE_CHANGE_51011" }
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
		gadgets = { 51001, 51002, 51003, 51005, 51009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_51006", "GADGET_STATE_CHANGE_51007", "PLATFORM_REACH_POINT_51008", "GADGET_STATE_CHANGE_51011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51006(context, evt)
	if 51005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 51010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 51001, 110100056) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 51001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 51002, 110100057) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 51002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 51003, 110100058) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 51003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 创建id为51004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 51004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51007(context, evt)
	if 51005 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 51001, 110100059) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 51001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 51002, 110100060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 51002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 51003, 110100061) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 51003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 111101051, EntityType.GADGET, 51004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_51008(context, evt)
	-- 判断是gadgetid 为 51002的移动平台，是否到达了110100057 的路线中的 0 点
	
	if 51002 ~= evt.param1 then
	  return false
	end
	
	if 110100057 ~= evt.param2 then
	  return false
	end
	
	if 0 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_51008(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 51002, 110100070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 51002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51011(context, evt)
	if 51004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51011(context, evt)
	-- 创建id为51010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 51010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end