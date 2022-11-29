-- 基础信息
local base_info = {
	group_id = 133315223
}

-- Trigger变量
local defs = {
	point_sum = 19,
	route_2 = 331500066,
	gadget_seelie = 223002
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
	{ config_id = 223001, gadget_id = 70710006, pos = { x = 165.225, y = 107.410, z = 2886.638 }, rot = { x = 0.000, y = 292.846, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 223002, gadget_id = 70710010, pos = { x = 194.969, y = 106.369, z = 2876.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500067, area_id = 20 },
	{ config_id = 223003, gadget_id = 70710007, pos = { x = 166.045, y = 107.410, z = 2886.038 }, rot = { x = 0.000, y = 103.533, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 223004, gadget_id = 70211101, pos = { x = 167.080, y = 106.994, z = 2888.322 }, rot = { x = 0.000, y = 268.668, z = 357.946 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 223007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 196.033, y = 106.369, z = 2876.176 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1223005, name = "PLATFORM_REACH_POINT_223005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_223005", action = "action_EVENT_PLATFORM_REACH_POINT_223005", trigger_count = 0 },
	{ config_id = 1223006, name = "AVATAR_NEAR_PLATFORM_223006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_223006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_223006", trigger_count = 0 },
	{ config_id = 1223007, name = "ENTER_REGION_223007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_223007", action = "action_EVENT_ENTER_REGION_223007", trigger_count = 0 },
	{ config_id = 1223008, name = "GADGET_STATE_CHANGE_223008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223008", action = "action_EVENT_GADGET_STATE_CHANGE_223008" },
	{ config_id = 1223009, name = "GADGET_CREATE_223009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_223009", action = "action_EVENT_GADGET_CREATE_223009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "go", value = 0, no_refresh = true }
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
		gadgets = { 223001, 223002, 223003 },
		regions = { 223007 },
		triggers = { "PLATFORM_REACH_POINT_223005", "AVATAR_NEAR_PLATFORM_223006", "ENTER_REGION_223007", "GADGET_STATE_CHANGE_223008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 223001, 223004 },
		regions = { },
		triggers = { "GADGET_CREATE_223009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_223005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_223005(context, evt)
	-- 将configid为 223001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 223002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 223002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_223006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	if 19 == evt.param3 and 
	ScriptLib.GetGroupVariableValue(context, "go") ~= 1 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_223006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 223002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_223007(context, evt)
	if evt.param1 ~= 223007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_223007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 223002, 331500066) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 223003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_223008(context, evt)
	if 223001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315223, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_223009(context, evt)
	if 223001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_223009(context, evt)
	-- 将configid为 223001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 223001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end