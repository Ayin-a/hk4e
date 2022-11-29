-- 基础信息
local base_info = {
	group_id = 250008091
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
	{ config_id = 368, gadget_id = 70710006, pos = { x = 103.924, y = 4.000, z = -312.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 369, gadget_id = 70710003, pos = { x = 104.057, y = 4.000, z = -330.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50008045 },
	{ config_id = 370, gadget_id = 70710007, pos = { x = 103.881, y = 4.000, z = -317.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 371, gadget_id = 70211001, pos = { x = 103.984, y = 5.082, z = -312.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 372, gadget_id = 70710006, pos = { x = 108.153, y = 4.000, z = -308.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 373, gadget_id = 70710003, pos = { x = 123.761, y = 4.000, z = -308.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50008047 },
	{ config_id = 374, gadget_id = 70710007, pos = { x = 112.318, y = 4.000, z = -308.320 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 375, gadget_id = 70211001, pos = { x = 108.190, y = 5.238, z = -308.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 376, gadget_id = 70710006, pos = { x = 103.894, y = 4.000, z = -304.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 377, gadget_id = 70710003, pos = { x = 103.791, y = 4.000, z = -288.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50008050 },
	{ config_id = 378, gadget_id = 70710007, pos = { x = 103.796, y = 4.000, z = -299.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 379, gadget_id = 70211001, pos = { x = 108.190, y = 5.238, z = -308.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 380, gadget_id = 70710006, pos = { x = 99.768, y = 4.000, z = -308.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 381, gadget_id = 70710003, pos = { x = 87.151, y = 4.000, z = -307.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50008052 },
	{ config_id = 382, gadget_id = 70710007, pos = { x = 95.755, y = 4.000, z = -308.176 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 383, gadget_id = 70211001, pos = { x = 108.190, y = 5.238, z = -308.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 265, shape = RegionShape.SPHERE, radius = 5, pos = { x = 104.220, y = 4.000, z = -330.537 } },
	{ config_id = 269, shape = RegionShape.SPHERE, radius = 5, pos = { x = 123.858, y = 4.000, z = -308.867 } },
	{ config_id = 273, shape = RegionShape.SPHERE, radius = 5, pos = { x = 103.744, y = 4.000, z = -288.932 } },
	{ config_id = 277, shape = RegionShape.SPHERE, radius = 5, pos = { x = 87.070, y = 4.000, z = -307.981 } }
}

-- 触发器
triggers = {
	{ config_id = 1000262, name = "PLATFORM_REACH_POINT_262", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_262", action = "action_EVENT_PLATFORM_REACH_POINT_262", trigger_count = 0 },
	{ config_id = 1000263, name = "AVATAR_NEAR_PLATFORM_263", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_263", action = "action_EVENT_AVATAR_NEAR_PLATFORM_263", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000264, name = "AVATAR_NEAR_PLATFORM_264", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_264", action = "action_EVENT_AVATAR_NEAR_PLATFORM_264", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000265, name = "ENTER_REGION_265", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_265", action = "action_EVENT_ENTER_REGION_265", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000266, name = "PLATFORM_REACH_POINT_266", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_266", action = "action_EVENT_PLATFORM_REACH_POINT_266", trigger_count = 0 },
	{ config_id = 1000267, name = "AVATAR_NEAR_PLATFORM_267", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_267", action = "action_EVENT_AVATAR_NEAR_PLATFORM_267", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000268, name = "AVATAR_NEAR_PLATFORM_268", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_268", action = "action_EVENT_AVATAR_NEAR_PLATFORM_268", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000269, name = "ENTER_REGION_269", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_269", action = "action_EVENT_ENTER_REGION_269", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000270, name = "PLATFORM_REACH_POINT_270", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_270", action = "action_EVENT_PLATFORM_REACH_POINT_270", trigger_count = 0 },
	{ config_id = 1000271, name = "AVATAR_NEAR_PLATFORM_271", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_271", action = "action_EVENT_AVATAR_NEAR_PLATFORM_271", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000272, name = "AVATAR_NEAR_PLATFORM_272", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_272", action = "action_EVENT_AVATAR_NEAR_PLATFORM_272", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000273, name = "ENTER_REGION_273", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_273", action = "action_EVENT_ENTER_REGION_273", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000274, name = "PLATFORM_REACH_POINT_274", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_274", action = "action_EVENT_PLATFORM_REACH_POINT_274", trigger_count = 0 },
	{ config_id = 1000275, name = "AVATAR_NEAR_PLATFORM_275", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_275", action = "action_EVENT_AVATAR_NEAR_PLATFORM_275", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000276, name = "AVATAR_NEAR_PLATFORM_276", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_276", action = "action_EVENT_AVATAR_NEAR_PLATFORM_276", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000277, name = "ENTER_REGION_277", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_277", action = "action_EVENT_ENTER_REGION_277", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000278, name = "VARIABLE_CHANGE_278", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_278", action = "action_EVENT_VARIABLE_CHANGE_278", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "solved", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 368, 369, 370, 372, 373, 374, 376, 377, 378, 380, 381, 382 },
		regions = { 265, 269, 273, 277 },
		triggers = { "PLATFORM_REACH_POINT_262", "AVATAR_NEAR_PLATFORM_263", "AVATAR_NEAR_PLATFORM_264", "ENTER_REGION_265", "PLATFORM_REACH_POINT_266", "AVATAR_NEAR_PLATFORM_267", "AVATAR_NEAR_PLATFORM_268", "ENTER_REGION_269", "PLATFORM_REACH_POINT_270", "AVATAR_NEAR_PLATFORM_271", "AVATAR_NEAR_PLATFORM_272", "ENTER_REGION_273", "PLATFORM_REACH_POINT_274", "AVATAR_NEAR_PLATFORM_275", "AVATAR_NEAR_PLATFORM_276", "ENTER_REGION_277", "VARIABLE_CHANGE_278" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 368, 371, 372, 375, 376, 379, 380, 383 },
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
function condition_EVENT_PLATFORM_REACH_POINT_262(context, evt)
	-- 判断是gadgetid 为 369的移动平台，是否到达了50008046 的路线中的 3 点
	
	if 369 ~= evt.param1 then
	  return false
	end
	
	if 50008046 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_262(context, evt)
	-- 将configid为 368 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 368, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008091, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 369 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 4) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_263(context, evt)
	-- 判断是gadgetid 为 369的移动平台，是否到达了50008046 的路线中的 1 点
	
	if 369 ~= evt.param1 then
	  return false
	end
	
	if 50008046 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_263(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 369) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_264(context, evt)
	-- 判断是gadgetid 为 369的移动平台，是否到达了50008046 的路线中的 2 点
	
	if 369 ~= evt.param1 then
	  return false
	end
	
	if 50008046 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_264(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 369) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_265(context, evt)
	if evt.param1 ~= 265 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_265(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 369, 50008046) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 370 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_266(context, evt)
	-- 判断是gadgetid 为 373的移动平台，是否到达了50008048 的路线中的 3 点
	
	if 373 ~= evt.param1 then
	  return false
	end
	
	if 50008048 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_266(context, evt)
	-- 将configid为 372 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008091, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 373 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 4) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_267(context, evt)
	-- 判断是gadgetid 为 373的移动平台，是否到达了50008048 的路线中的 1 点
	
	if 373 ~= evt.param1 then
	  return false
	end
	
	if 50008048 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_267(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_268(context, evt)
	-- 判断是gadgetid 为 373的移动平台，是否到达了50008048 的路线中的 2 点
	
	if 373 ~= evt.param1 then
	  return false
	end
	
	if 50008048 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_268(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_269(context, evt)
	if evt.param1 ~= 269 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_269(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 373, 50008048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 374 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_270(context, evt)
	-- 判断是gadgetid 为 377的移动平台，是否到达了50008049 的路线中的 3 点
	
	if 377 ~= evt.param1 then
	  return false
	end
	
	if 50008049 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_270(context, evt)
	-- 将configid为 376 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 376, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008091, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 377 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 4) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_271(context, evt)
	-- 判断是gadgetid 为 377的移动平台，是否到达了50008049 的路线中的 1 点
	
	if 377 ~= evt.param1 then
	  return false
	end
	
	if 50008049 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_271(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 369) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_272(context, evt)
	-- 判断是gadgetid 为 377的移动平台，是否到达了50008049 的路线中的 2 点
	
	if 377 ~= evt.param1 then
	  return false
	end
	
	if 50008049 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_272(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 369) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_273(context, evt)
	if evt.param1 ~= 273 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_273(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 377, 50008049) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 378 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_274(context, evt)
	-- 判断是gadgetid 为 381的移动平台，是否到达了50008051 的路线中的 3 点
	
	if 381 ~= evt.param1 then
	  return false
	end
	
	if 50008051 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_274(context, evt)
	-- 将configid为 380 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 380, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 250008091, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 381 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 4) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_275(context, evt)
	-- 判断是gadgetid 为 381的移动平台，是否到达了50008051 的路线中的 1 点
	
	if 381 ~= evt.param1 then
	  return false
	end
	
	if 50008051 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_275(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 381) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_276(context, evt)
	-- 判断是gadgetid 为 381的移动平台，是否到达了50008051 的路线中的 2 点
	
	if 381 ~= evt.param1 then
	  return false
	end
	
	if 50008051 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_276(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 381) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 2, 3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_277(context, evt)
	if evt.param1 ~= 277 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_277(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 381, 50008051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 382 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_278(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"solved"为4
	if ScriptLib.GetGroupVariableValue(context, "solved") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_278(context, evt)
	-- 创建id为0的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end