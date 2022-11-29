-- 基础信息
local base_info = {
	group_id = 166001432
}

-- Trigger变量
local defs = {
	point_sum = 9,
	route_2 = 600100070,
	gadget_seelie = 432002
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
	{ config_id = 432001, gadget_id = 70720218, pos = { x = 758.306, y = 965.620, z = 869.240 }, rot = { x = 0.000, y = 227.848, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 432002, gadget_id = 70720217, pos = { x = 764.003, y = 975.381, z = 776.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 600100069, area_id = 300 },
	{ config_id = 432003, gadget_id = 70720219, pos = { x = 758.245, y = 965.529, z = 869.365 }, rot = { x = 0.000, y = 188.455, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 432004, gadget_id = 70211101, pos = { x = 754.648, y = 965.037, z = 869.540 }, rot = { x = 353.701, y = 185.610, z = 355.667 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 432010, gadget_id = 70220021, pos = { x = 764.573, y = 975.450, z = 776.930 }, rot = { x = 356.420, y = 202.386, z = 346.817 }, level = 36, isOneoff = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 432007, shape = RegionShape.SPHERE, radius = 2, pos = { x = 763.687, y = 975.289, z = 775.970 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1432005, name = "PLATFORM_REACH_POINT_432005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_432005", action = "action_EVENT_PLATFORM_REACH_POINT_432005", trigger_count = 0 },
	{ config_id = 1432006, name = "AVATAR_NEAR_PLATFORM_432006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_432006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_432006", trigger_count = 0 },
	{ config_id = 1432007, name = "ENTER_REGION_432007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_432007", action = "action_EVENT_ENTER_REGION_432007", trigger_count = 0 },
	{ config_id = 1432008, name = "GADGET_STATE_CHANGE_432008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_432008", action = "action_EVENT_GADGET_STATE_CHANGE_432008" },
	{ config_id = 1432009, name = "GADGET_CREATE_432009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_432009", action = "action_EVENT_GADGET_CREATE_432009", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 432001, 432002, 432003, 432010 },
		regions = { 432007 },
		triggers = { "PLATFORM_REACH_POINT_432005", "AVATAR_NEAR_PLATFORM_432006", "ENTER_REGION_432007", "GADGET_STATE_CHANGE_432008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 432001, 432004 },
		regions = { },
		triggers = { "GADGET_CREATE_432009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_432005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_432005(context, evt)
	-- 将configid为 432001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 432001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 432002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 432002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_432006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_432006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 432002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_432007(context, evt)
	if evt.param1 ~= 432007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_432007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 432002, 600100070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 432003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_432008(context, evt)
	if 432001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_432008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001432, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_432009(context, evt)
	if 432001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_432009(context, evt)
	-- 将configid为 432001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 432001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end