-- 基础信息
local base_info = {
	group_id = 177006071
}

-- Trigger变量
local defs = {
	pointarray_1 = 700600008,
	gadget_1 = 71002,
	gadget_2 = 71003,
	gadget_3 = 71007,
	gadget_4 = 71010,
	gadget_5 = 71011,
	gadget_controller_3 = 71009,
	gadget_controller_4 = 71012,
	gadget_pointarray_3 = 3,
	gadget_pointarray_4 = 4,
	group_id = 177006071
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
	{ config_id = 71001, gadget_id = 70330134, pos = { x = 573.010, y = 133.200, z = -474.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面1-水
	{ config_id = 71002, gadget_id = 70330135, pos = { x = 572.951, y = 132.683, z = -461.104 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 镜面2-冰
	{ config_id = 71003, gadget_id = 70330135, pos = { x = 582.852, y = 132.683, z = -461.104 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	{ config_id = 71004, gadget_id = 70330141, pos = { x = 572.983, y = 132.683, z = -479.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 71005, gadget_id = 70330157, pos = { x = 573.008, y = 131.889, z = -474.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面操作台1-不启动
	{ config_id = 71006, gadget_id = 70330158, pos = { x = 572.952, y = 131.993, z = -461.106 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 镜面3-水
	{ config_id = 71007, gadget_id = 70330135, pos = { x = 582.852, y = 132.683, z = -469.317 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台2 - 不启动
	{ config_id = 71008, gadget_id = 70330158, pos = { x = 582.836, y = 131.992, z = -461.113 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 操作台3
	{ config_id = 71009, gadget_id = 70330158, pos = { x = 582.854, y = 132.003, z = -469.315 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面4- 冰
	{ config_id = 71010, gadget_id = 70330135, pos = { x = 562.418, y = 132.683, z = -469.317 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 210 },
	-- 镜面5-水
	{ config_id = 71011, gadget_id = 70330135, pos = { x = 562.418, y = 132.683, z = -479.870 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, is_use_point_array = true, area_id = 210 },
	-- 镜面操作台4
	{ config_id = 71012, gadget_id = 70330158, pos = { x = 562.419, y = 131.982, z = -469.316 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	-- 镜面操作台5 - 不启动
	{ config_id = 71013, gadget_id = 70330158, pos = { x = 562.418, y = 132.054, z = -479.871 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 36, area_id = 210 },
	-- 接收器底座
	{ config_id = 71014, gadget_id = 70330157, pos = { x = 572.983, y = 131.868, z = -479.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 71015, gadget_id = 70211162, pos = { x = 572.875, y = 132.296, z = -482.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动高级稻妻", isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 71032, gadget_id = 70290282, pos = { x = 572.585, y = 137.294, z = -484.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 71033, gadget_id = 70290281, pos = { x = 537.885, y = 137.507, z = -469.721 }, rot = { x = 0.000, y = 270.000, z = 180.000 }, level = 36, persistent = true, area_id = 210 },
	{ config_id = 71034, gadget_id = 70360170, pos = { x = 540.091, y = 134.564, z = -474.335 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 操作台3
	{ config_id = 1071018, name = "GADGET_CREATE_71018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71018", action = "action_EVENT_GADGET_CREATE_71018", trigger_count = 0 },
	-- 操作台4
	{ config_id = 1071019, name = "GADGET_CREATE_71019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71019", action = "action_EVENT_GADGET_CREATE_71019", trigger_count = 0 },
	-- 镜面旋转3
	{ config_id = 1071025, name = "SELECT_OPTION_71025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71025", action = "action_EVENT_SELECT_OPTION_71025", trigger_count = 0 },
	{ config_id = 1071026, name = "TIMER_EVENT_71026", event = EventType.EVENT_TIMER_EVENT, source = "route3", condition = "", action = "action_EVENT_TIMER_EVENT_71026", trigger_count = 0 },
	-- 镜面旋转4
	{ config_id = 1071027, name = "SELECT_OPTION_71027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71027", action = "action_EVENT_SELECT_OPTION_71027", trigger_count = 0 },
	{ config_id = 1071028, name = "TIMER_EVENT_71028", event = EventType.EVENT_TIMER_EVENT, source = "route4", condition = "", action = "action_EVENT_TIMER_EVENT_71028", trigger_count = 0 },
	{ config_id = 1071031, name = "GADGET_STATE_CHANGE_71031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71031", action = "action_EVENT_GADGET_STATE_CHANGE_71031" },
	{ config_id = 1071035, name = "GADGET_CREATE_71035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71035", action = "action_EVENT_GADGET_CREATE_71035", trigger_count = 0 },
	{ config_id = 1071036, name = "SELECT_OPTION_71036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71036", action = "action_EVENT_SELECT_OPTION_71036", trigger_count = 0 },
	{ config_id = 1071037, name = "SELECT_OPTION_71037", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71037", action = "action_EVENT_SELECT_OPTION_71037", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1071016, name = "GADGET_CREATE_71016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71016", action = "action_EVENT_GADGET_CREATE_71016", trigger_count = 0 },
		{ config_id = 1071017, name = "GADGET_CREATE_71017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71017", action = "action_EVENT_GADGET_CREATE_71017", trigger_count = 0 },
		{ config_id = 1071020, name = "GADGET_CREATE_71020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71020", action = "action_EVENT_GADGET_CREATE_71020", trigger_count = 0 },
		{ config_id = 1071021, name = "SELECT_OPTION_71021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71021", action = "action_EVENT_SELECT_OPTION_71021", trigger_count = 0 },
		{ config_id = 1071022, name = "TIMER_EVENT_71022", event = EventType.EVENT_TIMER_EVENT, source = "route1", condition = "", action = "action_EVENT_TIMER_EVENT_71022", trigger_count = 0 },
		{ config_id = 1071023, name = "SELECT_OPTION_71023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71023", action = "action_EVENT_SELECT_OPTION_71023", trigger_count = 0 },
		{ config_id = 1071024, name = "TIMER_EVENT_71024", event = EventType.EVENT_TIMER_EVENT, source = "route2", condition = "", action = "action_EVENT_TIMER_EVENT_71024", trigger_count = 0 },
		{ config_id = 1071029, name = "SELECT_OPTION_71029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71029", action = "action_EVENT_SELECT_OPTION_71029", trigger_count = 0 },
		{ config_id = 1071030, name = "TIMER_EVENT_71030", event = EventType.EVENT_TIMER_EVENT, source = "route5", condition = "", action = "action_EVENT_TIMER_EVENT_71030", trigger_count = 0 }
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
		gadgets = { 71001, 71002, 71003, 71004, 71005, 71006, 71007, 71008, 71009, 71010, 71011, 71012, 71013, 71014, 71032, 71033, 71034 },
		regions = { },
		triggers = { "GADGET_CREATE_71018", "GADGET_CREATE_71019", "SELECT_OPTION_71025", "TIMER_EVENT_71026", "SELECT_OPTION_71027", "TIMER_EVENT_71028", "GADGET_STATE_CHANGE_71031", "GADGET_CREATE_71035", "SELECT_OPTION_71036", "SELECT_OPTION_71037" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_71018(context, evt)
	if defs.gadget_controller_3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_71018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_71019(context, evt)
	if defs.gadget_controller_4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_71019(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_71025(context, evt)
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
function action_EVENT_SELECT_OPTION_71025(context, evt)
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
function action_EVENT_TIMER_EVENT_71026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_3, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_71027(context, evt)
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
function action_EVENT_SELECT_OPTION_71027(context, evt)
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
function action_EVENT_TIMER_EVENT_71028(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.gadget_controller_4, {31}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71031(context, evt)
	if 71004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71031(context, evt)
	-- 创建id为71015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 71015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 71032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_71035(context, evt)
	if 71034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_71035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_71036(context, evt)
	-- 判断是gadgetid 71034 option_id 7
	if 71034 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 177006071, 71033) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_71036(context, evt)
	-- 改变指定group组177006071中， configid为71033的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177006071, 71033, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 71034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71034, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_71037(context, evt)
	-- 判断是gadgetid 71034 option_id 7
	if 71034 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 177006071, 71033) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_71037(context, evt)
	-- 改变指定group组177006071中， configid为71033的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177006071, 71033, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 71034 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71034, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_5/Watcher_Puzzle"