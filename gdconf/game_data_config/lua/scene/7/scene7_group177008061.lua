-- 基础信息
local base_info = {
	group_id = 177008061
}

-- Trigger变量
local defs = {
	pointarray_1 = 700800016,
	gadget_1 = 61002,
	gadget_2 = 61003,
	gadget_3 = 61007,
	gadget_4 = 61010,
	gadget_5 = 61011,
	gadget_controller_1 = 61006,
	gadget_controller_2 = 61008,
	gadget_controller_3 = 61009,
	gadget_controller_4 = 61012,
	gadget_controller_5 = 61013,
	gadget_pointarray_1 = 1,
	gadget_pointarray_2 = 2,
	gadget_pointarray_3 = 3,
	gadget_pointarray_4 = 4,
	gadget_pointarray_5 = 5,
	group_id = 177008061
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
	{ config_id = 61001, gadget_id = 70330134, pos = { x = -145.681, y = 266.000, z = 422.227 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面1
	{ config_id = 61002, gadget_id = 70330135, pos = { x = -152.651, y = 265.500, z = 429.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 镜面2
	{ config_id = 61003, gadget_id = 70330135, pos = { x = -143.910, y = 265.500, z = 434.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 61004, gadget_id = 70330141, pos = { x = -138.151, y = 265.000, z = 423.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 发射器底座
	{ config_id = 61005, gadget_id = 70330157, pos = { x = -145.680, y = 264.246, z = 422.227 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作台1
	{ config_id = 61006, gadget_id = 70330158, pos = { x = -152.651, y = 264.249, z = 429.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面3
	{ config_id = 61007, gadget_id = 70330135, pos = { x = -138.093, y = 265.500, z = 428.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台2
	{ config_id = 61008, gadget_id = 70330158, pos = { x = -143.910, y = 264.241, z = 434.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面操作台3
	{ config_id = 61009, gadget_id = 70330158, pos = { x = -138.093, y = 264.186, z = 428.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面4
	{ config_id = 61010, gadget_id = 70330135, pos = { x = -143.948, y = 265.500, z = 428.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面5
	{ config_id = 61011, gadget_id = 70330135, pos = { x = -152.666, y = 265.500, z = 434.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台4
	{ config_id = 61012, gadget_id = 70330158, pos = { x = -143.948, y = 264.254, z = 428.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面操作台5
	{ config_id = 61013, gadget_id = 70330158, pos = { x = -152.666, y = 264.217, z = 434.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 接收器底座
	{ config_id = 61014, gadget_id = 70330157, pos = { x = -138.151, y = 264.304, z = 423.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 61015, gadget_id = 70211161, pos = { x = -144.040, y = 264.153, z = 425.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 操作台1
	{ config_id = 1061016, name = "GADGET_CREATE_61016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_61016", action = "action_EVENT_GADGET_CREATE_61016", trigger_count = 0 },
	-- 操作台2
	{ config_id = 1061017, name = "GADGET_CREATE_61017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_61017", action = "action_EVENT_GADGET_CREATE_61017", trigger_count = 0 },
	-- 操作台3
	{ config_id = 1061018, name = "GADGET_CREATE_61018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_61018", action = "action_EVENT_GADGET_CREATE_61018", trigger_count = 0 },
	-- 操作台4
	{ config_id = 1061019, name = "GADGET_CREATE_61019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_61019", action = "action_EVENT_GADGET_CREATE_61019", trigger_count = 0 },
	-- 操作台5
	{ config_id = 1061020, name = "GADGET_CREATE_61020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_61020", action = "action_EVENT_GADGET_CREATE_61020", trigger_count = 0 },
	-- 镜面旋转1
	{ config_id = 1061021, name = "SELECT_OPTION_61021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_61021", action = "action_EVENT_SELECT_OPTION_61021", trigger_count = 0 },
	{ config_id = 1061022, name = "TIMER_EVENT_61022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_61022", trigger_count = 0 },
	-- 镜面旋转2
	{ config_id = 1061023, name = "SELECT_OPTION_61023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_61023", action = "action_EVENT_SELECT_OPTION_61023", trigger_count = 0 },
	{ config_id = 1061024, name = "TIMER_EVENT_61024", event = EventType.EVENT_TIMER_EVENT, source = "route2", condition = "", action = "action_EVENT_TIMER_EVENT_61024", trigger_count = 0 },
	-- 镜面旋转3
	{ config_id = 1061025, name = "SELECT_OPTION_61025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_61025", action = "action_EVENT_SELECT_OPTION_61025", trigger_count = 0 },
	{ config_id = 1061026, name = "TIMER_EVENT_61026", event = EventType.EVENT_TIMER_EVENT, source = "route3", condition = "", action = "action_EVENT_TIMER_EVENT_61026", trigger_count = 0 },
	-- 镜面旋转4
	{ config_id = 1061027, name = "SELECT_OPTION_61027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_61027", action = "action_EVENT_SELECT_OPTION_61027", trigger_count = 0 },
	{ config_id = 1061028, name = "TIMER_EVENT_61028", event = EventType.EVENT_TIMER_EVENT, source = "route4", condition = "", action = "action_EVENT_TIMER_EVENT_61028", trigger_count = 0 },
	-- 镜面旋转5
	{ config_id = 1061029, name = "SELECT_OPTION_61029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_61029", action = "action_EVENT_SELECT_OPTION_61029", trigger_count = 0 },
	{ config_id = 1061030, name = "TIMER_EVENT_61030", event = EventType.EVENT_TIMER_EVENT, source = "route5", condition = "", action = "action_EVENT_TIMER_EVENT_61030", trigger_count = 0 },
	{ config_id = 1061031, name = "GADGET_STATE_CHANGE_61031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_61031", action = "action_EVENT_GADGET_STATE_CHANGE_61031" }
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
		gadgets = { 61001, 61002, 61003, 61004, 61005, 61006, 61007, 61008, 61009, 61010, 61011, 61012, 61013, 61014 },
		regions = { },
		triggers = { "GADGET_CREATE_61017", "GADGET_CREATE_61018", "GADGET_CREATE_61019", "GADGET_CREATE_61020", "SELECT_OPTION_61023", "TIMER_EVENT_61024", "SELECT_OPTION_61025", "TIMER_EVENT_61026", "SELECT_OPTION_61027", "TIMER_EVENT_61028", "SELECT_OPTION_61029", "TIMER_EVENT_61030", "GADGET_STATE_CHANGE_61031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_61016(context, evt)
	if defs.gadget_controller_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_61017(context, evt)
	if defs.gadget_controller_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_61018(context, evt)
	if defs.gadget_controller_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_61019(context, evt)
	if defs.gadget_controller_4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_61020(context, evt)
	if defs.gadget_controller_5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_61021(context, evt)
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
function action_EVENT_SELECT_OPTION_61021(context, evt)
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
function action_EVENT_TIMER_EVENT_61022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_1, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_61023(context, evt)
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
function action_EVENT_SELECT_OPTION_61023(context, evt)
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
function action_EVENT_TIMER_EVENT_61024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_2, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_61025(context, evt)
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
function action_EVENT_SELECT_OPTION_61025(context, evt)
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
function action_EVENT_TIMER_EVENT_61026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_3, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_61027(context, evt)
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
function action_EVENT_SELECT_OPTION_61027(context, evt)
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
function action_EVENT_TIMER_EVENT_61028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_4, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_61029(context, evt)
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
function action_EVENT_SELECT_OPTION_61029(context, evt)
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
function action_EVENT_TIMER_EVENT_61030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_5, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_61031(context, evt)
	if 61004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_61031(context, evt)
	-- 创建id为61015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 61015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_5/Watcher_Puzzle"