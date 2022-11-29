-- 基础信息
local base_info = {
	group_id = 133004196
}

-- Trigger变量
local defs = {
	point_sum = 7,
	route_2 = 300400599,
	gadget_seelie = 196002
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
	{ config_id = 196001, gadget_id = 70710006, pos = { x = 2674.428, y = 249.087, z = -289.180 }, rot = { x = 354.617, y = 87.245, z = 17.537 }, level = 20, area_id = 4 },
	{ config_id = 196002, gadget_id = 70710010, pos = { x = 2690.151, y = 266.244, z = -346.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 300400600, area_id = 4 },
	{ config_id = 196003, gadget_id = 70710007, pos = { x = 2674.855, y = 249.189, z = -289.506 }, rot = { x = 342.144, y = 147.345, z = 4.167 }, level = 20, area_id = 4 },
	{ config_id = 196004, gadget_id = 70211111, pos = { x = 2675.926, y = 249.557, z = -289.940 }, rot = { x = 8.590, y = 65.457, z = 18.929 }, level = 16, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 196010, gadget_id = 70690001, pos = { x = 2691.672, y = 262.380, z = -310.820 }, rot = { x = 0.000, y = 9.208, z = 0.000 }, level = 20, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 196007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2690.460, y = 266.244, z = -346.585 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1196005, name = "PLATFORM_REACH_POINT_196005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_196005", action = "action_EVENT_PLATFORM_REACH_POINT_196005", trigger_count = 0 },
	{ config_id = 1196006, name = "AVATAR_NEAR_PLATFORM_196006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_196006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_196006", trigger_count = 0 },
	{ config_id = 1196007, name = "ENTER_REGION_196007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_196007", action = "action_EVENT_ENTER_REGION_196007", trigger_count = 0 },
	{ config_id = 1196008, name = "GADGET_STATE_CHANGE_196008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_196008", action = "action_EVENT_GADGET_STATE_CHANGE_196008" },
	{ config_id = 1196009, name = "GADGET_CREATE_196009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_196009", action = "action_EVENT_GADGET_CREATE_196009", trigger_count = 0 }
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
		gadgets = { 196001, 196002, 196003, 196010 },
		regions = { 196007 },
		triggers = { "PLATFORM_REACH_POINT_196005", "AVATAR_NEAR_PLATFORM_196006", "ENTER_REGION_196007", "GADGET_STATE_CHANGE_196008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 196001, 196004 },
		regions = { },
		triggers = { "GADGET_CREATE_196009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_196005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_196005(context, evt)
	-- 将configid为 196001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 196002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 196002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_196006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_196006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 196002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_196007(context, evt)
	if evt.param1 ~= 196007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_196007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 196002, 300400599) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 196003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_196008(context, evt)
	if 196001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_196008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133004196, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_196009(context, evt)
	if 196001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_196009(context, evt)
	-- 将configid为 196001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 196001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end