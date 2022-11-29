-- 基础信息
local base_info = {
	group_id = 166001400
}

-- Trigger变量
local defs = {
	point_sum = 13,
	route_2 = 600100062,
	gadget_seelie = 400002
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
	{ config_id = 400001, gadget_id = 70720218, pos = { x = 711.057, y = 760.111, z = 172.376 }, rot = { x = 0.000, y = 350.995, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 400002, gadget_id = 70720217, pos = { x = 709.967, y = 741.573, z = 207.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 600100061, area_id = 300 },
	{ config_id = 400003, gadget_id = 70720219, pos = { x = 710.996, y = 760.021, z = 172.502 }, rot = { x = 0.000, y = 358.979, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 400004, gadget_id = 70211101, pos = { x = 706.953, y = 759.159, z = 172.323 }, rot = { x = 15.286, y = 29.999, z = 359.746 }, level = 26, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 400007, shape = RegionShape.SPHERE, radius = 4, pos = { x = 710.584, y = 741.489, z = 207.736 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1400005, name = "PLATFORM_REACH_POINT_400005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_400005", action = "action_EVENT_PLATFORM_REACH_POINT_400005", trigger_count = 0 },
	{ config_id = 1400006, name = "AVATAR_NEAR_PLATFORM_400006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_400006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_400006", trigger_count = 0 },
	{ config_id = 1400007, name = "ENTER_REGION_400007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_400007", action = "action_EVENT_ENTER_REGION_400007", trigger_count = 0 },
	{ config_id = 1400008, name = "GADGET_STATE_CHANGE_400008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_400008", action = "action_EVENT_GADGET_STATE_CHANGE_400008" },
	{ config_id = 1400009, name = "GADGET_CREATE_400009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_400009", action = "action_EVENT_GADGET_CREATE_400009", trigger_count = 0 }
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
		gadgets = { 400001, 400002, 400003 },
		regions = { 400007 },
		triggers = { "PLATFORM_REACH_POINT_400005", "AVATAR_NEAR_PLATFORM_400006", "ENTER_REGION_400007", "GADGET_STATE_CHANGE_400008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 400001, 400004 },
		regions = { },
		triggers = { "GADGET_CREATE_400009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_400005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_400005(context, evt)
	-- 将configid为 400001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 400001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 400002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_400006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_400006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 400002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_400007(context, evt)
	if evt.param1 ~= 400007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_400007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 400002, 600100062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 400003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_400008(context, evt)
	if 400001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_400008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001400, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_400009(context, evt)
	if 400001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_400009(context, evt)
	-- 将configid为 400001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 400001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end