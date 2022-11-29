-- 基础信息
local base_info = {
	group_id = 133302518
}

-- Trigger变量
local defs = {
	point_sum = 19,
	route_2 = 330200096,
	gadget_seelie = 518002
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
	{ config_id = 518001, gadget_id = 70710006, pos = { x = -282.003, y = 156.560, z = 2506.533 }, rot = { x = 0.000, y = 160.514, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 518002, gadget_id = 70710010, pos = { x = -350.951, y = 144.163, z = 2426.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330200097, area_id = 24 },
	{ config_id = 518003, gadget_id = 70710007, pos = { x = -282.373, y = 157.755, z = 2506.237 }, rot = { x = 0.000, y = 211.523, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 518004, gadget_id = 70211101, pos = { x = -287.163, y = 157.258, z = 2505.407 }, rot = { x = 353.794, y = 177.907, z = 1.117 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 518010, gadget_id = 70330197, pos = { x = -295.492, y = 157.576, z = 2503.853 }, rot = { x = 0.000, y = 295.739, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 518011, gadget_id = 70330197, pos = { x = -277.370, y = 137.054, z = 2478.191 }, rot = { x = 0.000, y = 61.935, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 518012, gadget_id = 70330197, pos = { x = -319.254, y = 189.872, z = 2519.970 }, rot = { x = 0.000, y = 157.991, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 518013, gadget_id = 70220103, pos = { x = -319.218, y = 194.708, z = 2519.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 518014, gadget_id = 70220103, pos = { x = -277.451, y = 184.412, z = 2517.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 518015, gadget_id = 70290507, pos = { x = -320.183, y = 178.636, z = 2518.635 }, rot = { x = 344.419, y = 17.690, z = 286.594 }, level = 27, area_id = 24 },
	{ config_id = 518016, gadget_id = 70290507, pos = { x = -318.915, y = 185.654, z = 2514.468 }, rot = { x = 293.169, y = 296.131, z = -0.001 }, level = 27, area_id = 24 },
	{ config_id = 518017, gadget_id = 70330197, pos = { x = -316.663, y = 155.710, z = 2519.453 }, rot = { x = 0.000, y = 283.552, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 518007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -349.435, y = 145.270, z = 2427.371 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1518005, name = "PLATFORM_REACH_POINT_518005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_518005", action = "action_EVENT_PLATFORM_REACH_POINT_518005", trigger_count = 0 },
	{ config_id = 1518006, name = "AVATAR_NEAR_PLATFORM_518006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_518006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_518006", trigger_count = 0 },
	{ config_id = 1518007, name = "ENTER_REGION_518007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_518007", action = "action_EVENT_ENTER_REGION_518007", trigger_count = 0 },
	{ config_id = 1518008, name = "GADGET_STATE_CHANGE_518008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_518008", action = "action_EVENT_GADGET_STATE_CHANGE_518008" },
	{ config_id = 1518009, name = "GADGET_CREATE_518009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_518009", action = "action_EVENT_GADGET_CREATE_518009", trigger_count = 0 }
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
		gadgets = { 518001, 518002, 518003, 518010, 518011, 518012, 518013, 518014, 518015, 518016, 518017 },
		regions = { 518007 },
		triggers = { "PLATFORM_REACH_POINT_518005", "AVATAR_NEAR_PLATFORM_518006", "ENTER_REGION_518007", "GADGET_STATE_CHANGE_518008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 518001, 518004, 518010, 518011, 518012, 518013, 518014, 518017 },
		regions = { },
		triggers = { "GADGET_CREATE_518009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_518005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_518005(context, evt)
	-- 将configid为 518001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 518001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 518002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 518002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_518006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_518006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 518002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_518007(context, evt)
	if evt.param1 ~= 518007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_518007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 518002, 330200096) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 518003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_518008(context, evt)
	if 518001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_518008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302518, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_518009(context, evt)
	if 518001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_518009(context, evt)
	-- 将configid为 518001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 518001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end