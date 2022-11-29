-- 基础信息
local base_info = {
	group_id = 133315314
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 331500135,
	gadget_seelie = 314002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 314001, gadget_id = 70710006, pos = { x = 42.014, y = 291.296, z = 2312.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 314002, gadget_id = 70710010, pos = { x = -83.631, y = 269.850, z = 2383.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500136, area_id = 20 },
	{ config_id = 314003, gadget_id = 70710007, pos = { x = 42.014, y = 291.296, z = 2312.427 }, rot = { x = 0.000, y = 338.658, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 314004, gadget_id = 70211101, pos = { x = 43.786, y = 291.488, z = 2313.677 }, rot = { x = 0.000, y = 327.707, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 314010, gadget_id = 70220103, pos = { x = -60.664, y = 274.902, z = 2348.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 314011, gadget_id = 70220103, pos = { x = -41.797, y = 292.230, z = 2333.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 314012, gadget_id = 70220103, pos = { x = 17.397, y = 285.707, z = 2327.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 314013, gadget_id = 70220103, pos = { x = 36.610, y = 292.639, z = 2319.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 314014, gadget_id = 70220103, pos = { x = -83.032, y = 271.599, z = 2382.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 314015, gadget_id = 70290543, pos = { x = -83.012, y = 269.022, z = 2382.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 314016, gadget_id = 70220103, pos = { x = -12.041, y = 288.846, z = 2331.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 314007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -83.631, y = 269.850, z = 2383.728 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1314005, name = "PLATFORM_REACH_POINT_314005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_314005", action = "action_EVENT_PLATFORM_REACH_POINT_314005", trigger_count = 0 },
	{ config_id = 1314006, name = "AVATAR_NEAR_PLATFORM_314006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_314006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_314006", trigger_count = 0 },
	{ config_id = 1314007, name = "ENTER_REGION_314007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_314007", action = "action_EVENT_ENTER_REGION_314007", trigger_count = 0 },
	{ config_id = 1314008, name = "GADGET_STATE_CHANGE_314008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_314008", action = "action_EVENT_GADGET_STATE_CHANGE_314008" },
	{ config_id = 1314009, name = "GADGET_CREATE_314009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_314009", action = "action_EVENT_GADGET_CREATE_314009", trigger_count = 0 }
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
		gadgets = { 314001, 314002, 314003, 314010, 314011, 314012, 314013, 314014, 314015, 314016 },
		regions = { 314007 },
		triggers = { "PLATFORM_REACH_POINT_314005", "AVATAR_NEAR_PLATFORM_314006", "ENTER_REGION_314007", "GADGET_STATE_CHANGE_314008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 314001, 314004, 314010, 314011, 314012, 314013, 314014, 314015, 314016 },
		regions = { },
		triggers = { "GADGET_CREATE_314009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_314005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_314005(context, evt)
	-- 将configid为 314001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 314001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 314002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 314002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_314006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_314006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 314002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_314007(context, evt)
	if evt.param1 ~= 314007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_314007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 314002, 331500135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 314003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_314008(context, evt)
	if 314001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_314008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315314, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_314009(context, evt)
	if 314001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_314009(context, evt)
	-- 将configid为 314001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 314001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end