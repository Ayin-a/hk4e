-- 基础信息
local base_info = {
	group_id = 201058006
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
	{ config_id = 6001, gadget_id = 70360002, pos = { x = 7.170, y = 101.882, z = 120.565 }, rot = { x = 0.000, y = 43.308, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70900201, pos = { x = 7.204, y = 102.956, z = 120.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006003, name = "GADGET_CREATE_6003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_6003", action = "action_EVENT_GADGET_CREATE_6003" },
	{ config_id = 1006011, name = "GADGET_STATE_CHANGE_6011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6011", action = "action_EVENT_GADGET_STATE_CHANGE_6011" },
	{ config_id = 1006012, name = "SELECT_OPTION_6012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6012", action = "action_EVENT_SELECT_OPTION_6012", trigger_count = 0 },
	{ config_id = 1006013, name = "SELECT_OPTION_6013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6013", action = "action_EVENT_SELECT_OPTION_6013", trigger_count = 0 },
	{ config_id = 1006014, name = "SELECT_OPTION_6014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6014", action = "action_EVENT_SELECT_OPTION_6014", trigger_count = 0 },
	{ config_id = 1006015, name = "SELECT_OPTION_6015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6015", action = "action_EVENT_SELECT_OPTION_6015", trigger_count = 0 },
	{ config_id = 1006016, name = "SELECT_OPTION_6016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6016", action = "action_EVENT_SELECT_OPTION_6016", trigger_count = 0 },
	{ config_id = 1006017, name = "SELECT_OPTION_6017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6017", action = "action_EVENT_SELECT_OPTION_6017", trigger_count = 0 },
	{ config_id = 1006018, name = "SELECT_OPTION_6018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6018", action = "action_EVENT_SELECT_OPTION_6018", trigger_count = 0 },
	{ config_id = 1006019, name = "SELECT_OPTION_6019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6019", action = "action_EVENT_SELECT_OPTION_6019", trigger_count = 0 },
	{ config_id = 1006020, name = "TIMER_EVENT_6020", event = EventType.EVENT_TIMER_EVENT, source = "finish", condition = "", action = "action_EVENT_TIMER_EVENT_6020", trigger_count = 0 }
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
		gadgets = { 6001 },
		regions = { },
		triggers = { "GADGET_CREATE_6003", "SELECT_OPTION_6012", "SELECT_OPTION_6013", "SELECT_OPTION_6014", "SELECT_OPTION_6015", "SELECT_OPTION_6016", "SELECT_OPTION_6017", "SELECT_OPTION_6018", "SELECT_OPTION_6019", "TIMER_EVENT_6020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6002 },
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
function condition_EVENT_GADGET_CREATE_6003(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_6003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201058006, 6001, {210,211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6011(context, evt)
	if 6001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201058006, 6001, {210,211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6012(context, evt)
	-- 判断是gadgetid 6001 option_id 210
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage1state"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage1state", 201058008) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6012(context, evt)
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-21，72，84），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-21, y=72, z=84}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage1" 的变量设置为 102
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1", 102, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058006的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058006, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6013(context, evt)
	-- 判断是gadgetid 6001 option_id 210
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage1state"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage1state", 201058008) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6013(context, evt)
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-21，72，84），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-21, y=72, z=84}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage1" 的变量设置为 203
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1", 203, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058006的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058006, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6014(context, evt)
	-- 判断是gadgetid 6001 option_id 210
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage1state"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage1state", 201058008) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6014(context, evt)
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-21，72，84），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-21, y=72, z=84}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage1" 的变量设置为 304
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1", 304, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058006的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058006, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6015(context, evt)
	-- 判断是gadgetid 6001 option_id 210
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage1state"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage1state", 201058008) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6015(context, evt)
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-21，72，84），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-21, y=72, z=84}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage1" 的变量设置为 401
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1", 401, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058006的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058006, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6016(context, evt)
	-- 判断是gadgetid 6001 option_id 211
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage1state"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage1state", 201058008) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6016(context, evt)
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-21，72，84），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-21, y=72, z=84}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage1" 的变量设置为 104
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1", 104, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058006的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058006, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6017(context, evt)
	-- 判断是gadgetid 6001 option_id 211
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage1state"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage1state", 201058008) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6017(context, evt)
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-21，72，84），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-21, y=72, z=84}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage1" 的变量设置为 201
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1", 201, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058006的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058006, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6018(context, evt)
	-- 判断是gadgetid 6001 option_id 211
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage1state"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage1state", 201058008) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6018(context, evt)
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-21，72，84），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-21, y=72, z=84}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage1" 的变量设置为 302
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1", 302, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058006的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058006, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6019(context, evt)
	-- 判断是gadgetid 6001 option_id 211
	if 6001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage1state"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage1state", 201058008) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6019(context, evt)
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058006 ；指定config：6001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058006, 6001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-21，72，84），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-21, y=72, z=84}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage1" 的变量设置为 403
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage1", 403, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058006的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058006, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6020(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201058006, 6001, {210,211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "showGuidePoint1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "showGuidePoint1", 1, 201058017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end