-- 基础信息
local base_info = {
	group_id = 133309052
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 330900119,
	gadget_seelie = 52002
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
	{ config_id = 52001, gadget_id = 70330331, pos = { x = -2382.634, y = -2.281, z = 5429.264 }, rot = { x = 0.000, y = 30.602, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 52002, gadget_id = 70710010, pos = { x = -2350.614, y = 21.592, z = 5409.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900120, area_id = 27 },
	{ config_id = 52003, gadget_id = 70710007, pos = { x = -2382.104, y = -1.309, z = 5429.459 }, rot = { x = 343.155, y = 78.823, z = 353.349 }, level = 32, area_id = 27 },
	{ config_id = 52004, gadget_id = 70211101, pos = { x = -2377.148, y = -2.388, z = 5430.161 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 52007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2350.395, y = 21.592, z = 5410.437 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1052005, name = "PLATFORM_ARRIVAL_52005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_52005", action = "action_EVENT_PLATFORM_ARRIVAL_52005", trigger_count = 0 },
	{ config_id = 1052006, name = "AVATAR_NEAR_PLATFORM_52006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_52006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_52006", trigger_count = 0 },
	{ config_id = 1052007, name = "ENTER_REGION_52007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52007", action = "action_EVENT_ENTER_REGION_52007", trigger_count = 0 },
	{ config_id = 1052008, name = "GADGET_STATE_CHANGE_52008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52008", action = "action_EVENT_GADGET_STATE_CHANGE_52008" },
	{ config_id = 1052009, name = "GADGET_CREATE_52009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_52009", action = "action_EVENT_GADGET_CREATE_52009", trigger_count = 0 }
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
		gadgets = { 52001, 52002, 52003 },
		regions = { 52007 },
		triggers = { "PLATFORM_ARRIVAL_52005", "AVATAR_NEAR_PLATFORM_52006", "ENTER_REGION_52007", "GADGET_STATE_CHANGE_52008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 52001, 52004 },
		regions = { },
		triggers = { "GADGET_CREATE_52009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_52005(context, evt)
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
function action_EVENT_PLATFORM_ARRIVAL_52005(context, evt)
	-- 将configid为 52001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 52002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 52002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_52006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_52006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 52002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52007(context, evt)
	if evt.param1 ~= 52007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 52002, 330900119) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 52003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_52008(context, evt)
	if 52001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309052, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_52009(context, evt)
	if 52001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_52009(context, evt)
	-- 将configid为 52001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end