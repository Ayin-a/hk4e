-- 基础信息
local base_info = {
	group_id = 177005059
}

-- Trigger变量
local defs = {
	pointarray_1 = 700500008,
	gadget_1 = 59002,
	gadget_3 = 59007,
	gadget_controller_1 = 59006,
	gadget_controller_3 = 59009,
	gadget_pointarray_1 = 1,
	gadget_pointarray_3 = 3,
	group_id = 177005059
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
	{ config_id = 59001, gadget_id = 70330134, pos = { x = 306.090, y = 122.496, z = 886.780 }, rot = { x = 0.000, y = 193.792, z = 0.000 }, level = 36, area_id = 210 },
	-- 折射
	{ config_id = 59002, gadget_id = 70330135, pos = { x = 302.428, y = 122.012, z = 871.937 }, rot = { x = 0.000, y = 283.792, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 反射
	{ config_id = 59003, gadget_id = 70330135, pos = { x = 306.525, y = 122.036, z = 865.177 }, rot = { x = 0.000, y = 193.792, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	{ config_id = 59004, gadget_id = 70330141, pos = { x = 313.836, y = 122.337, z = 874.883 }, rot = { x = 0.000, y = 106.314, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 59005, gadget_id = 70330157, pos = { x = 313.836, y = 120.893, z = 874.883 }, rot = { x = 0.000, y = 106.314, z = 0.000 }, level = 36, area_id = 210 },
	-- 1
	{ config_id = 59006, gadget_id = 70330158, pos = { x = 302.428, y = 121.080, z = 871.937 }, rot = { x = 0.000, y = 283.792, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面3
	{ config_id = 59007, gadget_id = 70330135, pos = { x = 312.313, y = 122.101, z = 868.885 }, rot = { x = 0.000, y = 103.792, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 2
	{ config_id = 59008, gadget_id = 70330158, pos = { x = 306.525, y = 120.996, z = 865.177 }, rot = { x = 0.000, y = 193.792, z = 0.000 }, level = 36, area_id = 210 },
	-- 3
	{ config_id = 59009, gadget_id = 70330158, pos = { x = 312.313, y = 121.024, z = 868.885 }, rot = { x = 359.177, y = 103.608, z = 357.746 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	{ config_id = 59010, gadget_id = 70211162, pos = { x = 316.570, y = 121.037, z = 874.535 }, rot = { x = 359.773, y = 101.967, z = 1.429 }, level = 16, drop_tag = "渊下宫活动高级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 59011, gadget_id = 70350004, pos = { x = 340.214, y = 119.439, z = 859.584 }, rot = { x = 0.000, y = 284.741, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	-- 接收器底座
	{ config_id = 59014, gadget_id = 70330157, pos = { x = 306.091, y = 121.042, z = 886.779 }, rot = { x = 0.000, y = 193.792, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 59012, shape = RegionShape.SPHERE, radius = 9, pos = { x = 306.607, y = 120.498, z = 870.844 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1059012, name = "ENTER_REGION_59012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_59012", action = "action_EVENT_ENTER_REGION_59012" },
	{ config_id = 1059016, name = "GADGET_CREATE_59016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59016", action = "action_EVENT_GADGET_CREATE_59016", trigger_count = 0 },
	{ config_id = 1059018, name = "GADGET_CREATE_59018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59018", action = "action_EVENT_GADGET_CREATE_59018", trigger_count = 0 },
	{ config_id = 1059021, name = "SELECT_OPTION_59021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_59021", action = "action_EVENT_SELECT_OPTION_59021", trigger_count = 0 },
	{ config_id = 1059022, name = "TIMER_EVENT_59022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_59022", trigger_count = 0 },
	-- 镜面旋转3
	{ config_id = 1059025, name = "SELECT_OPTION_59025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_59025", action = "action_EVENT_SELECT_OPTION_59025", trigger_count = 0 },
	{ config_id = 1059026, name = "TIMER_EVENT_59026", event = EventType.EVENT_TIMER_EVENT, source = "route3", condition = "", action = "action_EVENT_TIMER_EVENT_59026", trigger_count = 0 },
	{ config_id = 1059031, name = "GADGET_STATE_CHANGE_59031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59031", action = "action_EVENT_GADGET_STATE_CHANGE_59031" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1059017, name = "GADGET_CREATE_59017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59017", action = "action_EVENT_GADGET_CREATE_59017", trigger_count = 0 },
		{ config_id = 1059019, name = "GADGET_CREATE_59019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59019", action = "action_EVENT_GADGET_CREATE_59019" },
		{ config_id = 1059020, name = "GADGET_CREATE_59020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59020", action = "action_EVENT_GADGET_CREATE_59020", trigger_count = 0 },
		{ config_id = 1059023, name = "SELECT_OPTION_59023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_59023", action = "action_EVENT_SELECT_OPTION_59023", trigger_count = 0 },
		{ config_id = 1059024, name = "TIMER_EVENT_59024", event = EventType.EVENT_TIMER_EVENT, source = "route2", condition = "", action = "action_EVENT_TIMER_EVENT_59024", trigger_count = 0 },
		{ config_id = 1059027, name = "SELECT_OPTION_59027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_59027", action = "action_EVENT_SELECT_OPTION_59027", trigger_count = 0 },
		{ config_id = 1059028, name = "TIMER_EVENT_59028", event = EventType.EVENT_TIMER_EVENT, source = "route4", condition = "", action = "action_EVENT_TIMER_EVENT_59028", trigger_count = 0 },
		{ config_id = 1059029, name = "SELECT_OPTION_59029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_59029", action = "action_EVENT_SELECT_OPTION_59029", trigger_count = 0 },
		{ config_id = 1059030, name = "TIMER_EVENT_59030", event = EventType.EVENT_TIMER_EVENT, source = "route5", condition = "", action = "action_EVENT_TIMER_EVENT_59030", trigger_count = 0 }
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
		gadgets = { 59001, 59002, 59003, 59004, 59005, 59006, 59007, 59008, 59009, 59011, 59014 },
		regions = { 59012 },
		triggers = { "ENTER_REGION_59012", "GADGET_CREATE_59016", "GADGET_CREATE_59018", "SELECT_OPTION_59021", "TIMER_EVENT_59022", "SELECT_OPTION_59025", "TIMER_EVENT_59026", "GADGET_STATE_CHANGE_59031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_59012(context, evt)
	if evt.param1 ~= 59012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_59012(context, evt)
	-- 显示id为161的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,161,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_59016(context, evt)
	if defs.gadget_controller_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_59016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_59018(context, evt)
	if defs.gadget_controller_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_59018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_59021(context, evt)
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
function action_EVENT_SELECT_OPTION_59021(context, evt)
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
function action_EVENT_TIMER_EVENT_59022(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_1, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_59025(context, evt)
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
function action_EVENT_SELECT_OPTION_59025(context, evt)
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
function action_EVENT_TIMER_EVENT_59026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_3, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59031(context, evt)
	if 59004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59031(context, evt)
	-- 创建id为59010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 59010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组177005170中， configid为170006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177005170, 170006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V2_5/Watcher_Puzzle"