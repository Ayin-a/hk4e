-- 基础信息
local base_info = {
	group_id = 155005162
}

-- Trigger变量
local defs = {
	point_sum = 21,
	route_2 = 500500048,
	gadget_seelie = 162002
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
	{ config_id = 162001, gadget_id = 70290293, pos = { x = 477.445, y = 173.129, z = 671.892 }, rot = { x = 358.978, y = 116.817, z = 1.863 }, level = 36, area_id = 200 },
	{ config_id = 162002, gadget_id = 70710010, pos = { x = 539.931, y = 172.232, z = 639.718 }, rot = { x = 0.000, y = 244.943, z = 0.000 }, level = 36, route_id = 500500049, area_id = 200 },
	{ config_id = 162003, gadget_id = 70710007, pos = { x = 479.655, y = 174.414, z = 670.692 }, rot = { x = 18.809, y = 300.261, z = 359.127 }, level = 36, area_id = 200 },
	{ config_id = 162004, gadget_id = 70211101, pos = { x = 475.977, y = 173.015, z = 672.667 }, rot = { x = 355.661, y = 84.126, z = 8.480 }, level = 16, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 162010, gadget_id = 70290279, pos = { x = 508.119, y = 189.431, z = 654.943 }, rot = { x = 357.724, y = 299.022, z = 357.976 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 162007, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = 540.343, y = 172.058, z = 639.692 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1162005, name = "PLATFORM_REACH_POINT_162005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_162005", action = "action_EVENT_PLATFORM_REACH_POINT_162005", trigger_count = 0 },
	{ config_id = 1162006, name = "AVATAR_NEAR_PLATFORM_162006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_162006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_162006", trigger_count = 0 },
	{ config_id = 1162007, name = "ENTER_REGION_162007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162007", action = "action_EVENT_ENTER_REGION_162007", trigger_count = 0 },
	{ config_id = 1162008, name = "GADGET_STATE_CHANGE_162008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_162008", action = "action_EVENT_GADGET_STATE_CHANGE_162008" },
	{ config_id = 1162009, name = "GADGET_CREATE_162009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_162009", action = "action_EVENT_GADGET_CREATE_162009", trigger_count = 0 },
	{ config_id = 1162011, name = "PLATFORM_REACH_POINT_162011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_162011", action = "action_EVENT_PLATFORM_REACH_POINT_162011", trigger_count = 0 }
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
		gadgets = { 162001, 162002, 162003, 162010 },
		regions = { 162007 },
		triggers = { "PLATFORM_REACH_POINT_162005", "AVATAR_NEAR_PLATFORM_162006", "ENTER_REGION_162007", "GADGET_STATE_CHANGE_162008", "PLATFORM_REACH_POINT_162011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 162001, 162004 },
		regions = { },
		triggers = { "GADGET_CREATE_162009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_162005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_162005(context, evt)
	-- 将configid为 162001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 162002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 162002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_162006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_162006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 162002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_162007(context, evt)
	if evt.param1 ~= 162007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_162007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 162002, 500500048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 162003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_162008(context, evt)
	if 162001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_162008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005162, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_162009(context, evt)
	if 162001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_162009(context, evt)
	-- 将configid为 162001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_162011(context, evt)
	-- 判断是gadgetid 为 162002的移动平台，是否到达了500500048 的路线中的 16 点
	
	if 162002 ~= evt.param1 then
	  return false
	end
	
	if 500500048 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_162011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 162010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end