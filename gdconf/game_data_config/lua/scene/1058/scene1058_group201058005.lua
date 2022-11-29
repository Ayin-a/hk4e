-- 基础信息
local base_info = {
	group_id = 201058005
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
	{ config_id = 5001, gadget_id = 70360002, pos = { x = -55.611, y = 105.781, z = 191.801 }, rot = { x = 0.000, y = 313.324, z = 0.000 }, level = 1 },
	{ config_id = 5004, gadget_id = 70690008, pos = { x = -76.454, y = 84.986, z = 190.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5005, gadget_id = 70900201, pos = { x = -76.884, y = 97.767, z = 191.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5014, shape = RegionShape.SPHERE, radius = 8, pos = { x = -76.452, y = 104.762, z = 190.545 } },
	{ config_id = 5015, shape = RegionShape.SPHERE, radius = 8, pos = { x = -63.935, y = 105.966, z = 196.287 } }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "GADGET_CREATE_5002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_5002", action = "action_EVENT_GADGET_CREATE_5002" },
	{ config_id = 1005003, name = "TIMER_EVENT_5003", event = EventType.EVENT_TIMER_EVENT, source = "finish", condition = "", action = "action_EVENT_TIMER_EVENT_5003", trigger_count = 0 },
	{ config_id = 1005006, name = "SELECT_OPTION_5006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5006", action = "action_EVENT_SELECT_OPTION_5006", trigger_count = 0 },
	{ config_id = 1005007, name = "SELECT_OPTION_5007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5007", action = "action_EVENT_SELECT_OPTION_5007", trigger_count = 0 },
	{ config_id = 1005008, name = "SELECT_OPTION_5008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5008", action = "action_EVENT_SELECT_OPTION_5008", trigger_count = 0 },
	{ config_id = 1005009, name = "SELECT_OPTION_5009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5009", action = "action_EVENT_SELECT_OPTION_5009", trigger_count = 0 },
	{ config_id = 1005010, name = "SELECT_OPTION_5010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5010", action = "action_EVENT_SELECT_OPTION_5010", trigger_count = 0 },
	{ config_id = 1005011, name = "SELECT_OPTION_5011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5011", action = "action_EVENT_SELECT_OPTION_5011", trigger_count = 0 },
	{ config_id = 1005012, name = "SELECT_OPTION_5012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5012", action = "action_EVENT_SELECT_OPTION_5012", trigger_count = 0 },
	{ config_id = 1005013, name = "SELECT_OPTION_5013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5013", action = "action_EVENT_SELECT_OPTION_5013", trigger_count = 0 },
	{ config_id = 1005014, name = "ENTER_REGION_5014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5014", action = "action_EVENT_ENTER_REGION_5014" },
	{ config_id = 1005015, name = "ENTER_REGION_5015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5015", action = "action_EVENT_ENTER_REGION_5015" }
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
		gadgets = { 5001 },
		regions = { 5014, 5015 },
		triggers = { "GADGET_CREATE_5002", "TIMER_EVENT_5003", "SELECT_OPTION_5006", "SELECT_OPTION_5007", "SELECT_OPTION_5008", "SELECT_OPTION_5009", "SELECT_OPTION_5010", "SELECT_OPTION_5011", "SELECT_OPTION_5012", "SELECT_OPTION_5013", "ENTER_REGION_5014", "ENTER_REGION_5015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5004, 5005 },
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
function condition_EVENT_GADGET_CREATE_5002(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_5002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {210,211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_5003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201058005, 5001, {210,211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5006(context, evt)
	-- 判断是gadgetid 5001 option_id 210
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage2state"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage2state", 201058008) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5006(context, evt)
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-26，81，161），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-26, y=81, z=161}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage2" 的变量设置为 102
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2", 102, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058005的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058005, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5007(context, evt)
	-- 判断是gadgetid 5001 option_id 210
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage2state"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage2state", 201058008) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5007(context, evt)
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-26，81，161），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-26, y=81, z=161}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage2" 的变量设置为 203
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2", 203, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058005的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058005, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5008(context, evt)
	-- 判断是gadgetid 5001 option_id 210
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage2state"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage2state", 201058008) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5008(context, evt)
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-26，81，161），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-26, y=81, z=161}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage2" 的变量设置为 304
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2", 304, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058005的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058005, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5009(context, evt)
	-- 判断是gadgetid 5001 option_id 210
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage2state"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage2state", 201058008) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5009(context, evt)
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-26，81，161），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-26, y=81, z=161}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage2" 的变量设置为 401
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2", 401, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058005的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058005, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5010(context, evt)
	-- 判断是gadgetid 5001 option_id 211
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage2state"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage2state", 201058008) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5010(context, evt)
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-26，81，161），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-26, y=81, z=161}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage2" 的变量设置为 104
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2", 104, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058005的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058005, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5011(context, evt)
	-- 判断是gadgetid 5001 option_id 211
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage2state"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage2state", 201058008) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5011(context, evt)
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-26，81，161），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-26, y=81, z=161}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage2" 的变量设置为 201
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2", 201, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058005的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058005, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5012(context, evt)
	-- 判断是gadgetid 5001 option_id 211
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage2state"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage2state", 201058008) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5012(context, evt)
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-26，81，161），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-26, y=81, z=161}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage2" 的变量设置为 302
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2", 302, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058005的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058005, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5013(context, evt)
	-- 判断是gadgetid 5001 option_id 211
	if 5001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"stage2state"为4
	if ScriptLib.GetGroupVariableValueByGroup(context, "stage2state", 201058008) ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5013(context, evt)
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058005 ；指定config：5001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058005, 5001, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-26，81，161），持续时间为5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-26, y=81, z=161}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "stage2" 的变量设置为 403
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage2", 403, 201058008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟5秒后,向groupId为：201058005的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058005, "finish", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058008中， configid为8006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058008中， configid为8010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058008, 8010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5014(context, evt)
	if evt.param1 ~= 5014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5015(context, evt)
	if evt.param1 ~= 5015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058006, 2)
	
	return 0
end