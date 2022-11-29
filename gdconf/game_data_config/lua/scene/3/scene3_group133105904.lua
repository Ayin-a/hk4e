-- 基础信息
local base_info = {
	group_id = 133105904
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
	{ config_id = 904001, gadget_id = 70310017, pos = { x = 688.142, y = 202.968, z = -877.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 904002, gadget_id = 70310017, pos = { x = 693.509, y = 203.299, z = -869.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 904003, gadget_id = 70310017, pos = { x = 678.433, y = 202.678, z = -874.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 904004, gadget_id = 70310017, pos = { x = 679.497, y = 202.187, z = -864.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 904005, gadget_id = 70310017, pos = { x = 689.647, y = 202.523, z = -861.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 10 },
	{ config_id = 904007, gadget_id = 70720214, pos = { x = 681.551, y = 207.436, z = -858.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500098, start_route = false, area_id = 10 },
	{ config_id = 904008, gadget_id = 70720214, pos = { x = 678.701, y = 203.222, z = -869.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500099, start_route = false, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 904006, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = 679.224, y = 202.350, z = -869.876 }, area_id = 10 },
	{ config_id = 904009, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = 681.961, y = 208.236, z = -858.063 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1904006, name = "ENTER_REGION_904006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_904006", action = "action_EVENT_ENTER_REGION_904006", trigger_count = 0 },
	{ config_id = 1904009, name = "ENTER_REGION_904009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_904009", action = "action_EVENT_ENTER_REGION_904009", trigger_count = 0 },
	{ config_id = 1904010, name = "PLATFORM_REACH_POINT_904010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904010", action = "action_EVENT_PLATFORM_REACH_POINT_904010", trigger_count = 0 },
	{ config_id = 1904011, name = "TIMER_EVENT_904011", event = EventType.EVENT_TIMER_EVENT, source = "gadget1", condition = "", action = "action_EVENT_TIMER_EVENT_904011", trigger_count = 0 },
	{ config_id = 1904012, name = "TIMER_EVENT_904012", event = EventType.EVENT_TIMER_EVENT, source = "gadget2", condition = "", action = "action_EVENT_TIMER_EVENT_904012", trigger_count = 0 },
	{ config_id = 1904013, name = "TIMER_EVENT_904013", event = EventType.EVENT_TIMER_EVENT, source = "gadget3", condition = "", action = "action_EVENT_TIMER_EVENT_904013", trigger_count = 0 },
	{ config_id = 1904014, name = "TIMER_EVENT_904014", event = EventType.EVENT_TIMER_EVENT, source = "gadget4", condition = "", action = "action_EVENT_TIMER_EVENT_904014", trigger_count = 0 },
	{ config_id = 1904015, name = "TIMER_EVENT_904015", event = EventType.EVENT_TIMER_EVENT, source = "gadget5", condition = "", action = "action_EVENT_TIMER_EVENT_904015", trigger_count = 0 },
	{ config_id = 1904016, name = "PLATFORM_REACH_POINT_904016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904016", action = "action_EVENT_PLATFORM_REACH_POINT_904016", trigger_count = 0 },
	{ config_id = 1904017, name = "PLATFORM_REACH_POINT_904017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904017", action = "action_EVENT_PLATFORM_REACH_POINT_904017", trigger_count = 0 },
	{ config_id = 1904018, name = "PLATFORM_REACH_POINT_904018", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904018", action = "action_EVENT_PLATFORM_REACH_POINT_904018", trigger_count = 0 },
	{ config_id = 1904019, name = "PLATFORM_REACH_POINT_904019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904019", action = "action_EVENT_PLATFORM_REACH_POINT_904019", trigger_count = 0 },
	{ config_id = 1904020, name = "PLATFORM_REACH_POINT_904020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904020", action = "action_EVENT_PLATFORM_REACH_POINT_904020", trigger_count = 0 },
	{ config_id = 1904021, name = "PLATFORM_REACH_POINT_904021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904021", action = "action_EVENT_PLATFORM_REACH_POINT_904021", trigger_count = 0 },
	{ config_id = 1904022, name = "PLATFORM_REACH_POINT_904022", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904022", action = "action_EVENT_PLATFORM_REACH_POINT_904022", trigger_count = 0 },
	{ config_id = 1904023, name = "PLATFORM_REACH_POINT_904023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904023", action = "action_EVENT_PLATFORM_REACH_POINT_904023", trigger_count = 0 },
	{ config_id = 1904024, name = "PLATFORM_REACH_POINT_904024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_904024", action = "action_EVENT_PLATFORM_REACH_POINT_904024", trigger_count = 0 },
	{ config_id = 1904025, name = "GADGET_STATE_CHANGE_904025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_904025", action = "action_EVENT_GADGET_STATE_CHANGE_904025", trigger_count = 0 },
	{ config_id = 1904026, name = "GADGET_CREATE_904026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_904026", action = "action_EVENT_GADGET_CREATE_904026", trigger_count = 0 },
	{ config_id = 1904027, name = "QUEST_START_904027", event = EventType.EVENT_QUEST_START, source = "1104510", condition = "condition_EVENT_QUEST_START_904027", action = "action_EVENT_QUEST_START_904027", trigger_count = 0 },
	{ config_id = 1904028, name = "QUEST_START_904028", event = EventType.EVENT_QUEST_START, source = "1104510", condition = "condition_EVENT_QUEST_START_904028", action = "action_EVENT_QUEST_START_904028", trigger_count = 0 },
	{ config_id = 1904029, name = "QUEST_FINISH_904029", event = EventType.EVENT_QUEST_FINISH, source = "1104502", condition = "", action = "action_EVENT_QUEST_FINISH_904029", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		gadgets = { 904001, 904002, 904003, 904004, 904005, 904007, 904008 },
		regions = { 904006, 904009 },
		triggers = { "ENTER_REGION_904006", "ENTER_REGION_904009", "PLATFORM_REACH_POINT_904010", "TIMER_EVENT_904011", "TIMER_EVENT_904012", "TIMER_EVENT_904013", "TIMER_EVENT_904014", "TIMER_EVENT_904015", "PLATFORM_REACH_POINT_904016", "PLATFORM_REACH_POINT_904017", "PLATFORM_REACH_POINT_904018", "PLATFORM_REACH_POINT_904019", "PLATFORM_REACH_POINT_904020", "PLATFORM_REACH_POINT_904021", "PLATFORM_REACH_POINT_904022", "PLATFORM_REACH_POINT_904023", "PLATFORM_REACH_POINT_904024", "GADGET_STATE_CHANGE_904025", "QUEST_START_904027", "QUEST_START_904028", "QUEST_FINISH_904029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 904001, 904002, 904003, 904004, 904005 },
		regions = { },
		triggers = { "GADGET_CREATE_904026", "QUEST_START_904027", "QUEST_START_904028", "QUEST_FINISH_904029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_904027", "QUEST_START_904028", "QUEST_FINISH_904029" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_904006(context, evt)
	if evt.param1 ~= 904006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_904006(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 904008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_904009(context, evt)
	if evt.param1 ~= 904009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_904009(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 904007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904010(context, evt)
	-- 判断是gadgetid 为 904007的移动平台，是否到达了310500098 的路线中的 2 点
	
	if 904007 ~= evt.param1 then
	  return false
	end
	
	if 310500098 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904010(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget5", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_904011(context, evt)
	-- 将configid为 904001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_904012(context, evt)
	-- 将configid为 904002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_904013(context, evt)
	-- 将configid为 904003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_904014(context, evt)
	-- 将configid为 904004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_904015(context, evt)
	-- 将configid为 904005 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904005, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904016(context, evt)
	-- 判断是gadgetid 为 904007的移动平台，是否到达了310500098 的路线中的 4 点
	
	if 904007 ~= evt.param1 then
	  return false
	end
	
	if 310500098 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904016(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget2", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904017(context, evt)
	-- 判断是gadgetid 为 904007的移动平台，是否到达了310500098 的路线中的 6 点
	
	if 904007 ~= evt.param1 then
	  return false
	end
	
	if 310500098 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904017(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget1", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904018(context, evt)
	-- 判断是gadgetid 为 904007的移动平台，是否到达了310500098 的路线中的 8 点
	
	if 904007 ~= evt.param1 then
	  return false
	end
	
	if 310500098 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904018(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget3", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904019(context, evt)
	-- 判断是gadgetid 为 904007的移动平台，是否到达了310500098 的路线中的 10 点
	
	if 904007 ~= evt.param1 then
	  return false
	end
	
	if 310500098 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904019(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget4") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget4", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904020(context, evt)
	-- 判断是gadgetid 为 904008的移动平台，是否到达了310500099 的路线中的 2 点
	
	if 904008 ~= evt.param1 then
	  return false
	end
	
	if 310500099 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904020(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget4") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget4", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904021(context, evt)
	-- 判断是gadgetid 为 904008的移动平台，是否到达了310500099 的路线中的 4 点
	
	if 904008 ~= evt.param1 then
	  return false
	end
	
	if 310500099 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904021(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget5", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904022(context, evt)
	-- 判断是gadgetid 为 904008的移动平台，是否到达了310500099 的路线中的 6 点
	
	if 904008 ~= evt.param1 then
	  return false
	end
	
	if 310500099 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904022(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget2", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904023(context, evt)
	-- 判断是gadgetid 为 904008的移动平台，是否到达了310500099 的路线中的 8 点
	
	if 904008 ~= evt.param1 then
	  return false
	end
	
	if 310500099 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904023(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget1", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_904024(context, evt)
	-- 判断是gadgetid 为 904008的移动平台，是否到达了310500099 的路线中的 10 点
	
	if 904008 ~= evt.param1 then
	  return false
	end
	
	if 310500099 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_904024(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将configid为 904003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5.2秒后,向groupId为：133105904的对象,请求一次调用,并将string参数："gadget3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133105904, "gadget3", 5.2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_904025(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 133105904, 904001) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133105904, 904002) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133105904, 904003) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133105904, 904004) ~= GadgetState.GearStart then
	        return false
	end 
	
	if ScriptLib.GetGadgetStateByConfigId(context, 133105904, 904005) ~= GadgetState.GearStart then
	        return false
	end 
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_904025(context, evt)
	-- 调用提示id为 400020 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400020) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331059041") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133105904, monsters = {}, gadgets = {904007,904008} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget4") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133105904, "gadget5") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105904, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_904026(context, evt)
	if 904001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_904026(context, evt)
	-- 将configid为 904001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 904002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 904003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 904004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 904005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 904005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_904027(context, evt)
	-- 判断变量"quest"为0
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_904027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105904, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_904028(context, evt)
	-- 判断变量"quest"为1
	if ScriptLib.GetGroupVariableValue(context, "quest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_904028(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133105904, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_904029(context, evt)
	-- 将本组内变量名为 "quest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "quest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end