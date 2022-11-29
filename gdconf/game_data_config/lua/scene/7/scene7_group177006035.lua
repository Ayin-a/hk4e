-- 基础信息
local base_info = {
	group_id = 177006035
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 700600001,
	gadget_seelie = 35002
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
	{ config_id = 35001, gadget_id = 70290293, pos = { x = 234.053, y = 173.995, z = -414.443 }, rot = { x = 0.000, y = 341.326, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 35002, gadget_id = 70710010, pos = { x = 218.713, y = 167.291, z = -337.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 700600002, area_id = 210 },
	{ config_id = 35003, gadget_id = 70710007, pos = { x = 233.234, y = 174.371, z = -414.132 }, rot = { x = 0.000, y = 356.251, z = 0.000 }, level = 1, area_id = 210 },
	{ config_id = 35004, gadget_id = 70211160, pos = { x = 233.245, y = 174.078, z = -416.158 }, rot = { x = 0.000, y = 352.142, z = 0.000 }, level = 26, drop_tag = "渊下宫活动低级稻妻", showcutscene = true, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 35007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 218.930, y = 166.302, z = -337.821 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1035005, name = "PLATFORM_REACH_POINT_35005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_35005", action = "action_EVENT_PLATFORM_REACH_POINT_35005", trigger_count = 0 },
	{ config_id = 1035006, name = "AVATAR_NEAR_PLATFORM_35006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_35006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_35006", trigger_count = 0 },
	{ config_id = 1035007, name = "ENTER_REGION_35007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_35007", action = "action_EVENT_ENTER_REGION_35007", trigger_count = 0 },
	{ config_id = 1035008, name = "GADGET_STATE_CHANGE_35008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_35008", action = "action_EVENT_GADGET_STATE_CHANGE_35008" },
	{ config_id = 1035009, name = "GADGET_CREATE_35009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_35009", action = "action_EVENT_GADGET_CREATE_35009", trigger_count = 0 }
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
		gadgets = { 35001, 35002, 35003 },
		regions = { 35007 },
		triggers = { "PLATFORM_REACH_POINT_35005", "AVATAR_NEAR_PLATFORM_35006", "ENTER_REGION_35007", "GADGET_STATE_CHANGE_35008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 35001, 35004 },
		regions = { },
		triggers = { "GADGET_CREATE_35009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_35005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_35005(context, evt)
	-- 将configid为 35001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 35002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_35006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_35006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 35002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_35007(context, evt)
	if evt.param1 ~= 35007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_35007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 35002, 700600001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 35003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_35008(context, evt)
	if 35001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_35008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 177006035, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_35009(context, evt)
	if 35001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_35009(context, evt)
	-- 将configid为 35001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end