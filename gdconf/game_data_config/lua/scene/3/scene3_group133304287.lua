-- 基础信息
local base_info = {
	group_id = 133304287
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 330400028,
	gadget_seelie = 287002
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
	{ config_id = 287001, gadget_id = 70710006, pos = { x = -1056.551, y = 219.838, z = 2221.352 }, rot = { x = 0.000, y = 324.100, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 287002, gadget_id = 70710010, pos = { x = -1077.625, y = 216.844, z = 2262.523 }, rot = { x = 0.000, y = 133.053, z = 0.000 }, level = 27, route_id = 330400029, area_id = 21 },
	{ config_id = 287003, gadget_id = 70710007, pos = { x = -1058.125, y = 216.906, z = 2224.132 }, rot = { x = 319.363, y = 145.979, z = 3.901 }, level = 27, area_id = 24 },
	{ config_id = 287010, gadget_id = 70230112, pos = { x = -1068.131, y = 215.758, z = 2250.740 }, rot = { x = 309.982, y = 272.194, z = 87.137 }, level = 27, area_id = 21 },
	{ config_id = 287012, gadget_id = 70230112, pos = { x = -1057.716, y = 216.088, z = 2242.901 }, rot = { x = 271.837, y = 0.018, z = 306.436 }, level = 27, area_id = 24 },
	{ config_id = 287014, gadget_id = 70230112, pos = { x = -1057.063, y = 216.120, z = 2242.279 }, rot = { x = 271.838, y = 0.004, z = 323.418 }, level = 27, area_id = 24 },
	{ config_id = 287015, gadget_id = 70230112, pos = { x = -1057.352, y = 216.556, z = 2233.693 }, rot = { x = 338.500, y = 0.000, z = 20.460 }, level = 27, area_id = 24 },
	{ config_id = 287016, gadget_id = 70230112, pos = { x = -1057.049, y = 216.614, z = 2234.369 }, rot = { x = 338.500, y = 0.000, z = 5.275 }, level = 27, area_id = 24 },
	{ config_id = 287017, gadget_id = 70230112, pos = { x = -1057.650, y = 217.217, z = 2234.108 }, rot = { x = 338.500, y = 0.000, z = 34.415 }, level = 27, area_id = 24 },
	{ config_id = 287018, gadget_id = 70230112, pos = { x = -1068.131, y = 215.758, z = 2250.740 }, rot = { x = 309.982, y = 272.194, z = 87.137 }, level = 27, state = GadgetState.GearStart, area_id = 21 },
	{ config_id = 287019, gadget_id = 70230112, pos = { x = -1057.716, y = 216.088, z = 2242.901 }, rot = { x = 271.837, y = 0.018, z = 306.436 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 287020, gadget_id = 70230112, pos = { x = -1057.063, y = 216.120, z = 2242.279 }, rot = { x = 271.838, y = 0.004, z = 323.418 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 287021, gadget_id = 70230112, pos = { x = -1057.352, y = 216.556, z = 2233.693 }, rot = { x = 338.500, y = 0.000, z = 20.460 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 287022, gadget_id = 70230112, pos = { x = -1057.049, y = 216.614, z = 2234.369 }, rot = { x = 338.500, y = 0.000, z = 5.275 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 287023, gadget_id = 70230112, pos = { x = -1057.650, y = 217.217, z = 2234.108 }, rot = { x = 338.500, y = 0.000, z = 34.415 }, level = 27, state = GadgetState.GearStart, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 287007, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1077.625, y = 216.844, z = 2262.523 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 保底 291 var = 1
	{ config_id = 1287004, name = "GROUP_LOAD_287004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_287004", trigger_count = 0 },
	{ config_id = 1287005, name = "PLATFORM_REACH_POINT_287005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_287005", action = "action_EVENT_PLATFORM_REACH_POINT_287005", trigger_count = 0 },
	{ config_id = 1287006, name = "AVATAR_NEAR_PLATFORM_287006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_287006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_287006", trigger_count = 0 },
	{ config_id = 1287007, name = "ENTER_REGION_287007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287007", action = "action_EVENT_ENTER_REGION_287007", trigger_count = 0 },
	-- set 291 var = 1
	{ config_id = 1287008, name = "GADGET_STATE_CHANGE_287008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_287008", action = "action_EVENT_GADGET_STATE_CHANGE_287008" },
	{ config_id = 1287009, name = "GADGET_CREATE_287009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_287009", action = "action_EVENT_GADGET_CREATE_287009", trigger_count = 0 },
	-- 到达一号涂鸦
	{ config_id = 1287011, name = "PLATFORM_REACH_POINT_287011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_287011", action = "action_EVENT_PLATFORM_REACH_POINT_287011", trigger_count = 0 },
	-- 到达二号涂鸦
	{ config_id = 1287013, name = "PLATFORM_REACH_POINT_287013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_287013", action = "action_EVENT_PLATFORM_REACH_POINT_287013", trigger_count = 0 },
	-- 到达三号涂鸦
	{ config_id = 1287024, name = "PLATFORM_REACH_POINT_287024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_287024", action = "action_EVENT_PLATFORM_REACH_POINT_287024", trigger_count = 0 }
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
		gadgets = { 287001, 287002, 287003, 287010, 287012, 287014, 287015, 287016, 287017 },
		regions = { 287007 },
		triggers = { "PLATFORM_REACH_POINT_287005", "AVATAR_NEAR_PLATFORM_287006", "ENTER_REGION_287007", "GADGET_STATE_CHANGE_287008", "PLATFORM_REACH_POINT_287011", "PLATFORM_REACH_POINT_287013", "PLATFORM_REACH_POINT_287024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 287001, 287018, 287019, 287020, 287021, 287022, 287023 },
		regions = { },
		triggers = { "GROUP_LOAD_287004", "GADGET_CREATE_287009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_287004(context, evt)
	-- 针对当前group内变量名为 "allowActive" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "allowActive", 1, 133304291) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_287005(context, evt)
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
function action_EVENT_PLATFORM_REACH_POINT_287005(context, evt)
	-- 将configid为 287001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 287002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287002 }) then
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_287006(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_287006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 287002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_287007(context, evt)
	if evt.param1 ~= 287007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287007(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 287002, 330400028) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_287008(context, evt)
	if 287001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_287008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304287, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "allowActive" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "allowActive", 1, 133304291) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_287009(context, evt)
	if 287001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_287009(context, evt)
	-- 将configid为 287001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_287011(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  2 ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_287011(context, evt)
	-- 将configid为 287010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_287013(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  4 ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_287013(context, evt)
	-- 将configid为 287012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 287014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_287024(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  8 ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_287024(context, evt)
	-- 将configid为 287015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 287016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 287017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end