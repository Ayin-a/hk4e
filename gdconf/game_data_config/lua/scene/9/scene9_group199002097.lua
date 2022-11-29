-- 基础信息
local base_info = {
	group_id = 199002097
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
	{ config_id = 97001, gadget_id = 70310332, pos = { x = 603.070, y = 120.598, z = -369.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 97002, gadget_id = 70310332, pos = { x = 601.823, y = 119.188, z = -362.987 }, rot = { x = 0.000, y = 168.776, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 401 },
	{ config_id = 97003, gadget_id = 70310332, pos = { x = 598.186, y = 119.544, z = -362.677 }, rot = { x = 0.000, y = 174.154, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, is_use_point_array = true, area_id = 401 },
	{ config_id = 97004, gadget_id = 70310310, pos = { x = 598.239, y = 119.536, z = -363.288 }, rot = { x = 2.289, y = 355.363, z = 359.815 }, level = 1, area_id = 401 },
	{ config_id = 97005, gadget_id = 70310310, pos = { x = 598.384, y = 119.607, z = -365.072 }, rot = { x = 2.289, y = 355.363, z = 359.815 }, level = 1, area_id = 401 },
	{ config_id = 97006, gadget_id = 70360001, pos = { x = 598.830, y = 120.754, z = -369.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 419 } }, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1097007, name = "SELECT_OPTION_97007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_97007", action = "action_EVENT_SELECT_OPTION_97007", trigger_count = 0 },
	{ config_id = 1097008, name = "PLATFORM_REACH_POINT_97008", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_97008", action = "action_EVENT_PLATFORM_REACH_POINT_97008", trigger_count = 0 },
	{ config_id = 1097010, name = "PLATFORM_REACH_POINT_97010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_97010", action = "action_EVENT_PLATFORM_REACH_POINT_97010", trigger_count = 0 },
	{ config_id = 1097011, name = "GROUP_LOAD_97011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_97011", action = "action_EVENT_GROUP_LOAD_97011", trigger_count = 0 },
	{ config_id = 1097012, name = "GROUP_LOAD_97012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_97012", action = "action_EVENT_GROUP_LOAD_97012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "TheFishCrow", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1097009, name = "PLATFORM_REACH_POINT_97009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_97009", action = "action_EVENT_PLATFORM_REACH_POINT_97009", trigger_count = 0 }
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
		gadgets = { 97001, 97002, 97003, 97004, 97005, 97006 },
		regions = { },
		triggers = { "SELECT_OPTION_97007", "PLATFORM_REACH_POINT_97008", "PLATFORM_REACH_POINT_97010", "GROUP_LOAD_97011", "GROUP_LOAD_97012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_97007(context, evt)
	-- 判断是gadgetid 97006 option_id 419
	if 97006 ~= evt.param1 then
		return false	
	end
	
	if 419 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_97007(context, evt)
	-- 将本组内变量名为 "TheFishCrow" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "TheFishCrow", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 97003, 900200130, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 97006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_97008(context, evt)
	-- 判断是gadgetid 为 97003的移动平台，是否到达了900200130 的点集中的 2 点
	
	if 97003 ~= evt.param1 then
	  return false
	end
	
	if 900200130 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_97008(context, evt)
	ScriptLib.SetGadgetTalkByConfigId(context, 199002097, 97003, 6800353)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_97010(context, evt)
	-- 判断是gadgetid 为 97003的移动平台，是否到达了900200130 的点集中的 2 点
	
	if 97003 ~= evt.param1 then
	  return false
	end
	
	if 900200130 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_97010(context, evt)
	-- 将configid为 97003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_97011(context, evt)
	-- 判断变量"TheFishCrow"为1
	if ScriptLib.GetGroupVariableValue(context, "TheFishCrow") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_97011(context, evt)
	-- 将configid为 97003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 97003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 97006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_97012(context, evt)
	-- 判断变量"TheFishCrow"为1
	if ScriptLib.GetGroupVariableValue(context, "TheFishCrow") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_97012(context, evt)
	ScriptLib.SetGadgetTalkByConfigId(context, 199002097, 97003, 6800353)
	
	return 0
end