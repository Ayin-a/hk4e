-- 基础信息
local base_info = {
	group_id = 177008093
}

-- Trigger变量
local defs = {
	pointarray_1 = 700800023,
	gadget_1 = 93002,
	gadget_2 = 93003,
	gadget_3 = 93007,
	gadget_4 = 93010,
	gadget_5 = 93011,
	gadget_controller_1 = 93006,
	gadget_controller_2 = 93008,
	gadget_controller_3 = 93009,
	gadget_controller_4 = 93012,
	gadget_controller_5 = 93013,
	gadget_pointarray_1 = 1,
	gadget_pointarray_2 = 2,
	gadget_pointarray_3 = 3,
	gadget_pointarray_4 = 4,
	gadget_pointarray_5 = 5,
	group_id = 177008093
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
	{ config_id = 93001, gadget_id = 70330134, pos = { x = -90.245, y = 242.000, z = 141.795 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面1
	{ config_id = 93002, gadget_id = 70330135, pos = { x = -70.146, y = 241.500, z = 141.793 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 镜面2
	{ config_id = 93003, gadget_id = 70330135, pos = { x = -70.162, y = 241.500, z = 119.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 93004, gadget_id = 70330141, pos = { x = -94.537, y = 241.500, z = 141.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 发射器底座
	{ config_id = 93005, gadget_id = 70330157, pos = { x = -90.245, y = 240.214, z = 141.795 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作台1
	{ config_id = 93006, gadget_id = 70330158, pos = { x = -70.146, y = 239.787, z = 141.793 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面3
	{ config_id = 93007, gadget_id = 70330135, pos = { x = -94.537, y = 241.500, z = 119.399 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台2
	{ config_id = 93008, gadget_id = 70330158, pos = { x = -70.162, y = 239.794, z = 119.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面操作台3
	{ config_id = 93009, gadget_id = 70330158, pos = { x = -94.537, y = 239.792, z = 119.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面4
	{ config_id = 93010, gadget_id = 70330135, pos = { x = -100.628, y = 242.862, z = 149.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面5
	{ config_id = 93011, gadget_id = 70330135, pos = { x = -95.633, y = 242.862, z = 147.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台4
	{ config_id = 93012, gadget_id = 70330158, pos = { x = -100.628, y = 241.050, z = 149.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面操作台5
	{ config_id = 93013, gadget_id = 70330158, pos = { x = -95.633, y = 240.819, z = 147.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 接收器底座
	{ config_id = 93014, gadget_id = 70330157, pos = { x = -94.537, y = 240.831, z = 141.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 93015, gadget_id = 70211160, pos = { x = -92.035, y = 240.532, z = 144.125 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 93032, gadget_id = 70330177, pos = { x = -70.143, y = 237.000, z = 141.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 93033, gadget_id = 70330177, pos = { x = -70.143, y = 237.000, z = 119.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 93034, gadget_id = 70330177, pos = { x = -94.553, y = 237.000, z = 119.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 操作台1
	{ config_id = 1093016, name = "GADGET_CREATE_93016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93016", action = "action_EVENT_GADGET_CREATE_93016", trigger_count = 0 },
	-- 操作台2
	{ config_id = 1093017, name = "GADGET_CREATE_93017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93017", action = "action_EVENT_GADGET_CREATE_93017", trigger_count = 0 },
	-- 操作台3
	{ config_id = 1093018, name = "GADGET_CREATE_93018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93018", action = "action_EVENT_GADGET_CREATE_93018", trigger_count = 0 },
	-- 操作台4
	{ config_id = 1093019, name = "GADGET_CREATE_93019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93019", action = "action_EVENT_GADGET_CREATE_93019", trigger_count = 0 },
	-- 操作台5
	{ config_id = 1093020, name = "GADGET_CREATE_93020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93020", action = "action_EVENT_GADGET_CREATE_93020", trigger_count = 0 },
	-- 镜面旋转1
	{ config_id = 1093021, name = "SELECT_OPTION_93021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_93021", action = "action_EVENT_SELECT_OPTION_93021", trigger_count = 0 },
	{ config_id = 1093022, name = "TIMER_EVENT_93022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_93022", trigger_count = 0 },
	-- 镜面旋转2
	{ config_id = 1093023, name = "SELECT_OPTION_93023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_93023", action = "action_EVENT_SELECT_OPTION_93023", trigger_count = 0 },
	{ config_id = 1093024, name = "TIMER_EVENT_93024", event = EventType.EVENT_TIMER_EVENT, source = "route2", condition = "", action = "action_EVENT_TIMER_EVENT_93024", trigger_count = 0 },
	-- 镜面旋转3
	{ config_id = 1093025, name = "SELECT_OPTION_93025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_93025", action = "action_EVENT_SELECT_OPTION_93025", trigger_count = 0 },
	{ config_id = 1093026, name = "TIMER_EVENT_93026", event = EventType.EVENT_TIMER_EVENT, source = "route3", condition = "", action = "action_EVENT_TIMER_EVENT_93026", trigger_count = 0 },
	-- 镜面旋转4
	{ config_id = 1093027, name = "SELECT_OPTION_93027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_93027", action = "action_EVENT_SELECT_OPTION_93027", trigger_count = 0 },
	{ config_id = 1093028, name = "TIMER_EVENT_93028", event = EventType.EVENT_TIMER_EVENT, source = "route4", condition = "", action = "action_EVENT_TIMER_EVENT_93028", trigger_count = 0 },
	-- 镜面旋转5
	{ config_id = 1093029, name = "SELECT_OPTION_93029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_93029", action = "action_EVENT_SELECT_OPTION_93029", trigger_count = 0 },
	{ config_id = 1093030, name = "TIMER_EVENT_93030", event = EventType.EVENT_TIMER_EVENT, source = "route5", condition = "", action = "action_EVENT_TIMER_EVENT_93030", trigger_count = 0 },
	{ config_id = 1093031, name = "GADGET_STATE_CHANGE_93031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93031", action = "action_EVENT_GADGET_STATE_CHANGE_93031" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 93035, gadget_id = 70330144, pos = { x = -75.864, y = 237.000, z = 141.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
		{ config_id = 93036, gadget_id = 70330144, pos = { x = -70.135, y = 237.000, z = 125.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 }
	},
	triggers = {
		{ config_id = 1093037, name = "GADGET_CREATE_93037", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93037", action = "action_EVENT_GADGET_CREATE_93037", trigger_count = 0 },
		{ config_id = 1093038, name = "PLATFORM_REACH_POINT_93038", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_93038", action = "action_EVENT_PLATFORM_REACH_POINT_93038", trigger_count = 0 },
		{ config_id = 1093039, name = "TIME_AXIS_PASS_93039", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_93039", trigger_count = 0 },
		{ config_id = 1093040, name = "PLATFORM_REACH_POINT_93040", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_93040", action = "action_EVENT_PLATFORM_REACH_POINT_93040", trigger_count = 0 },
		{ config_id = 1093041, name = "TIME_AXIS_PASS_93041", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_93041", trigger_count = 0 },
		{ config_id = 1093042, name = "GADGET_CREATE_93042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_93042", action = "action_EVENT_GADGET_CREATE_93042", trigger_count = 0 },
		{ config_id = 1093043, name = "PLATFORM_REACH_POINT_93043", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_93043", action = "action_EVENT_PLATFORM_REACH_POINT_93043", trigger_count = 0 },
		{ config_id = 1093044, name = "TIME_AXIS_PASS_93044", event = EventType.EVENT_TIME_AXIS_PASS, source = "T3", condition = "", action = "action_EVENT_TIME_AXIS_PASS_93044", trigger_count = 0 },
		{ config_id = 1093045, name = "PLATFORM_REACH_POINT_93045", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_93045", action = "action_EVENT_PLATFORM_REACH_POINT_93045", trigger_count = 0 },
		{ config_id = 1093046, name = "TIME_AXIS_PASS_93046", event = EventType.EVENT_TIME_AXIS_PASS, source = "T4", condition = "", action = "action_EVENT_TIME_AXIS_PASS_93046", trigger_count = 0 }
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
		gadgets = { 93001, 93002, 93003, 93004, 93005, 93006, 93007, 93008, 93009, 93014, 93032, 93033, 93034 },
		regions = { },
		triggers = { "GADGET_CREATE_93016", "GADGET_CREATE_93017", "SELECT_OPTION_93021", "TIMER_EVENT_93022", "SELECT_OPTION_93023", "TIMER_EVENT_93024", "GADGET_STATE_CHANGE_93031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_93016(context, evt)
	if defs.gadget_controller_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_93016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_93017(context, evt)
	if defs.gadget_controller_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_93017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_93018(context, evt)
	if defs.gadget_controller_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_93018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_93019(context, evt)
	if defs.gadget_controller_4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_93019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_93020(context, evt)
	if defs.gadget_controller_5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_93020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_93021(context, evt)
	-- 判断是gadgetid 470005 option_id 31
	if defs.gadget_controller_1 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_93021(context, evt)
	-- 删除指定group： 139998470 ；指定config：470006；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_controller_1, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_1, defs.pointarray_1, {defs.gadget_pointarray_1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：139998470的对象,请求一次调用,并将string参数："route1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_93022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_1, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_93023(context, evt)
	-- 判断是gadgetid 470005 option_id 31
	if defs.gadget_controller_2 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_93023(context, evt)
	-- 删除指定group： 139998470 ；指定config：470006；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_controller_2, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_2, defs.pointarray_1, {defs.gadget_pointarray_2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：139998470的对象,请求一次调用,并将string参数："route1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_93024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_2, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_93025(context, evt)
	-- 判断是gadgetid 470005 option_id 31
	if defs.gadget_controller_3 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_93025(context, evt)
	-- 删除指定group： 139998470 ；指定config：470006；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_controller_3, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_3, defs.pointarray_1, {defs.gadget_pointarray_3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：139998470的对象,请求一次调用,并将string参数："route1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_93026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_3, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_93027(context, evt)
	-- 判断是gadgetid 470005 option_id 31
	if defs.gadget_controller_4 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_93027(context, evt)
	-- 删除指定group： 139998470 ；指定config：470006；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_controller_4, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_4, defs.pointarray_1, {defs.gadget_pointarray_4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：139998470的对象,请求一次调用,并将string参数："route1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_93028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_4, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_93029(context, evt)
	-- 判断是gadgetid 470005 option_id 31
	if defs.gadget_controller_5 ~= evt.param1 then
		return false	
	end
	
	if 31 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_93029(context, evt)
	-- 删除指定group： 139998470 ；指定config：470006；物件身上指定option：31；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.gadget_controller_5, 31) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, defs.gadget_5, defs.pointarray_1, {defs.gadget_pointarray_5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：139998470的对象,请求一次调用,并将string参数："route1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, defs.group_id, "route5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_93030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_5, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93031(context, evt)
	if 93004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93031(context, evt)
	-- 创建id为93015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 93015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_5/Watcher_Puzzle"