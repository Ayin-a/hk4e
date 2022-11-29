-- 基础信息
local base_info = {
	group_id = 166001471
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
	{ config_id = 471001, gadget_id = 70290219, pos = { x = 79.949, y = 323.381, z = 392.571 }, rot = { x = 0.000, y = 268.812, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 471002, gadget_id = 70290219, pos = { x = 59.917, y = 322.935, z = 379.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 471003, gadget_id = 70290219, pos = { x = 61.850, y = 322.877, z = 404.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStop, persistent = true, area_id = 300 },
	{ config_id = 471004, gadget_id = 70290219, pos = { x = 49.214, y = 323.736, z = 392.304 }, rot = { x = 0.000, y = 90.199, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 471005, gadget_id = 70720217, pos = { x = 66.989, y = 323.379, z = 382.469 }, rot = { x = 0.000, y = 52.815, z = 0.000 }, level = 36, route_id = 600100086, persistent = true, area_id = 300 },
	{ config_id = 471007, gadget_id = 70290204, pos = { x = 57.170, y = 323.460, z = 413.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 471009, gadget_id = 70360342, pos = { x = 61.839, y = 323.420, z = 404.132 }, rot = { x = 2.014, y = 34.819, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 471010, gadget_id = 70290233, pos = { x = 60.961, y = 323.462, z = 413.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 471011, gadget_id = 70720217, pos = { x = 53.854, y = 323.482, z = 399.534 }, rot = { x = 0.000, y = 52.815, z = 0.000 }, level = 36, route_id = 600100084, persistent = true, area_id = 300 },
	-- 不需要persistent
	{ config_id = 471019, gadget_id = 70690029, pos = { x = 79.160, y = 323.561, z = 392.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 471022, gadget_id = 70211121, pos = { x = 78.563, y = 323.366, z = 390.064 }, rot = { x = 0.000, y = 341.203, z = 0.000 }, level = 26, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 471012, shape = RegionShape.SPHERE, radius = 3, pos = { x = 53.682, y = 323.492, z = 399.286 }, area_id = 300 },
	{ config_id = 471013, shape = RegionShape.SPHERE, radius = 3, pos = { x = 67.021, y = 323.379, z = 382.439 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1471008, name = "GADGET_STATE_CHANGE_471008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_471008", action = "action_EVENT_GADGET_STATE_CHANGE_471008" },
	{ config_id = 1471012, name = "ENTER_REGION_471012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_471012" },
	{ config_id = 1471013, name = "ENTER_REGION_471013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_471013" },
	{ config_id = 1471014, name = "ANY_GADGET_DIE_471014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_471014", action = "action_EVENT_ANY_GADGET_DIE_471014", trigger_count = 0 },
	{ config_id = 1471016, name = "ANY_GADGET_DIE_471016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_471016", action = "action_EVENT_ANY_GADGET_DIE_471016", trigger_count = 0 },
	{ config_id = 1471018, name = "GADGET_STATE_CHANGE_471018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_471018", action = "action_EVENT_GADGET_STATE_CHANGE_471018" },
	{ config_id = 1471020, name = "AVATAR_NEAR_PLATFORM_471020", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_471020", action = "action_EVENT_AVATAR_NEAR_PLATFORM_471020", trigger_count = 0 },
	{ config_id = 1471021, name = "AVATAR_NEAR_PLATFORM_471021", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_471021", action = "action_EVENT_AVATAR_NEAR_PLATFORM_471021", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 471006, gadget_id = 70310185, pos = { x = 47.577, y = 323.909, z = 390.266 }, rot = { x = 13.530, y = 311.553, z = 326.716 }, level = 36, persistent = true, interact_id = 88, area_id = 300 }
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
		gadgets = { 471001, 471002, 471003, 471004, 471005, 471007, 471009, 471010, 471011 },
		regions = { 471012, 471013 },
		triggers = { "ENTER_REGION_471012", "ENTER_REGION_471013", "ANY_GADGET_DIE_471014", "ANY_GADGET_DIE_471016", "GADGET_STATE_CHANGE_471018", "AVATAR_NEAR_PLATFORM_471020", "AVATAR_NEAR_PLATFORM_471021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 471001, 471002, 471003, 471004, 471022 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_471008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_471008(context, evt)
	if 471022 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_471008(context, evt)
	-- 针对当前group内变量名为 "chest" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "chest", 1, 166001472) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 创建id为471019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 471019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_471012(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 471011, 600100085) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_471013(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 471005, 600100087) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_471014(context, evt)
	if 471007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_471014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 471009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 471010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_471016(context, evt)
	if 471009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_471016(context, evt)
	-- 将configid为 471003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 471003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_471018(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001471, 471001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001471, 471002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001471, 471003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 166001471, 471004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_471018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 471005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 471011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "door" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door", 1, 166001472) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001471, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_471020(context, evt)
	if 471005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_471020(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 471005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_471021(context, evt)
	if 471011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_471021(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 471011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end