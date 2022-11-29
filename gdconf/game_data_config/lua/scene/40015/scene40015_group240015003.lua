-- 基础信息
local base_info = {
	group_id = 240015003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3025, monster_id = 25010201, pos = { x = -91.632, y = 63.419, z = 151.686 }, rot = { x = 0.000, y = 209.396, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3026, monster_id = 25010201, pos = { x = -92.300, y = 63.373, z = 148.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3027, monster_id = 25020201, pos = { x = -89.929, y = 63.373, z = 148.473 }, rot = { x = 0.000, y = 316.934, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3002, gadget_id = 70310032, pos = { x = -75.423, y = 62.302, z = 141.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70310032, pos = { x = -70.363, y = 62.865, z = 139.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70310032, pos = { x = -66.055, y = 63.663, z = 135.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70310032, pos = { x = -61.877, y = 64.760, z = 132.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70310032, pos = { x = -42.955, y = 66.088, z = 121.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70310032, pos = { x = -39.578, y = 65.525, z = 119.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70310032, pos = { x = -36.141, y = 65.203, z = 117.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, gadget_id = 70310032, pos = { x = -32.544, y = 64.554, z = 116.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70310032, pos = { x = -57.097, y = 65.726, z = 130.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70310032, pos = { x = -46.681, y = 67.031, z = 123.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -91.286, y = 62.266, z = 153.882 } }
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "ENTER_REGION_3001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3001", action = "" },
	{ config_id = 1003010, name = "GADGET_CREATE_3010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3010", action = "action_EVENT_GADGET_CREATE_3010", trigger_count = 0 },
	{ config_id = 1003011, name = "GADGET_CREATE_3011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3011", action = "action_EVENT_GADGET_CREATE_3011", trigger_count = 0 },
	{ config_id = 1003012, name = "GADGET_CREATE_3012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3012", action = "action_EVENT_GADGET_CREATE_3012", trigger_count = 0 },
	{ config_id = 1003013, name = "GADGET_CREATE_3013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3013", action = "action_EVENT_GADGET_CREATE_3013", trigger_count = 0 },
	{ config_id = 1003014, name = "TIMER_EVENT_3014", event = EventType.EVENT_TIMER_EVENT, source = "time5", condition = "condition_EVENT_TIMER_EVENT_3014", action = "action_EVENT_TIMER_EVENT_3014", trigger_count = 0 },
	{ config_id = 1003015, name = "TIMER_EVENT_3015", event = EventType.EVENT_TIMER_EVENT, source = "time4", condition = "condition_EVENT_TIMER_EVENT_3015", action = "action_EVENT_TIMER_EVENT_3015", trigger_count = 0 },
	{ config_id = 1003016, name = "TIMER_EVENT_3016", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "condition_EVENT_TIMER_EVENT_3016", action = "action_EVENT_TIMER_EVENT_3016", trigger_count = 0 },
	{ config_id = 1003017, name = "TIMER_EVENT_3017", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_3017", trigger_count = 0 },
	{ config_id = 1003018, name = "TIMER_EVENT_3018", event = EventType.EVENT_TIMER_EVENT, source = "time4", condition = "condition_EVENT_TIMER_EVENT_3018", action = "action_EVENT_TIMER_EVENT_3018", trigger_count = 0 },
	{ config_id = 1003019, name = "TIMER_EVENT_3019", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "condition_EVENT_TIMER_EVENT_3019", action = "action_EVENT_TIMER_EVENT_3019", trigger_count = 0 },
	{ config_id = 1003022, name = "GADGET_CREATE_3022", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3022", action = "action_EVENT_GADGET_CREATE_3022", trigger_count = 0 },
	{ config_id = 1003023, name = "TIMER_EVENT_3023", event = EventType.EVENT_TIMER_EVENT, source = "time6", condition = "", action = "action_EVENT_TIMER_EVENT_3023", trigger_count = 0 },
	{ config_id = 1003024, name = "TIMER_EVENT_3024", event = EventType.EVENT_TIMER_EVENT, source = "time5", condition = "condition_EVENT_TIMER_EVENT_3024", action = "action_EVENT_TIMER_EVENT_3024", trigger_count = 0 },
	{ config_id = 1003028, name = "ANY_MONSTER_DIE_3028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3028", action = "action_EVENT_ANY_MONSTER_DIE_3028" }
}

-- 变量
variables = {
	{ config_id = 1, name = "dir", value = 0, no_refresh = false }
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
		monsters = { 3025, 3026, 3027 },
		gadgets = { },
		regions = { 3001 },
		triggers = { "ENTER_REGION_3001", "GADGET_CREATE_3010", "GADGET_CREATE_3011", "GADGET_CREATE_3012", "GADGET_CREATE_3013", "TIMER_EVENT_3014", "TIMER_EVENT_3015", "TIMER_EVENT_3016", "TIMER_EVENT_3017", "TIMER_EVENT_3018", "TIMER_EVENT_3019", "GADGET_CREATE_3022", "TIMER_EVENT_3023", "TIMER_EVENT_3024", "ANY_MONSTER_DIE_3028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3020, 3021 },
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
function condition_EVENT_ENTER_REGION_3001(context, evt)
	if evt.param1 ~= 3001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3010(context, evt)
	if 3005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3010(context, evt)
	-- 延迟5秒后,向groupId为：240015003的对象,请求一次调用,并将string参数："time5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240015003, "time5", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3011(context, evt)
	if 3004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3011(context, evt)
	-- 延迟5秒后,向groupId为：240015003的对象,请求一次调用,并将string参数："time4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240015003, "time4", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3012(context, evt)
	if 3003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3012(context, evt)
	-- 延迟5秒后,向groupId为：240015003的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240015003, "time3", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3013(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3013(context, evt)
	-- 延迟5秒后,向groupId为：240015003的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240015003, "time2", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "dir" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "dir", 1, 240015003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_3014(context, evt)
	-- 判断变量"dir"为0
	if ScriptLib.GetGroupVariableValue(context, "dir") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为3004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_3015(context, evt)
	-- 判断变量"dir"为0
	if ScriptLib.GetGroupVariableValue(context, "dir") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为3003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_3016(context, evt)
	-- 判断变量"dir"为0
	if ScriptLib.GetGroupVariableValue(context, "dir") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为3002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为3003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_3018(context, evt)
	-- 判断变量"dir"为1
	if ScriptLib.GetGroupVariableValue(context, "dir") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为3005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_3019(context, evt)
	-- 判断变量"dir"为1
	if ScriptLib.GetGroupVariableValue(context, "dir") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为3004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3022(context, evt)
	if 3020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3022(context, evt)
	-- 延迟5秒后,向groupId为：240015003的对象,请求一次调用,并将string参数："time6" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240015003, "time6", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 变量"dir"赋值为0
	ScriptLib.SetGroupVariableValue(context, "dir", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为3005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_3024(context, evt)
	-- 判断变量"dir"为1
	if ScriptLib.GetGroupVariableValue(context, "dir") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为3020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3028(context, evt)
	-- 触发镜头注目，注目位置为坐标（-57，65，130），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-57, y=65, z=130}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建id为3020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为3021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end