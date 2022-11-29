-- 基础信息
local base_info = {
	group_id = 133304426
}

-- Trigger变量
local defs = {
	point_sum = 7,
	route_2 = 330400064,
	gadget_seelie = 426002
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
	{ config_id = 426001, gadget_id = 70710006, pos = { x = -1197.006, y = 201.830, z = 2424.540 }, rot = { x = 0.000, y = 314.295, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 426002, gadget_id = 70710010, pos = { x = -1180.218, y = 195.643, z = 2447.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330400065, area_id = 21 },
	{ config_id = 426003, gadget_id = 70710007, pos = { x = -1196.132, y = 201.830, z = 2427.116 }, rot = { x = 0.000, y = 200.795, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 426004, gadget_id = 70211101, pos = { x = -1198.247, y = 201.723, z = 2424.996 }, rot = { x = 0.000, y = 11.632, z = 6.797 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 426011, gadget_id = 70290544, pos = { x = -1197.882, y = 206.631, z = 2423.681 }, rot = { x = 0.000, y = 19.128, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 426007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1180.218, y = 195.643, z = 2447.771 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1426005, name = "PLATFORM_REACH_POINT_426005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_426005", action = "action_EVENT_PLATFORM_REACH_POINT_426005", trigger_count = 0 },
	{ config_id = 1426006, name = "AVATAR_NEAR_PLATFORM_426006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_426006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_426006", trigger_count = 0 },
	{ config_id = 1426007, name = "ENTER_REGION_426007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_426007", action = "action_EVENT_ENTER_REGION_426007", trigger_count = 0 },
	{ config_id = 1426008, name = "GADGET_STATE_CHANGE_426008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_426008", action = "action_EVENT_GADGET_STATE_CHANGE_426008" },
	{ config_id = 1426009, name = "GADGET_CREATE_426009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_426009", action = "action_EVENT_GADGET_CREATE_426009", trigger_count = 0 },
	{ config_id = 1426012, name = "GADGET_CREATE_426012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_426012", action = "action_EVENT_GADGET_CREATE_426012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "pass", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1426010, name = "AVATAR_NEAR_PLATFORM_426010", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_426010", action = "action_EVENT_AVATAR_NEAR_PLATFORM_426010", trigger_count = 0 }
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
		gadgets = { 426001, 426002, 426003, 426011 },
		regions = { 426007 },
		triggers = { "PLATFORM_REACH_POINT_426005", "AVATAR_NEAR_PLATFORM_426006", "ENTER_REGION_426007", "GADGET_STATE_CHANGE_426008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 426001, 426004, 426011 },
		regions = { },
		triggers = { "GADGET_CREATE_426009", "GADGET_CREATE_426012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_426005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_426005(context, evt)
	-- 将configid为 426001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 426001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 426002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 426002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_426006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_426006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 426002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_426007(context, evt)
	if evt.param1 ~= 426007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_426007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 426002, 330400064) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 426003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_426008(context, evt)
	if 426001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_426008(context, evt)
	-- 将configid为 426011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 426011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304426, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_426009(context, evt)
	if 426001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_426009(context, evt)
	-- 将configid为 426001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 426001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_426012(context, evt)
	if 426011 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_426012(context, evt)
	-- 将configid为 426011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 426011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end