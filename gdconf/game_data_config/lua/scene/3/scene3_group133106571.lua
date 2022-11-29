-- 基础信息
local base_info = {
	group_id = 133106571
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 310600162,
	gadget_seelie = 571002
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
	{ config_id = 571001, gadget_id = 70290293, pos = { x = -358.873, y = 247.707, z = 1759.485 }, rot = { x = 0.000, y = 213.735, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 571002, gadget_id = 70710010, pos = { x = -423.024, y = 220.196, z = 1736.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 310600163, area_id = 19 },
	{ config_id = 571003, gadget_id = 70710007, pos = { x = -360.601, y = 247.810, z = 1758.156 }, rot = { x = 47.909, y = 238.376, z = 1.993 }, level = 36, area_id = 19 },
	{ config_id = 571004, gadget_id = 70211101, pos = { x = -355.992, y = 247.795, z = 1752.921 }, rot = { x = 21.148, y = 294.408, z = 12.829 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 571007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -420.857, y = 220.334, z = 1735.559 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1571005, name = "PLATFORM_REACH_POINT_571005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_571005", action = "action_EVENT_PLATFORM_REACH_POINT_571005", trigger_count = 0 },
	{ config_id = 1571006, name = "AVATAR_NEAR_PLATFORM_571006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_571006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_571006", trigger_count = 0 },
	{ config_id = 1571007, name = "ENTER_REGION_571007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_571007", action = "action_EVENT_ENTER_REGION_571007", trigger_count = 0 },
	{ config_id = 1571008, name = "GADGET_STATE_CHANGE_571008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_571008", action = "action_EVENT_GADGET_STATE_CHANGE_571008" },
	{ config_id = 1571009, name = "GADGET_CREATE_571009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_571009", action = "action_EVENT_GADGET_CREATE_571009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "barrierDestroyed", value = 0, no_refresh = true }
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
		gadgets = { 571001, 571002, 571003 },
		regions = { 571007 },
		triggers = { "PLATFORM_REACH_POINT_571005", "AVATAR_NEAR_PLATFORM_571006", "ENTER_REGION_571007", "GADGET_STATE_CHANGE_571008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 571001, 571004 },
		regions = { },
		triggers = { "GADGET_CREATE_571009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_571005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_571005(context, evt)
	-- 将configid为 571001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 571001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 571002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 571002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_571006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	if 8 == evt.param3 and ScriptLib.GetGroupVariableValue(context, "barrierDestroyed") == 0 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_571006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 571002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_571007(context, evt)
	if evt.param1 ~= 571007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_571007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 571002, 310600162) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 571003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_571008(context, evt)
	if 571001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_571008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106571, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_571009(context, evt)
	if 571001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_571009(context, evt)
	-- 将configid为 571001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 571001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end