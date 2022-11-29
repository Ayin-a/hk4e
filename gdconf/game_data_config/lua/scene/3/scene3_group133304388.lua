-- 基础信息
local base_info = {
	group_id = 133304388
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 330400042,
	gadget_seelie = 388002
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
	{ config_id = 388001, gadget_id = 70710006, pos = { x = -1101.220, y = 198.985, z = 2113.568 }, rot = { x = 0.000, y = 156.921, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 388002, gadget_id = 70710010, pos = { x = -1106.595, y = 187.515, z = 2110.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330400043, area_id = 21 },
	{ config_id = 388003, gadget_id = 70710007, pos = { x = -1103.353, y = 199.075, z = 2111.319 }, rot = { x = 0.000, y = 45.621, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 388004, gadget_id = 70220115, pos = { x = -1102.141, y = 187.653, z = 2107.987 }, rot = { x = 0.000, y = 3.106, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 388010, gadget_id = 70710352, pos = { x = -1101.950, y = 187.714, z = 2109.015 }, rot = { x = 0.000, y = 282.831, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 388007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1106.595, y = 187.515, z = 2110.092 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1388005, name = "PLATFORM_REACH_POINT_388005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_388005", action = "action_EVENT_PLATFORM_REACH_POINT_388005", trigger_count = 0 },
	{ config_id = 1388006, name = "AVATAR_NEAR_PLATFORM_388006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_388006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_388006", trigger_count = 0 },
	{ config_id = 1388007, name = "ENTER_REGION_388007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_388007", action = "action_EVENT_ENTER_REGION_388007", trigger_count = 0 },
	{ config_id = 1388008, name = "GADGET_STATE_CHANGE_388008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_388008", action = "action_EVENT_GADGET_STATE_CHANGE_388008" },
	{ config_id = 1388009, name = "GADGET_CREATE_388009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_388009", action = "action_EVENT_GADGET_CREATE_388009", trigger_count = 0 }
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
		gadgets = { 388001, 388002, 388003, 388004, 388010 },
		regions = { 388007 },
		triggers = { "PLATFORM_REACH_POINT_388005", "AVATAR_NEAR_PLATFORM_388006", "ENTER_REGION_388007", "GADGET_STATE_CHANGE_388008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 388001, 388004, 388010 },
		regions = { },
		triggers = { "GADGET_CREATE_388009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_388005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_388005(context, evt)
	-- 将configid为 388001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 388002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 388002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_388006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_388006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 388002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_388007(context, evt)
	if evt.param1 ~= 388007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_388007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 388002, 330400042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 388003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_388008(context, evt)
	if 388001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_388008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304388, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "count", 1, 133304025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_388009(context, evt)
	if 388001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_388009(context, evt)
	-- 将configid为 388001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 388001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end