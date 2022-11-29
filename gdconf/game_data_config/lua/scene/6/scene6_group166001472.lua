-- 基础信息
local base_info = {
	group_id = 166001472
}

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
	{ config_id = 472001, gadget_id = 70290281, pos = { x = 64.350, y = 333.870, z = 392.274 }, rot = { x = 90.000, y = 270.571, z = 0.000 }, level = 32, persistent = true, area_id = 300 },
	{ config_id = 472002, gadget_id = 70350081, pos = { x = 62.357, y = 334.803, z = 399.179 }, rot = { x = 0.000, y = 325.972, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 472004, gadget_id = 70720217, pos = { x = 78.356, y = 322.237, z = 390.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, route_id = 600100088, persistent = true, area_id = 300 },
	{ config_id = 472006, gadget_id = 70290219, pos = { x = 69.867, y = 334.848, z = 392.062 }, rot = { x = 0.000, y = 264.538, z = 0.023 }, level = 36, area_id = 300 },
	{ config_id = 472007, gadget_id = 70290219, pos = { x = 56.653, y = 335.010, z = 391.694 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 472010, gadget_id = 70360001, pos = { x = 62.512, y = 336.310, z = 399.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 472014, gadget_id = 70720218, pos = { x = 53.627, y = 313.104, z = 381.474 }, rot = { x = 0.000, y = 128.143, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 472015, gadget_id = 70211111, pos = { x = 55.594, y = 313.075, z = 382.672 }, rot = { x = 0.000, y = 87.167, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 472013, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 61.932, y = 328.459, z = 392.012 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1472003, name = "VARIABLE_CHANGE_472003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_472003", action = "action_EVENT_VARIABLE_CHANGE_472003" },
	{ config_id = 1472005, name = "VARIABLE_CHANGE_472005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_472005", action = "action_EVENT_VARIABLE_CHANGE_472005" },
	{ config_id = 1472008, name = "GADGET_STATE_CHANGE_472008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_472008", action = "action_EVENT_GADGET_STATE_CHANGE_472008" },
	{ config_id = 1472009, name = "GADGET_STATE_CHANGE_472009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_472009", action = "action_EVENT_GADGET_STATE_CHANGE_472009" },
	{ config_id = 1472011, name = "GADGET_CREATE_472011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_472011", action = "action_EVENT_GADGET_CREATE_472011", trigger_count = 0 },
	{ config_id = 1472012, name = "SELECT_OPTION_472012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_472012", action = "action_EVENT_SELECT_OPTION_472012" },
	{ config_id = 1472013, name = "ENTER_REGION_472013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_472013", action = "action_EVENT_ENTER_REGION_472013", trigger_count = 0 },
	{ config_id = 1472016, name = "PLATFORM_REACH_POINT_472016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT_472016", trigger_count = 0 },
	{ config_id = 1472017, name = "AVATAR_NEAR_PLATFORM_472017", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "", action = "action_EVENT_AVATAR_NEAR_PLATFORM_472017", trigger_count = 0 },
	{ config_id = 1472018, name = "GROUP_LOAD_472018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_472018", action = "action_EVENT_GROUP_LOAD_472018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "door", value = 0, no_refresh = true },
	{ config_id = 2, name = "chest", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 472001, 472002, 472006, 472007 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_472003", "GADGET_STATE_CHANGE_472008", "GADGET_STATE_CHANGE_472009", "GADGET_CREATE_472011", "SELECT_OPTION_472012", "PLATFORM_REACH_POINT_472016", "AVATAR_NEAR_PLATFORM_472017", "GROUP_LOAD_472018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 472004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_472005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 472014 },
		regions = { 472013 },
		triggers = { "ENTER_REGION_472013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_472003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"door"为1
	if ScriptLib.GetGroupVariableValue(context, "door") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_472003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001472, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_472005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chest"为1
	if ScriptLib.GetGroupVariableValue(context, "chest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_472005(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 472004, 600100089) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_472008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001472, 472006) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001472, 472007) then
		return false
	end
	
	-- 判断变量"chest"为1
	if ScriptLib.GetGroupVariableValue(context, "chest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_472008(context, evt)
	-- 将configid为 472002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 472002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_472009(context, evt)
	if 472002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_472009(context, evt)
	-- 创建id为472010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 472010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_472011(context, evt)
	if 472010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_472011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 166001472, 472010, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_472012(context, evt)
	-- 判断是gadgetid 472010 option_id 1
	if 472010 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_472012(context, evt)
	-- 将本组内变量名为 "door" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "door", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 472002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 472002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 472001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 472001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 472010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001472, 3)
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 472004, 600100090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_472013(context, evt)
	if evt.param1 ~= 472013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_472013(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 472004, 600100090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 472004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_472016(context, evt)
	-- 将configid为 472014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 472014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 472004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 472004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为472015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 472015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "chest" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chest", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_472017(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 472004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_472018(context, evt)
	-- 判断变量"chest"为1
	if ScriptLib.GetGroupVariableValue(context, "chest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_472018(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 472004, 600100089) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001472, 3)
	
	return 0
end