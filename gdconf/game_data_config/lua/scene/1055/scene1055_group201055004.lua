-- 基础信息
local base_info = {
	group_id = 201055004
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
	{ config_id = 4001, gadget_id = 70360100, pos = { x = 17.185, y = 55.992, z = -99.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, start_route = false },
	{ config_id = 4002, gadget_id = 70360100, pos = { x = 17.200, y = 55.174, z = -99.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, start_route = false },
	{ config_id = 4003, gadget_id = 70360100, pos = { x = 17.232, y = 54.354, z = -99.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, start_route = false },
	{ config_id = 4004, gadget_id = 70360100, pos = { x = 28.830, y = 55.936, z = -70.052 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 20, state = GadgetState.GearStart, start_route = false },
	{ config_id = 4006, gadget_id = 70350002, pos = { x = 68.515, y = 47.756, z = -64.534 }, rot = { x = 0.000, y = 90.716, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4007, gadget_id = 70360100, pos = { x = 28.828, y = 55.012, z = -70.052 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 20, state = GadgetState.GearStart, start_route = false },
	{ config_id = 4008, gadget_id = 70360016, pos = { x = 41.406, y = 58.857, z = -52.485 }, rot = { x = 272.281, y = 115.000, z = 244.758 }, level = 1 },
	{ config_id = 4009, gadget_id = 70360019, pos = { x = 34.577, y = 60.208, z = -51.294 }, rot = { x = 0.000, y = 90.000, z = 274.542 }, level = 1 },
	{ config_id = 4010, gadget_id = 70360100, pos = { x = 28.841, y = 54.146, z = -70.052 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 20, state = GadgetState.GearStart, start_route = false },
	{ config_id = 4011, gadget_id = 70360020, pos = { x = 43.647, y = 57.396, z = -52.786 }, rot = { x = 30.000, y = 90.000, z = 268.399 }, level = 1 },
	{ config_id = 4012, gadget_id = 70350006, pos = { x = 48.038, y = 52.449, z = -56.825 }, rot = { x = 0.000, y = 270.374, z = 180.000 }, level = 1 },
	{ config_id = 4014, gadget_id = 70360100, pos = { x = 36.165, y = 55.369, z = -52.648 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 6, start_route = false },
	{ config_id = 4015, gadget_id = 70360100, pos = { x = 36.156, y = 57.222, z = -52.648 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 3, start_route = false },
	{ config_id = 4016, gadget_id = 70360100, pos = { x = 36.187, y = 58.803, z = -52.648 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 4, start_route = false },
	{ config_id = 4017, gadget_id = 70360100, pos = { x = 40.011, y = 56.068, z = -99.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, start_route = false },
	{ config_id = 4018, gadget_id = 70360100, pos = { x = 39.984, y = 55.183, z = -99.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, start_route = false },
	{ config_id = 4019, gadget_id = 70360100, pos = { x = 39.979, y = 54.347, z = -99.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, start_route = false },
	{ config_id = 4020, gadget_id = 70710197, pos = { x = 2.100, y = 58.180, z = -90.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 11 },
	{ config_id = 4022, gadget_id = 70360100, pos = { x = 21.837, y = 55.221, z = -52.648 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 6, start_route = false },
	{ config_id = 4024, gadget_id = 70710197, pos = { x = -2.880, y = 58.180, z = -97.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9 },
	{ config_id = 4026, gadget_id = 70710197, pos = { x = -2.880, y = 58.180, z = -97.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9 },
	{ config_id = 4031, gadget_id = 70710197, pos = { x = -2.880, y = 58.180, z = -97.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 9 },
	{ config_id = 4032, gadget_id = 70360100, pos = { x = 21.829, y = 57.073, z = -52.536 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 5, start_route = false },
	{ config_id = 4033, gadget_id = 70360100, pos = { x = 21.860, y = 58.654, z = -52.543 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 6, start_route = false },
	{ config_id = 4034, gadget_id = 70360016, pos = { x = 38.196, y = 59.942, z = -52.569 }, rot = { x = 272.281, y = 115.000, z = 244.758 }, level = 1 },
	{ config_id = 4035, gadget_id = 70360020, pos = { x = 43.647, y = 57.396, z = -52.786 }, rot = { x = 30.000, y = 90.000, z = 268.399 }, level = 1 },
	{ config_id = 4036, gadget_id = 70710197, pos = { x = 56.794, y = 64.100, z = -51.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false }
}

-- 区域
regions = {
	{ config_id = 4013, shape = RegionShape.SPHERE, radius = 10, pos = { x = 55.448, y = 52.840, z = -67.831 } },
	{ config_id = 4021, shape = RegionShape.CUBIC, size = { x = 10.000, y = 20.000, z = 20.000 }, pos = { x = 10.773, y = 53.762, z = -73.324 } },
	{ config_id = 4037, shape = RegionShape.SPHERE, radius = 10, pos = { x = 56.291, y = 47.852, z = -55.961 } }
}

-- 触发器
triggers = {
	{ config_id = 1004005, name = "GADGET_STATE_CHANGE_4005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4005", action = "action_EVENT_GADGET_STATE_CHANGE_4005" },
	{ config_id = 1004013, name = "ENTER_REGION_4013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4013", action = "action_EVENT_ENTER_REGION_4013" },
	{ config_id = 1004021, name = "ENTER_REGION_4021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4021", action = "action_EVENT_ENTER_REGION_4021" },
	{ config_id = 1004023, name = "TIMER_EVENT_4023", event = EventType.EVENT_TIMER_EVENT, source = "timeTrans2start", condition = "", action = "action_EVENT_TIMER_EVENT_4023", trigger_count = 0 },
	{ config_id = 1004025, name = "TIMER_EVENT_4025", event = EventType.EVENT_TIMER_EVENT, source = "timeTrans2", condition = "", action = "action_EVENT_TIMER_EVENT_4025", trigger_count = 0 },
	{ config_id = 1004027, name = "TIMER_EVENT_4027", event = EventType.EVENT_TIMER_EVENT, source = "timeTrans3start", condition = "", action = "action_EVENT_TIMER_EVENT_4027", trigger_count = 0 },
	{ config_id = 1004028, name = "TIMER_EVENT_4028", event = EventType.EVENT_TIMER_EVENT, source = "timeTrans3", condition = "", action = "action_EVENT_TIMER_EVENT_4028", trigger_count = 0 },
	{ config_id = 1004029, name = "TIMER_EVENT_4029", event = EventType.EVENT_TIMER_EVENT, source = "timeTrans4start", condition = "", action = "action_EVENT_TIMER_EVENT_4029", trigger_count = 0 },
	{ config_id = 1004030, name = "TIMER_EVENT_4030", event = EventType.EVENT_TIMER_EVENT, source = "timeTrans4", condition = "", action = "action_EVENT_TIMER_EVENT_4030", trigger_count = 0 },
	{ config_id = 1004037, name = "ENTER_REGION_4037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4037", action = "action_EVENT_ENTER_REGION_4037" }
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
		gadgets = { 4001, 4002, 4003, 4004, 4006, 4007, 4008, 4009, 4010, 4011, 4012, 4014, 4015, 4016, 4017, 4018, 4019, 4022, 4032, 4033, 4034, 4035, 4036 },
		regions = { 4013, 4021, 4037 },
		triggers = { "GADGET_STATE_CHANGE_4005", "ENTER_REGION_4013", "ENTER_REGION_4021", "TIMER_EVENT_4023", "TIMER_EVENT_4025", "TIMER_EVENT_4027", "TIMER_EVENT_4028", "TIMER_EVENT_4029", "TIMER_EVENT_4030", "ENTER_REGION_4037" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
	if 4011 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4005(context, evt)
	-- 将configid为 4006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20105500401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201055006, 7)
	
	-- 将configid为 4014 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4014, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4015, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4022 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4022, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4032 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4032, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4033 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4033, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（36，58，-52），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=36, y=58, z=-52}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4013(context, evt)
	if evt.param1 ~= 4013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4013(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201055006, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201055006, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4021(context, evt)
	if evt.param1 ~= 4021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4021(context, evt)
	-- 触发镜头注目，注目位置为坐标（16，57，-96），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=16, y=57, z=-96}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建id为4020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟15秒后,向groupId为：201055004的对象,请求一次调用,并将string参数："timeTrans2start" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055004, "timeTrans2start", 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟30秒后,向groupId为：201055004的对象,请求一次调用,并将string参数："timeTrans3start" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055004, "timeTrans3start", 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟45秒后,向groupId为：201055004的对象,请求一次调用,并将string参数："timeTrans4start" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055004, "timeTrans4start", 45) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4023(context, evt)
	-- 创建id为4024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟45秒后,向groupId为：201055004的对象,请求一次调用,并将string参数："timeTrans2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055004, "timeTrans2", 45) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为4024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟45秒后,向groupId为：201055004的对象,请求一次调用,并将string参数："timeTrans2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055004, "timeTrans2", 45) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4027(context, evt)
	-- 创建id为4026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟45秒后,向groupId为：201055004的对象,请求一次调用,并将string参数："timeTrans3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055004, "timeTrans3", 45) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为4026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟45秒后,向groupId为：201055004的对象,请求一次调用,并将string参数："timeTrans3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055004, "timeTrans3", 45) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4029(context, evt)
	-- 创建id为4031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟45秒后,向groupId为：201055004的对象,请求一次调用,并将string参数："timeTrans4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055004, "timeTrans4", 45) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为4031的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4031 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟45秒后,向groupId为：201055004的对象,请求一次调用,并将string参数："timeTrans4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201055004, "timeTrans4", 45) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4037(context, evt)
	if evt.param1 ~= 4037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4037(context, evt)
	-- 触发镜头注目，注目位置为坐标（43，57，-52），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=43, y=57, z=-52}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end