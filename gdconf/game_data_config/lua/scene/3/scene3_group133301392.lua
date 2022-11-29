-- 基础信息
local base_info = {
	group_id = 133301392
}

-- Trigger变量
local defs = {
	point_sum = 19,
	route_2 = 330100064,
	gadget_seelie = 392002
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
	{ config_id = 392001, gadget_id = 70710006, pos = { x = -749.415, y = 131.496, z = 3438.974 }, rot = { x = 22.348, y = 84.390, z = 355.893 }, level = 33, area_id = 23 },
	{ config_id = 392002, gadget_id = 70710010, pos = { x = -586.588, y = 167.024, z = 3359.149 }, rot = { x = 0.000, y = 131.189, z = 0.000 }, level = 33, route_id = 330100065, area_id = 22 },
	{ config_id = 392003, gadget_id = 70710007, pos = { x = -746.566, y = 134.150, z = 3438.010 }, rot = { x = 37.403, y = 306.817, z = 5.454 }, level = 33, area_id = 23 },
	{ config_id = 392004, gadget_id = 70211101, pos = { x = -745.884, y = 130.401, z = 3440.322 }, rot = { x = 11.160, y = 86.620, z = 354.562 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 392007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -586.588, y = 167.024, z = 3359.149 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1392005, name = "PLATFORM_REACH_POINT_392005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_392005", action = "action_EVENT_PLATFORM_REACH_POINT_392005", trigger_count = 0 },
	{ config_id = 1392006, name = "AVATAR_NEAR_PLATFORM_392006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_392006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_392006", trigger_count = 0 },
	{ config_id = 1392007, name = "ENTER_REGION_392007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_392007", action = "action_EVENT_ENTER_REGION_392007", trigger_count = 0 },
	{ config_id = 1392008, name = "GADGET_STATE_CHANGE_392008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_392008", action = "action_EVENT_GADGET_STATE_CHANGE_392008" },
	{ config_id = 1392009, name = "GADGET_CREATE_392009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_392009", action = "action_EVENT_GADGET_CREATE_392009", trigger_count = 0 }
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
		gadgets = { 392001, 392002, 392003 },
		regions = { 392007 },
		triggers = { "PLATFORM_REACH_POINT_392005", "AVATAR_NEAR_PLATFORM_392006", "ENTER_REGION_392007", "GADGET_STATE_CHANGE_392008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 392001, 392004 },
		regions = { },
		triggers = { "GADGET_CREATE_392009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_392005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_392005(context, evt)
	-- 将configid为 392001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 392001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 392002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 392002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_392006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_392006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 392002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_392007(context, evt)
	if evt.param1 ~= 392007 then return false end
	
	-- 判断变量"go"为1
	if ScriptLib.GetGroupVariableValue(context, "go") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_392007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 392002, 330100064) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 392003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_392008(context, evt)
	if 392001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_392008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301392, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_392009(context, evt)
	if 392001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_392009(context, evt)
	-- 将configid为 392001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 392001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end