-- 基础信息
local base_info = {
	group_id = 201058003
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
	{ config_id = 3001, gadget_id = 70360002, pos = { x = -68.559, y = 95.555, z = 125.553 }, rot = { x = 0.000, y = 130.973, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003002, name = "GADGET_CREATE_3002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3002", action = "action_EVENT_GADGET_CREATE_3002" },
	{ config_id = 1003003, name = "SELECT_OPTION_3003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3003", action = "action_EVENT_SELECT_OPTION_3003", trigger_count = 0 },
	{ config_id = 1003004, name = "SELECT_OPTION_3004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3004", action = "action_EVENT_SELECT_OPTION_3004", trigger_count = 0 },
	{ config_id = 1003007, name = "SELECT_OPTION_3007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3007", action = "action_EVENT_SELECT_OPTION_3007", trigger_count = 0 },
	{ config_id = 1003008, name = "SELECT_OPTION_3008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3008", action = "action_EVENT_SELECT_OPTION_3008", trigger_count = 0 },
	{ config_id = 1003009, name = "SELECT_OPTION_3009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3009", action = "action_EVENT_SELECT_OPTION_3009", trigger_count = 0 },
	{ config_id = 1003010, name = "SELECT_OPTION_3010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3010", action = "action_EVENT_SELECT_OPTION_3010", trigger_count = 0 },
	{ config_id = 1003011, name = "SELECT_OPTION_3011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3011", action = "action_EVENT_SELECT_OPTION_3011", trigger_count = 0 },
	{ config_id = 1003012, name = "SELECT_OPTION_3012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3012", action = "action_EVENT_SELECT_OPTION_3012", trigger_count = 0 },
	{ config_id = 1003013, name = "TIMER_EVENT_3013", event = EventType.EVENT_TIMER_EVENT, source = "finish", condition = "", action = "action_EVENT_TIMER_EVENT_3013", trigger_count = 0 }
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
		gadgets = { 3001 },
		regions = { },
		triggers = { "GADGET_CREATE_3002", "SELECT_OPTION_3003", "SELECT_OPTION_3004", "SELECT_OPTION_3007", "SELECT_OPTION_3008", "SELECT_OPTION_3009", "SELECT_OPTION_3010", "SELECT_OPTION_3011", "SELECT_OPTION_3012", "TIMER_EVENT_3013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_3002(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201058003, 3001, {210,211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-68，95，125），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-68, y=95, z=125}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3003(context, evt)
	-- 判断是gadgetid 3001 option_id 210
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage3state"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage3state", 201058008) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3003(context, evt)
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-104，71，154），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-104, y=71, z=154}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage3" 的变量设置为 102
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3", 102, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058003的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058003, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3004(context, evt)
	-- 判断是gadgetid 3001 option_id 210
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage3state"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage3state", 201058008) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3004(context, evt)
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-104，71，154），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-104, y=71, z=154}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage3" 的变量设置为 203
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3", 203, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058003的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058003, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3007(context, evt)
	-- 判断是gadgetid 3001 option_id 210
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage3state"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage3state", 201058008) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3007(context, evt)
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-104，71，154），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-104, y=71, z=154}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage3" 的变量设置为 304
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3", 304, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058003的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058003, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3008(context, evt)
	-- 判断是gadgetid 3001 option_id 210
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage3state"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage3state", 201058008) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3008(context, evt)
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-104，71，154），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-104, y=71, z=154}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage3" 的变量设置为 401
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3", 401, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058003的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058003, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3009(context, evt)
	-- 判断是gadgetid 3001 option_id 211
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage3state"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage3state", 201058008) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3009(context, evt)
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-104，71，154），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-104, y=71, z=154}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage3" 的变量设置为 104
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3", 104, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058003的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058003, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3010(context, evt)
	-- 判断是gadgetid 3001 option_id 211
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage3state"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage3state", 201058008) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3010(context, evt)
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-104，71，154），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-104, y=71, z=154}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage3" 的变量设置为 201
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3", 201, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058003的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058003, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3011(context, evt)
	-- 判断是gadgetid 3001 option_id 211
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage3state"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage3state", 201058008) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3011(context, evt)
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-104，71，154），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-104, y=71, z=154}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage3" 的变量设置为 302
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3", 302, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058003的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058003, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3012(context, evt)
	-- 判断是gadgetid 3001 option_id 211
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage3state"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage3state", 201058008) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3012(context, evt)
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058003 ；指定config：3001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058003, 3001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-104，71，154），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-104, y=71, z=154}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage3" 的变量设置为 403
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage3", 403, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058003的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058003, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201058003, 3001, {210,211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end