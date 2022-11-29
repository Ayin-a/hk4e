-- 基础信息
local base_info = {
	group_id = 177008062
}

-- Trigger变量
local defs = {
	pointarray_1 = 700800017,
	gadget_1 = 62002,
	gadget_2 = 62003,
	gadget_3 = 62007,
	gadget_4 = 62010,
	gadget_5 = 62011,
	gadget_controller_1 = 62006,
	gadget_controller_2 = 62008,
	gadget_controller_3 = 62009,
	gadget_controller_4 = 62012,
	gadget_controller_5 = 62013,
	gadget_pointarray_1 = 1,
	gadget_pointarray_2 = 2,
	gadget_pointarray_3 = 3,
	gadget_pointarray_4 = 4,
	gadget_pointarray_5 = 5,
	group_id = 177008062
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
	{ config_id = 62001, gadget_id = 70330134, pos = { x = -485.389, y = 218.500, z = 373.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面1
	{ config_id = 62002, gadget_id = 70330135, pos = { x = -485.525, y = 218.000, z = 379.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面2
	{ config_id = 62003, gadget_id = 70330135, pos = { x = -480.630, y = 218.000, z = 379.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 62004, gadget_id = 70330141, pos = { x = -476.308, y = 218.000, z = 374.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 发射器底座
	{ config_id = 62005, gadget_id = 70330157, pos = { x = -485.389, y = 217.328, z = 373.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作台1
	{ config_id = 62006, gadget_id = 70330158, pos = { x = -485.525, y = 216.897, z = 379.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面3
	{ config_id = 62007, gadget_id = 70330135, pos = { x = -480.637, y = 218.000, z = 385.103 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台2
	{ config_id = 62008, gadget_id = 70330158, pos = { x = -480.630, y = 216.880, z = 379.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面操作台3
	{ config_id = 62009, gadget_id = 70330158, pos = { x = -480.637, y = 216.254, z = 385.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面4
	{ config_id = 62010, gadget_id = 70330135, pos = { x = -476.405, y = 218.000, z = 385.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面5
	{ config_id = 62011, gadget_id = 70330135, pos = { x = -480.631, y = 218.000, z = 375.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台4
	{ config_id = 62012, gadget_id = 70330158, pos = { x = -476.405, y = 215.508, z = 385.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面操作台5
	{ config_id = 62013, gadget_id = 70330158, pos = { x = -480.631, y = 217.138, z = 375.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 接收器底座
	{ config_id = 62014, gadget_id = 70330157, pos = { x = -476.308, y = 216.326, z = 374.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 62015, gadget_id = 70211161, pos = { x = -478.307, y = 217.513, z = 373.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 操作台1
	{ config_id = 1062016, name = "GADGET_CREATE_62016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_62016", action = "action_EVENT_GADGET_CREATE_62016", trigger_count = 0 },
	-- 操作台2
	{ config_id = 1062017, name = "GADGET_CREATE_62017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_62017", action = "action_EVENT_GADGET_CREATE_62017", trigger_count = 0 },
	-- 操作台3
	{ config_id = 1062018, name = "GADGET_CREATE_62018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_62018", action = "action_EVENT_GADGET_CREATE_62018", trigger_count = 0 },
	-- 操作台4
	{ config_id = 1062019, name = "GADGET_CREATE_62019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_62019", action = "action_EVENT_GADGET_CREATE_62019", trigger_count = 0 },
	-- 操作台5
	{ config_id = 1062020, name = "GADGET_CREATE_62020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_62020", action = "action_EVENT_GADGET_CREATE_62020", trigger_count = 0 },
	-- 镜面旋转1
	{ config_id = 1062021, name = "SELECT_OPTION_62021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62021", action = "action_EVENT_SELECT_OPTION_62021", trigger_count = 0 },
	{ config_id = 1062022, name = "TIMER_EVENT_62022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_62022", trigger_count = 0 },
	-- 镜面旋转2
	{ config_id = 1062023, name = "SELECT_OPTION_62023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62023", action = "action_EVENT_SELECT_OPTION_62023", trigger_count = 0 },
	{ config_id = 1062024, name = "TIMER_EVENT_62024", event = EventType.EVENT_TIMER_EVENT, source = "route2", condition = "", action = "action_EVENT_TIMER_EVENT_62024", trigger_count = 0 },
	-- 镜面旋转3
	{ config_id = 1062025, name = "SELECT_OPTION_62025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62025", action = "action_EVENT_SELECT_OPTION_62025", trigger_count = 0 },
	{ config_id = 1062026, name = "TIMER_EVENT_62026", event = EventType.EVENT_TIMER_EVENT, source = "route3", condition = "", action = "action_EVENT_TIMER_EVENT_62026", trigger_count = 0 },
	-- 镜面旋转4
	{ config_id = 1062027, name = "SELECT_OPTION_62027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62027", action = "action_EVENT_SELECT_OPTION_62027", trigger_count = 0 },
	{ config_id = 1062028, name = "TIMER_EVENT_62028", event = EventType.EVENT_TIMER_EVENT, source = "route4", condition = "", action = "action_EVENT_TIMER_EVENT_62028", trigger_count = 0 },
	-- 镜面旋转5
	{ config_id = 1062029, name = "SELECT_OPTION_62029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_62029", action = "action_EVENT_SELECT_OPTION_62029", trigger_count = 0 },
	{ config_id = 1062030, name = "TIMER_EVENT_62030", event = EventType.EVENT_TIMER_EVENT, source = "route5", condition = "", action = "action_EVENT_TIMER_EVENT_62030", trigger_count = 0 },
	{ config_id = 1062031, name = "GADGET_STATE_CHANGE_62031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62031", action = "action_EVENT_GADGET_STATE_CHANGE_62031" }
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
		gadgets = { 62001, 62002, 62003, 62004, 62005, 62006, 62007, 62008, 62009, 62010, 62011, 62012, 62013, 62014 },
		regions = { },
		triggers = { "GADGET_CREATE_62016", "GADGET_CREATE_62017", "GADGET_CREATE_62019", "GADGET_CREATE_62020", "SELECT_OPTION_62021", "TIMER_EVENT_62022", "SELECT_OPTION_62023", "TIMER_EVENT_62024", "SELECT_OPTION_62027", "TIMER_EVENT_62028", "SELECT_OPTION_62029", "TIMER_EVENT_62030", "GADGET_STATE_CHANGE_62031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_62016(context, evt)
	if defs.gadget_controller_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_62016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_62017(context, evt)
	if defs.gadget_controller_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_62017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_62018(context, evt)
	if defs.gadget_controller_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_62018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_62019(context, evt)
	if defs.gadget_controller_4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_62019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_62020(context, evt)
	if defs.gadget_controller_5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_62020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62021(context, evt)
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
function action_EVENT_SELECT_OPTION_62021(context, evt)
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
function action_EVENT_TIMER_EVENT_62022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_1, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62023(context, evt)
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
function action_EVENT_SELECT_OPTION_62023(context, evt)
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
function action_EVENT_TIMER_EVENT_62024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_2, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62025(context, evt)
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
function action_EVENT_SELECT_OPTION_62025(context, evt)
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
function action_EVENT_TIMER_EVENT_62026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_3, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62027(context, evt)
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
function action_EVENT_SELECT_OPTION_62027(context, evt)
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
function action_EVENT_TIMER_EVENT_62028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_4, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_62029(context, evt)
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
function action_EVENT_SELECT_OPTION_62029(context, evt)
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
function action_EVENT_TIMER_EVENT_62030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_5, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62031(context, evt)
	if 62004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62031(context, evt)
	-- 创建id为62015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 62015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_5/Watcher_Puzzle"