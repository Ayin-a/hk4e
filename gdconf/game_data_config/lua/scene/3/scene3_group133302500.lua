-- 基础信息
local base_info = {
	group_id = 133302500
}

-- Trigger变量
local defs = {
	point_sum = 17,
	route_2 = 330200086,
	gadget_seelie = 500002
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
	{ config_id = 500001, gadget_id = 70710006, pos = { x = -348.383, y = 208.408, z = 2514.250 }, rot = { x = 0.117, y = 172.576, z = 14.040 }, level = 27, area_id = 24 },
	{ config_id = 500002, gadget_id = 70710010, pos = { x = -403.288, y = 195.029, z = 2420.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330200087, area_id = 24 },
	{ config_id = 500003, gadget_id = 70710007, pos = { x = -348.583, y = 208.921, z = 2513.780 }, rot = { x = 0.000, y = 213.625, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 500004, gadget_id = 70211101, pos = { x = -345.546, y = 207.680, z = 2512.207 }, rot = { x = 352.406, y = 206.579, z = 11.116 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 500010, gadget_id = 70330197, pos = { x = -399.350, y = 199.278, z = 2437.290 }, rot = { x = 340.256, y = 356.249, z = 21.311 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 500007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -403.288, y = 195.029, z = 2420.454 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1500005, name = "PLATFORM_REACH_POINT_500005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_500005", action = "action_EVENT_PLATFORM_REACH_POINT_500005", trigger_count = 0 },
	{ config_id = 1500006, name = "AVATAR_NEAR_PLATFORM_500006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_500006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_500006", trigger_count = 0 },
	{ config_id = 1500007, name = "ENTER_REGION_500007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_500007", action = "action_EVENT_ENTER_REGION_500007", trigger_count = 0 },
	{ config_id = 1500008, name = "GADGET_STATE_CHANGE_500008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_500008", action = "action_EVENT_GADGET_STATE_CHANGE_500008" },
	{ config_id = 1500009, name = "GADGET_CREATE_500009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_500009", action = "action_EVENT_GADGET_CREATE_500009", trigger_count = 0 }
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
		gadgets = { 500001, 500002, 500003, 500010 },
		regions = { 500007 },
		triggers = { "PLATFORM_REACH_POINT_500005", "AVATAR_NEAR_PLATFORM_500006", "ENTER_REGION_500007", "GADGET_STATE_CHANGE_500008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 500001, 500004, 500010 },
		regions = { },
		triggers = { "GADGET_CREATE_500009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_500005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_500005(context, evt)
	-- 将configid为 500001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 500002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 500002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_500006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_500006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 500002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_500007(context, evt)
	if evt.param1 ~= 500007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_500007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 500002, 330200086) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 500003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_500008(context, evt)
	if 500001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_500008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302500, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_500009(context, evt)
	if 500001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_500009(context, evt)
	-- 将configid为 500001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end