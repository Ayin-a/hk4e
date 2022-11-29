-- 基础信息
local base_info = {
	group_id = 133304430
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 330400066,
	gadget_seelie = 430002
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
	{ config_id = 430001, gadget_id = 70710006, pos = { x = -1469.274, y = 111.940, z = 2443.058 }, rot = { x = 0.000, y = 323.048, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 430002, gadget_id = 70710010, pos = { x = -1462.826, y = 134.710, z = 2504.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330400067, area_id = 21 },
	{ config_id = 430003, gadget_id = 70710007, pos = { x = -1469.375, y = 111.940, z = 2445.919 }, rot = { x = 0.000, y = 178.814, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 430004, gadget_id = 70211101, pos = { x = -1471.403, y = 111.971, z = 2443.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 430011, gadget_id = 70290544, pos = { x = -1470.057, y = 115.658, z = 2442.708 }, rot = { x = 0.000, y = 23.349, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 430007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1462.826, y = 134.710, z = 2504.585 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1430005, name = "PLATFORM_REACH_POINT_430005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_430005", action = "action_EVENT_PLATFORM_REACH_POINT_430005", trigger_count = 0 },
	{ config_id = 1430006, name = "AVATAR_NEAR_PLATFORM_430006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_430006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_430006", trigger_count = 0 },
	{ config_id = 1430007, name = "ENTER_REGION_430007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430007", action = "action_EVENT_ENTER_REGION_430007", trigger_count = 0 },
	-- 成功后
	{ config_id = 1430008, name = "GADGET_STATE_CHANGE_430008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_430008", action = "action_EVENT_GADGET_STATE_CHANGE_430008" },
	{ config_id = 1430009, name = "GADGET_CREATE_430009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_430009", action = "action_EVENT_GADGET_CREATE_430009", trigger_count = 0 },
	{ config_id = 1430012, name = "GADGET_CREATE_430012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_430012", action = "action_EVENT_GADGET_CREATE_430012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "pass", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1430010, name = "AVATAR_NEAR_PLATFORM_430010", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_430010", action = "action_EVENT_AVATAR_NEAR_PLATFORM_430010", trigger_count = 0 }
	}
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
		gadgets = { 430001, 430002, 430003, 430011 },
		regions = { 430007 },
		triggers = { "PLATFORM_REACH_POINT_430005", "AVATAR_NEAR_PLATFORM_430006", "ENTER_REGION_430007", "GADGET_STATE_CHANGE_430008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 430001, 430004, 430011 },
		regions = { },
		triggers = { "GADGET_CREATE_430009", "GADGET_CREATE_430012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_430005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_430005(context, evt)
	-- 将configid为 430001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 430001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 430002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 430002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_430006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_430006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 430002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_430007(context, evt)
	if evt.param1 ~= 430007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_430007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 430002, 330400066) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 430003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_430008(context, evt)
	if 430001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_430008(context, evt)
	-- 将configid为 430011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 430011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304430, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_430009(context, evt)
	if 430001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_430009(context, evt)
	-- 将configid为 430001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 430001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_430012(context, evt)
	if 430011 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_430012(context, evt)
	-- 将configid为 430011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 430011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end