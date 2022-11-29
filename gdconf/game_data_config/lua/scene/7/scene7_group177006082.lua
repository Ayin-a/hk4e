-- 基础信息
local base_info = {
	group_id = 177006082
}

-- Trigger变量
local defs = {
	pointarray_1 = 700600013,
	gadget_1 = 82002,
	gadget_2 = 82003,
	gadget_3 = 82007,
	gadget_controller_1 = 82006,
	gadget_controller_2 = 82008,
	gadget_controller_3 = 82009,
	gadget_pointarray_1 = 1,
	gadget_pointarray_2 = 2,
	gadget_pointarray_3 = 3,
	group_id = 177006082
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
	{ config_id = 82001, gadget_id = 70330134, pos = { x = 202.102, y = 175.800, z = -414.526 }, rot = { x = 0.000, y = 147.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面1
	{ config_id = 82002, gadget_id = 70330135, pos = { x = 212.130, y = 175.300, z = -429.896 }, rot = { x = 0.000, y = 102.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 镜面2
	{ config_id = 82003, gadget_id = 70330135, pos = { x = 202.878, y = 175.300, z = -435.924 }, rot = { x = 0.000, y = 237.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 82004, gadget_id = 70330141, pos = { x = 199.114, y = 175.300, z = -451.035 }, rot = { x = 0.000, y = 147.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 发射器底座
	{ config_id = 82005, gadget_id = 70330157, pos = { x = 202.101, y = 174.453, z = -414.526 }, rot = { x = 0.000, y = 147.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作台1
	{ config_id = 82006, gadget_id = 70330158, pos = { x = 212.130, y = 174.419, z = -429.896 }, rot = { x = 0.000, y = 147.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面3
	{ config_id = 82007, gadget_id = 70330135, pos = { x = 208.652, y = 175.300, z = -444.847 }, rot = { x = 0.000, y = 57.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台2
	{ config_id = 82008, gadget_id = 70330158, pos = { x = 202.878, y = 174.559, z = -435.924 }, rot = { x = 0.000, y = 147.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面操作台3
	{ config_id = 82009, gadget_id = 70330158, pos = { x = 208.652, y = 174.419, z = -444.847 }, rot = { x = 0.000, y = 147.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 接收器底座
	{ config_id = 82014, gadget_id = 70330157, pos = { x = 199.114, y = 174.408, z = -451.035 }, rot = { x = 0.000, y = 147.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 82015, gadget_id = 70211161, pos = { x = 194.466, y = 174.419, z = -441.710 }, rot = { x = 358.820, y = 63.244, z = 0.224 }, level = 26, drop_tag = "渊下宫活动中级稻妻", isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 操作台1
	{ config_id = 1082016, name = "GADGET_CREATE_82016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_82016", action = "action_EVENT_GADGET_CREATE_82016", trigger_count = 0 },
	-- 操作台2
	{ config_id = 1082017, name = "GADGET_CREATE_82017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_82017", action = "action_EVENT_GADGET_CREATE_82017", trigger_count = 0 },
	-- 操作台3
	{ config_id = 1082018, name = "GADGET_CREATE_82018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_82018", action = "action_EVENT_GADGET_CREATE_82018", trigger_count = 0 },
	-- 镜面旋转1
	{ config_id = 1082021, name = "SELECT_OPTION_82021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82021", action = "action_EVENT_SELECT_OPTION_82021", trigger_count = 0 },
	{ config_id = 1082022, name = "TIMER_EVENT_82022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_82022", trigger_count = 0 },
	-- 镜面旋转2
	{ config_id = 1082023, name = "SELECT_OPTION_82023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82023", action = "action_EVENT_SELECT_OPTION_82023", trigger_count = 0 },
	{ config_id = 1082024, name = "TIMER_EVENT_82024", event = EventType.EVENT_TIMER_EVENT, source = "route2", condition = "", action = "action_EVENT_TIMER_EVENT_82024", trigger_count = 0 },
	-- 镜面旋转3
	{ config_id = 1082025, name = "SELECT_OPTION_82025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82025", action = "action_EVENT_SELECT_OPTION_82025", trigger_count = 0 },
	{ config_id = 1082026, name = "TIMER_EVENT_82026", event = EventType.EVENT_TIMER_EVENT, source = "route3", condition = "", action = "action_EVENT_TIMER_EVENT_82026", trigger_count = 0 },
	{ config_id = 1082031, name = "GADGET_STATE_CHANGE_82031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_82031", action = "action_EVENT_GADGET_STATE_CHANGE_82031" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1082019, name = "GADGET_CREATE_82019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_82019", action = "action_EVENT_GADGET_CREATE_82019", trigger_count = 0 },
		{ config_id = 1082020, name = "GADGET_CREATE_82020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_82020", action = "action_EVENT_GADGET_CREATE_82020", trigger_count = 0 },
		{ config_id = 1082027, name = "SELECT_OPTION_82027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82027", action = "action_EVENT_SELECT_OPTION_82027", trigger_count = 0 },
		{ config_id = 1082028, name = "TIMER_EVENT_82028", event = EventType.EVENT_TIMER_EVENT, source = "route4", condition = "", action = "action_EVENT_TIMER_EVENT_82028", trigger_count = 0 },
		{ config_id = 1082029, name = "SELECT_OPTION_82029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_82029", action = "action_EVENT_SELECT_OPTION_82029", trigger_count = 0 },
		{ config_id = 1082030, name = "TIMER_EVENT_82030", event = EventType.EVENT_TIMER_EVENT, source = "route5", condition = "", action = "action_EVENT_TIMER_EVENT_82030", trigger_count = 0 }
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
		gadgets = { 82001, 82002, 82003, 82004, 82005, 82006, 82007, 82008, 82009, 82014 },
		regions = { },
		triggers = { "GADGET_CREATE_82016", "GADGET_CREATE_82017", "GADGET_CREATE_82018", "SELECT_OPTION_82021", "TIMER_EVENT_82022", "SELECT_OPTION_82023", "TIMER_EVENT_82024", "SELECT_OPTION_82025", "TIMER_EVENT_82026", "GADGET_STATE_CHANGE_82031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_82016(context, evt)
	if defs.gadget_controller_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_82016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_82017(context, evt)
	if defs.gadget_controller_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_82017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_82018(context, evt)
	if defs.gadget_controller_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_82018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_82021(context, evt)
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
function action_EVENT_SELECT_OPTION_82021(context, evt)
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
function action_EVENT_TIMER_EVENT_82022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_1, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_82023(context, evt)
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
function action_EVENT_SELECT_OPTION_82023(context, evt)
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
function action_EVENT_TIMER_EVENT_82024(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_2, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_82025(context, evt)
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
function action_EVENT_SELECT_OPTION_82025(context, evt)
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
function action_EVENT_TIMER_EVENT_82026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_3, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_82031(context, evt)
	if 82004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_82031(context, evt)
	-- 创建id为82015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 82015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_5/Watcher_Puzzle"