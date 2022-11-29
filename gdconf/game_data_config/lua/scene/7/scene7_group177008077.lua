-- 基础信息
local base_info = {
	group_id = 177008077
}

-- Trigger变量
local defs = {
	pointarray_1 = 700800022,
	gadget_1 = 77002,
	gadget_2 = 77003,
	gadget_3 = 77007,
	gadget_4 = 77010,
	gadget_5 = 77011,
	gadget_controller_1 = 77006,
	gadget_controller_2 = 77008,
	gadget_controller_3 = 77009,
	gadget_controller_4 = 77012,
	gadget_controller_5 = 77013,
	gadget_pointarray_1 = 1,
	gadget_pointarray_2 = 2,
	gadget_pointarray_3 = 3,
	gadget_pointarray_4 = 4,
	gadget_pointarray_5 = 5,
	group_id = 177008077
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
	{ config_id = 77001, gadget_id = 70330134, pos = { x = -182.820, y = 231.000, z = 231.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面1
	{ config_id = 77002, gadget_id = 70330135, pos = { x = -182.820, y = 230.500, z = 237.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面2
	{ config_id = 77003, gadget_id = 70330135, pos = { x = -170.108, y = 230.500, z = 237.800 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 77004, gadget_id = 70330141, pos = { x = -176.413, y = 230.500, z = 258.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 发射器底座
	{ config_id = 77005, gadget_id = 70330157, pos = { x = -182.820, y = 228.809, z = 231.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作台1
	{ config_id = 77006, gadget_id = 70330158, pos = { x = -182.820, y = 229.732, z = 237.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面3
	{ config_id = 77007, gadget_id = 70330135, pos = { x = -170.075, y = 230.500, z = 244.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台2
	{ config_id = 77008, gadget_id = 70330158, pos = { x = -170.108, y = 228.954, z = 237.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作台3
	{ config_id = 77009, gadget_id = 70330158, pos = { x = -170.075, y = 228.969, z = 244.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面4
	{ config_id = 77010, gadget_id = 70330135, pos = { x = -176.152, y = 230.500, z = 244.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面5
	{ config_id = 77011, gadget_id = 70330135, pos = { x = -168.205, y = 230.500, z = 237.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台4
	{ config_id = 77012, gadget_id = 70330158, pos = { x = -176.152, y = 228.948, z = 244.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面操作台5
	{ config_id = 77013, gadget_id = 70330158, pos = { x = -168.206, y = 228.940, z = 237.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 接收器底座
	{ config_id = 77014, gadget_id = 70330157, pos = { x = -176.413, y = 229.955, z = 258.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 77015, gadget_id = 70211160, pos = { x = -174.253, y = 228.974, z = 252.967 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 操作台1
	{ config_id = 1077016, name = "GADGET_CREATE_77016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_77016", action = "action_EVENT_GADGET_CREATE_77016", trigger_count = 0 },
	-- 操作台2
	{ config_id = 1077017, name = "GADGET_CREATE_77017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_77017", action = "action_EVENT_GADGET_CREATE_77017", trigger_count = 0 },
	-- 操作台3
	{ config_id = 1077018, name = "GADGET_CREATE_77018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_77018", action = "action_EVENT_GADGET_CREATE_77018", trigger_count = 0 },
	-- 操作台4
	{ config_id = 1077019, name = "GADGET_CREATE_77019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_77019", action = "action_EVENT_GADGET_CREATE_77019", trigger_count = 0 },
	-- 操作台5
	{ config_id = 1077020, name = "GADGET_CREATE_77020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_77020", action = "action_EVENT_GADGET_CREATE_77020", trigger_count = 0 },
	-- 镜面旋转1
	{ config_id = 1077021, name = "SELECT_OPTION_77021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_77021", action = "action_EVENT_SELECT_OPTION_77021", trigger_count = 0 },
	{ config_id = 1077022, name = "TIMER_EVENT_77022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_77022", trigger_count = 0 },
	-- 镜面旋转2
	{ config_id = 1077023, name = "SELECT_OPTION_77023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_77023", action = "action_EVENT_SELECT_OPTION_77023", trigger_count = 0 },
	{ config_id = 1077024, name = "TIMER_EVENT_77024", event = EventType.EVENT_TIMER_EVENT, source = "route2", condition = "", action = "action_EVENT_TIMER_EVENT_77024", trigger_count = 0 },
	-- 镜面旋转3
	{ config_id = 1077025, name = "SELECT_OPTION_77025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_77025", action = "action_EVENT_SELECT_OPTION_77025", trigger_count = 0 },
	{ config_id = 1077026, name = "TIMER_EVENT_77026", event = EventType.EVENT_TIMER_EVENT, source = "route3", condition = "", action = "action_EVENT_TIMER_EVENT_77026", trigger_count = 0 },
	-- 镜面旋转4
	{ config_id = 1077027, name = "SELECT_OPTION_77027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_77027", action = "action_EVENT_SELECT_OPTION_77027", trigger_count = 0 },
	{ config_id = 1077028, name = "TIMER_EVENT_77028", event = EventType.EVENT_TIMER_EVENT, source = "route4", condition = "", action = "action_EVENT_TIMER_EVENT_77028", trigger_count = 0 },
	-- 镜面旋转5
	{ config_id = 1077029, name = "SELECT_OPTION_77029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_77029", action = "action_EVENT_SELECT_OPTION_77029", trigger_count = 0 },
	{ config_id = 1077030, name = "TIMER_EVENT_77030", event = EventType.EVENT_TIMER_EVENT, source = "route5", condition = "", action = "action_EVENT_TIMER_EVENT_77030", trigger_count = 0 },
	{ config_id = 1077031, name = "GADGET_STATE_CHANGE_77031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_77031", action = "action_EVENT_GADGET_STATE_CHANGE_77031" }
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
		gadgets = { 77001, 77002, 77003, 77004, 77005, 77006, 77007, 77008, 77009, 77010, 77012, 77014 },
		regions = { },
		triggers = { "GADGET_CREATE_77016", "GADGET_CREATE_77018", "GADGET_CREATE_77019", "SELECT_OPTION_77021", "TIMER_EVENT_77022", "SELECT_OPTION_77025", "TIMER_EVENT_77026", "SELECT_OPTION_77027", "TIMER_EVENT_77028", "GADGET_STATE_CHANGE_77031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_77016(context, evt)
	if defs.gadget_controller_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_77016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_77017(context, evt)
	if defs.gadget_controller_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_77017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_77018(context, evt)
	if defs.gadget_controller_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_77018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_77019(context, evt)
	if defs.gadget_controller_4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_77019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_77020(context, evt)
	if defs.gadget_controller_5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_77020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_77021(context, evt)
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
function action_EVENT_SELECT_OPTION_77021(context, evt)
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
function action_EVENT_TIMER_EVENT_77022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_1, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_77023(context, evt)
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
function action_EVENT_SELECT_OPTION_77023(context, evt)
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
function action_EVENT_TIMER_EVENT_77024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_2, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_77025(context, evt)
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
function action_EVENT_SELECT_OPTION_77025(context, evt)
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
function action_EVENT_TIMER_EVENT_77026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_3, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_77027(context, evt)
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
function action_EVENT_SELECT_OPTION_77027(context, evt)
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
function action_EVENT_TIMER_EVENT_77028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_4, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_77029(context, evt)
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
function action_EVENT_SELECT_OPTION_77029(context, evt)
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
function action_EVENT_TIMER_EVENT_77030(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_5, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_77031(context, evt)
	if 77004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_77031(context, evt)
	-- 创建id为77015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 77015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_5/Watcher_Puzzle"