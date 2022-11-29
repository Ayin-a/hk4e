-- 基础信息
local base_info = {
	group_id = 133102270
}

-- Trigger变量
local defs = {
	point_sum = 5,
	route_2 = 310200108,
	gadget_seelie = 270002
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
	{ config_id = 270001, gadget_id = 70710006, pos = { x = 1225.993, y = 204.681, z = 265.247 }, rot = { x = 10.042, y = 121.598, z = 354.118 }, level = 32, persistent = true, area_id = 5 },
	{ config_id = 270002, gadget_id = 70710010, pos = { x = 1252.026, y = 201.363, z = 218.958 }, rot = { x = 0.000, y = 315.432, z = 0.000 }, level = 32, route_id = 310200107, area_id = 5 },
	{ config_id = 270003, gadget_id = 70710007, pos = { x = 1226.390, y = 204.780, z = 264.641 }, rot = { x = 0.000, y = 144.081, z = 0.000 }, level = 32, area_id = 5 },
	{ config_id = 270004, gadget_id = 70211111, pos = { x = 1224.811, y = 204.704, z = 264.306 }, rot = { x = 358.476, y = 38.776, z = 343.442 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 270010, gadget_id = 70220013, pos = { x = 1251.595, y = 200.761, z = 221.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 270011, gadget_id = 70220013, pos = { x = 1255.652, y = 200.643, z = 216.262 }, rot = { x = 359.301, y = 308.676, z = 359.441 }, level = 16, area_id = 5 },
	{ config_id = 270012, gadget_id = 70220026, pos = { x = 1253.123, y = 200.424, z = 216.986 }, rot = { x = 0.000, y = 334.626, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 270007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1252.148, y = 201.866, z = 218.961 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1270005, name = "PLATFORM_REACH_POINT_270005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_270005", action = "action_EVENT_PLATFORM_REACH_POINT_270005", trigger_count = 0 },
	{ config_id = 1270006, name = "AVATAR_NEAR_PLATFORM_270006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_270006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_270006", trigger_count = 0 },
	{ config_id = 1270007, name = "ENTER_REGION_270007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_270007", action = "action_EVENT_ENTER_REGION_270007", trigger_count = 0 },
	{ config_id = 1270008, name = "GADGET_STATE_CHANGE_270008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270008", action = "action_EVENT_GADGET_STATE_CHANGE_270008" },
	{ config_id = 1270009, name = "GADGET_CREATE_270009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_270009", action = "action_EVENT_GADGET_CREATE_270009", trigger_count = 0 }
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
		gadgets = { 270001, 270002, 270003, 270010, 270011, 270012 },
		regions = { 270007 },
		triggers = { "PLATFORM_REACH_POINT_270005", "AVATAR_NEAR_PLATFORM_270006", "ENTER_REGION_270007", "GADGET_STATE_CHANGE_270008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 270001, 270004 },
		regions = { },
		triggers = { "GADGET_CREATE_270009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_270005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_270005(context, evt)
	-- 将configid为 270001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 270002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 270002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_270006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_270006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 270002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_270007(context, evt)
	if evt.param1 ~= 270007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_270007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 270002, 310200108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 270003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_270008(context, evt)
	if 270001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102270, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_270009(context, evt)
	if 270001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_270009(context, evt)
	-- 将configid为 270001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end