-- 基础信息
local base_info = {
	group_id = 133309811
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 330900266,
	gadget_seelie = 811002
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
	{ config_id = 811001, gadget_id = 70330331, pos = { x = -2487.167, y = -13.546, z = 5577.737 }, rot = { x = 0.000, y = 235.360, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 811002, gadget_id = 70710010, pos = { x = -2597.995, y = -16.646, z = 5566.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330900267, area_id = 27 },
	{ config_id = 811003, gadget_id = 70710007, pos = { x = -2487.708, y = -12.772, z = 5577.634 }, rot = { x = 0.000, y = 260.617, z = 0.000 }, level = 30, area_id = 27 },
	{ config_id = 811004, gadget_id = 70211131, pos = { x = -2490.551, y = -20.602, z = 5565.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜超级须弥", showcutscene = true, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 811010, gadget_id = 70330392, pos = { x = -2587.416, y = -25.969, z = 5569.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811011, gadget_id = 70330392, pos = { x = -2577.416, y = -25.969, z = 5569.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811012, gadget_id = 70330392, pos = { x = -2562.089, y = -20.969, z = 5569.374 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811013, gadget_id = 70330392, pos = { x = -2567.416, y = -25.969, z = 5569.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811014, gadget_id = 70330392, pos = { x = -2547.416, y = -25.969, z = 5569.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811015, gadget_id = 70330392, pos = { x = -2547.416, y = -25.969, z = 5559.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811016, gadget_id = 70330392, pos = { x = -2507.416, y = -25.969, z = 5559.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811017, gadget_id = 70330392, pos = { x = -2507.416, y = -25.969, z = 5569.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811018, gadget_id = 70330392, pos = { x = -2517.416, y = -25.969, z = 5589.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811019, gadget_id = 70330392, pos = { x = -2517.416, y = -25.969, z = 5579.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811020, gadget_id = 70330392, pos = { x = -2517.416, y = -25.969, z = 5559.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811021, gadget_id = 70330392, pos = { x = -2567.416, y = -25.969, z = 5579.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811022, gadget_id = 70330392, pos = { x = -2557.416, y = -25.969, z = 5579.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811023, gadget_id = 70330392, pos = { x = -2547.416, y = -25.969, z = 5579.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811024, gadget_id = 70330392, pos = { x = -2542.089, y = -20.969, z = 5559.374 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811025, gadget_id = 70330392, pos = { x = -2527.416, y = -25.969, z = 5549.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811026, gadget_id = 70330392, pos = { x = -2567.416, y = -25.969, z = 5559.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811027, gadget_id = 70330392, pos = { x = -2537.416, y = -25.969, z = 5549.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811028, gadget_id = 70330392, pos = { x = -2527.416, y = -25.969, z = 5559.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811029, gadget_id = 70330392, pos = { x = -2497.416, y = -25.969, z = 5594.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811030, gadget_id = 70330392, pos = { x = -2487.416, y = -25.969, z = 5594.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811031, gadget_id = 70330392, pos = { x = -2490.416, y = -24.750, z = 5584.496 }, rot = { x = 15.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811032, gadget_id = 70330392, pos = { x = -2490.416, y = -22.162, z = 5574.837 }, rot = { x = 15.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811033, gadget_id = 70330392, pos = { x = -2507.416, y = -25.969, z = 5599.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811034, gadget_id = 70330392, pos = { x = -2547.416, y = -25.969, z = 5549.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811035, gadget_id = 70330392, pos = { x = -2507.416, y = -25.969, z = 5579.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811036, gadget_id = 70330392, pos = { x = -2517.416, y = -25.969, z = 5599.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811037, gadget_id = 70330392, pos = { x = -2557.416, y = -25.969, z = 5549.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811038, gadget_id = 70330392, pos = { x = -2527.416, y = -25.969, z = 5569.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 811039, gadget_id = 70330392, pos = { x = -2497.416, y = -25.969, z = 5569.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 811007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2597.995, y = -16.069, z = 5566.669 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1811005, name = "PLATFORM_ARRIVAL_811005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_811005", action = "action_EVENT_PLATFORM_ARRIVAL_811005", trigger_count = 0 },
	{ config_id = 1811006, name = "AVATAR_NEAR_PLATFORM_811006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_811006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_811006", trigger_count = 0 },
	{ config_id = 1811007, name = "ENTER_REGION_811007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_811007", action = "action_EVENT_ENTER_REGION_811007", trigger_count = 0 },
	{ config_id = 1811008, name = "GADGET_STATE_CHANGE_811008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_811008", action = "action_EVENT_GADGET_STATE_CHANGE_811008" },
	{ config_id = 1811009, name = "GADGET_CREATE_811009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_811009", action = "action_EVENT_GADGET_CREATE_811009", trigger_count = 0 }
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
		gadgets = { 811001, 811002, 811003 },
		regions = { 811007 },
		triggers = { "PLATFORM_ARRIVAL_811005", "AVATAR_NEAR_PLATFORM_811006", "ENTER_REGION_811007", "GADGET_STATE_CHANGE_811008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 811001, 811004 },
		regions = { },
		triggers = { "GADGET_CREATE_811009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 811010, 811011, 811012, 811013, 811014, 811015, 811016, 811017, 811018, 811019, 811020, 811021, 811022, 811023, 811024, 811025, 811026, 811027, 811028, 811029, 811030, 811031, 811032, 811033, 811034, 811035, 811036, 811037, 811038, 811039 },
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
function condition_EVENT_PLATFORM_ARRIVAL_811005(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_811005(context, evt)
	-- 将configid为 811001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 811001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 811002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 811002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_811006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_811006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 811002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_811007(context, evt)
	if evt.param1 ~= 811007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_811007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 811002, 330900266) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 811003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309811, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_811008(context, evt)
	if 811001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_811008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309811, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_811009(context, evt)
	if 811001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_811009(context, evt)
	-- 将configid为 811001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 811001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end