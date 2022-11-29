-- 基础信息
local base_info = {
	group_id = 133008226
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
	{ config_id = 226001, gadget_id = 70310017, pos = { x = 824.416, y = 331.311, z = -667.880 }, rot = { x = 0.511, y = 359.985, z = 356.587 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 226002, gadget_id = 70310017, pos = { x = 809.394, y = 331.480, z = -644.351 }, rot = { x = 0.147, y = -0.003, z = 357.980 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 226003, gadget_id = 70310017, pos = { x = 832.329, y = 331.174, z = -630.917 }, rot = { x = 357.986, y = 359.925, z = 4.293 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 226004, gadget_id = 70310017, pos = { x = 847.144, y = 331.281, z = -653.491 }, rot = { x = 2.086, y = 0.018, z = 0.978 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 226005, gadget_id = 70720214, pos = { x = 837.535, y = 330.749, z = -664.196 }, rot = { x = 0.000, y = 236.015, z = 0.000 }, level = 30, route_id = 300800052, start_route = false, persistent = true, area_id = 10 },
	{ config_id = 226006, gadget_id = 70720214, pos = { x = 819.533, y = 330.726, z = -634.834 }, rot = { x = 0.000, y = 239.688, z = 0.000 }, level = 30, route_id = 300800053, start_route = false, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 226007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 837.586, y = 330.747, z = -664.303 }, area_id = 10 },
	{ config_id = 226008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 819.351, y = 330.726, z = -634.878 }, area_id = 10 },
	{ config_id = 226026, shape = RegionShape.SPHERE, radius = 20, pos = { x = 831.830, y = 332.892, z = -648.497 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1226007, name = "ENTER_REGION_226007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_226007", action = "action_EVENT_ENTER_REGION_226007", trigger_count = 0 },
	{ config_id = 1226008, name = "ENTER_REGION_226008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_226008", action = "action_EVENT_ENTER_REGION_226008", trigger_count = 0 },
	{ config_id = 1226009, name = "PLATFORM_REACH_POINT_226009", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_226009", action = "action_EVENT_PLATFORM_REACH_POINT_226009", trigger_count = 0 },
	{ config_id = 1226010, name = "PLATFORM_REACH_POINT_226010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_226010", action = "action_EVENT_PLATFORM_REACH_POINT_226010", trigger_count = 0 },
	{ config_id = 1226011, name = "PLATFORM_REACH_POINT_226011", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_226011", action = "action_EVENT_PLATFORM_REACH_POINT_226011", trigger_count = 0 },
	{ config_id = 1226012, name = "PLATFORM_REACH_POINT_226012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_226012", action = "action_EVENT_PLATFORM_REACH_POINT_226012", trigger_count = 0 },
	{ config_id = 1226013, name = "PLATFORM_REACH_POINT_226013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_226013", action = "action_EVENT_PLATFORM_REACH_POINT_226013", trigger_count = 0 },
	{ config_id = 1226014, name = "PLATFORM_REACH_POINT_226014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_226014", action = "action_EVENT_PLATFORM_REACH_POINT_226014", trigger_count = 0 },
	{ config_id = 1226015, name = "PLATFORM_REACH_POINT_226015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_226015", action = "action_EVENT_PLATFORM_REACH_POINT_226015", trigger_count = 0 },
	{ config_id = 1226016, name = "PLATFORM_REACH_POINT_226016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_226016", action = "action_EVENT_PLATFORM_REACH_POINT_226016", trigger_count = 0 },
	{ config_id = 1226017, name = "TIMER_EVENT_226017", event = EventType.EVENT_TIMER_EVENT, source = "gadget1", condition = "", action = "action_EVENT_TIMER_EVENT_226017", trigger_count = 0 },
	{ config_id = 1226018, name = "TIMER_EVENT_226018", event = EventType.EVENT_TIMER_EVENT, source = "gadget2", condition = "", action = "action_EVENT_TIMER_EVENT_226018", trigger_count = 0 },
	{ config_id = 1226019, name = "TIMER_EVENT_226019", event = EventType.EVENT_TIMER_EVENT, source = "gadget3", condition = "", action = "action_EVENT_TIMER_EVENT_226019", trigger_count = 0 },
	{ config_id = 1226020, name = "TIMER_EVENT_226020", event = EventType.EVENT_TIMER_EVENT, source = "gadget4", condition = "", action = "action_EVENT_TIMER_EVENT_226020", trigger_count = 0 },
	{ config_id = 1226021, name = "GADGET_STATE_CHANGE_226021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_226021", action = "action_EVENT_GADGET_STATE_CHANGE_226021" },
	{ config_id = 1226022, name = "GADGET_CREATE_226022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_226022", action = "action_EVENT_GADGET_CREATE_226022", trigger_count = 0 },
	{ config_id = 1226023, name = "VARIABLE_CHANGE_226023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_226023", action = "action_EVENT_VARIABLE_CHANGE_226023", trigger_count = 0 },
	{ config_id = 1226024, name = "VARIABLE_CHANGE_226024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_226024", action = "action_EVENT_VARIABLE_CHANGE_226024", trigger_count = 0 },
	{ config_id = 1226025, name = "VARIABLE_CHANGE_226025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_226025", action = "action_EVENT_VARIABLE_CHANGE_226025", trigger_count = 0 },
	{ config_id = 1226026, name = "ENTER_REGION_226026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_226026", action = "action_EVENT_ENTER_REGION_226026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "tryTimes", value = 0, no_refresh = true }
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
		gadgets = { 226001, 226002, 226003, 226004, 226005, 226006 },
		regions = { 226007, 226008 },
		triggers = { "ENTER_REGION_226007", "ENTER_REGION_226008", "PLATFORM_REACH_POINT_226009", "PLATFORM_REACH_POINT_226010", "PLATFORM_REACH_POINT_226011", "PLATFORM_REACH_POINT_226012", "PLATFORM_REACH_POINT_226013", "PLATFORM_REACH_POINT_226014", "PLATFORM_REACH_POINT_226015", "PLATFORM_REACH_POINT_226016", "TIMER_EVENT_226017", "TIMER_EVENT_226018", "TIMER_EVENT_226019", "TIMER_EVENT_226020", "GADGET_STATE_CHANGE_226021", "VARIABLE_CHANGE_226023", "VARIABLE_CHANGE_226024", "VARIABLE_CHANGE_226025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 226001, 226002, 226003, 226004 },
		regions = { },
		triggers = { "GADGET_CREATE_226022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_226007(context, evt)
	if evt.param1 ~= 226007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_226007(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 226005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_226008(context, evt)
	if evt.param1 ~= 226008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_226008(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 226006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_226009(context, evt)
	-- 判断是gadgetid 为 226005的移动平台，是否到达了300800052 的路线中的 2 点
	
	if 226005 ~= evt.param1 then
	  return false
	end
	
	if 300800052 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_226009(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 226001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟7秒后,向groupId为：133008226的对象,请求一次调用,并将string参数："gadget1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008226, "gadget1", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_226010(context, evt)
	-- 判断是gadgetid 为 226005的移动平台，是否到达了300800052 的路线中的 4 点
	
	if 226005 ~= evt.param1 then
	  return false
	end
	
	if 300800052 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_226010(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 226002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟7秒后,向groupId为：133008226的对象,请求一次调用,并将string参数："gadget2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008226, "gadget2", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_226011(context, evt)
	-- 判断是gadgetid 为 226005的移动平台，是否到达了300800052 的路线中的 6 点
	
	if 226005 ~= evt.param1 then
	  return false
	end
	
	if 300800052 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_226011(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 226003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟7秒后,向groupId为：133008226的对象,请求一次调用,并将string参数："gadget3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008226, "gadget3", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_226012(context, evt)
	-- 判断是gadgetid 为 226005的移动平台，是否到达了300800052 的路线中的 8 点
	
	if 226005 ~= evt.param1 then
	  return false
	end
	
	if 300800052 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_226012(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget4") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 226004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟7秒后,向groupId为：133008226的对象,请求一次调用,并将string参数："gadget4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008226, "gadget4", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_226013(context, evt)
	-- 判断是gadgetid 为 226006的移动平台，是否到达了300800053 的路线中的 2 点
	
	if 226006 ~= evt.param1 then
	  return false
	end
	
	if 300800053 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_226013(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 226002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟7秒后,向groupId为：133008226的对象,请求一次调用,并将string参数："gadget2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008226, "gadget2", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_226014(context, evt)
	-- 判断是gadgetid 为 226006的移动平台，是否到达了300800053 的路线中的 4 点
	
	if 226006 ~= evt.param1 then
	  return false
	end
	
	if 300800053 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_226014(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 226001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟7秒后,向groupId为：133008226的对象,请求一次调用,并将string参数："gadget1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008226, "gadget1", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_226015(context, evt)
	-- 判断是gadgetid 为 226006的移动平台，是否到达了300800053 的路线中的 6 点
	
	if 226006 ~= evt.param1 then
	  return false
	end
	
	if 300800053 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_226015(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget4") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 226004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟7秒后,向groupId为：133008226的对象,请求一次调用,并将string参数："gadget4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008226, "gadget4", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_226016(context, evt)
	-- 判断是gadgetid 为 226006的移动平台，是否到达了300800053 的路线中的 8 点
	
	if 226006 ~= evt.param1 then
	  return false
	end
	
	if 300800053 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_226016(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 226003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟7秒后,向groupId为：133008226的对象,请求一次调用,并将string参数："gadget3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008226, "gadget3", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_226017(context, evt)
	-- 将configid为 226001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_226018(context, evt)
	-- 将configid为 226002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_226019(context, evt)
	-- 将configid为 226003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_226020(context, evt)
	-- 将configid为 226004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "tryTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tryTimes", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_226021(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133008226, 226001) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133008226, 226002) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133008226, 226003) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133008226, 226004) ~= GadgetState.GearStart then
	        return false
	end 
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_226021(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133008227, monsters = {}, gadgets = {227001} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133008226, monsters = {}, gadgets = {226005,226006} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133008226, "gadget4") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008226, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_226022(context, evt)
	if 226001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_226022(context, evt)
	-- 将configid为 226001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 226002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 226003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 226004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 226004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_226023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tryTimes"为2
	if ScriptLib.GetGroupVariableValue(context, "tryTimes") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_226023(context, evt)
	-- 调用提示id为 300822601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_226024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tryTimes"为4
	if ScriptLib.GetGroupVariableValue(context, "tryTimes") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_226024(context, evt)
	-- 调用提示id为 300822602 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822602) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_226025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"tryTimes"为6
	if ScriptLib.GetGroupVariableValue(context, "tryTimes") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_226025(context, evt)
	-- 调用提示id为 300822603 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822603) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_226026(context, evt)
	if evt.param1 ~= 226026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_226026(context, evt)
	-- 调用提示id为 300822620 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300822620) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end