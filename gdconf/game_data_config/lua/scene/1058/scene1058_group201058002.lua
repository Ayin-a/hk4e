-- 基础信息
local base_info = {
	group_id = 201058002
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
	{ config_id = 2001, gadget_id = 70360002, pos = { x = 14.892, y = 92.945, z = 52.400 }, rot = { x = 0.000, y = 133.743, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70900201, pos = { x = 27.261, y = 94.868, z = 40.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70900201, pos = { x = -21.231, y = 88.410, z = 85.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70900007, pos = { x = 27.268, y = 92.918, z = 40.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2006, shape = RegionShape.SPHERE, radius = 11.7, pos = { x = -20.814, y = 88.412, z = 84.399 } },
	{ config_id = 2015, shape = RegionShape.SPHERE, radius = 8.6, pos = { x = 32.243, y = 92.837, z = 43.284 } }
}

-- 触发器
triggers = {
	{ config_id = 1002002, name = "GADGET_CREATE_2002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2002", action = "action_EVENT_GADGET_CREATE_2002" },
	{ config_id = 1002003, name = "SELECT_OPTION_2003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2003", action = "action_EVENT_SELECT_OPTION_2003", trigger_count = 0 },
	{ config_id = 1002006, name = "ENTER_REGION_2006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2006", action = "action_EVENT_ENTER_REGION_2006" },
	{ config_id = 1002007, name = "SELECT_OPTION_2007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2007", action = "action_EVENT_SELECT_OPTION_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "SELECT_OPTION_2008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2008", action = "action_EVENT_SELECT_OPTION_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "SELECT_OPTION_2009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2009", action = "action_EVENT_SELECT_OPTION_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "SELECT_OPTION_2010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2010", action = "action_EVENT_SELECT_OPTION_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "SELECT_OPTION_2011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2011", action = "action_EVENT_SELECT_OPTION_2011", trigger_count = 0 },
	{ config_id = 1002012, name = "SELECT_OPTION_2012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2012", action = "action_EVENT_SELECT_OPTION_2012", trigger_count = 0 },
	{ config_id = 1002013, name = "SELECT_OPTION_2013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2013", action = "action_EVENT_SELECT_OPTION_2013", trigger_count = 0 },
	{ config_id = 1002014, name = "TIMER_EVENT_2014", event = EventType.EVENT_TIMER_EVENT, source = "finish", condition = "", action = "action_EVENT_TIMER_EVENT_2014", trigger_count = 0 },
	{ config_id = 1002015, name = "ENTER_REGION_2015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2015", action = "action_EVENT_ENTER_REGION_2015" },
	{ config_id = 1002016, name = "TIMER_EVENT_2016", event = EventType.EVENT_TIMER_EVENT, source = "tip2", condition = "", action = "action_EVENT_TIMER_EVENT_2016" },
	{ config_id = 1002018, name = "GADGET_STATE_CHANGE_2018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2018", action = "action_EVENT_GADGET_STATE_CHANGE_2018" },
	{ config_id = 1002019, name = "SELECT_OPTION_2019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2019", action = "action_EVENT_SELECT_OPTION_2019" },
	{ config_id = 1002020, name = "SELECT_OPTION_2020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2020", action = "action_EVENT_SELECT_OPTION_2020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStartedChallenge", value = 0, no_refresh = false }
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
		gadgets = { 2001 },
		regions = { 2006 },
		triggers = { "GADGET_CREATE_2002", "SELECT_OPTION_2003", "ENTER_REGION_2006", "SELECT_OPTION_2007", "SELECT_OPTION_2008", "SELECT_OPTION_2009", "SELECT_OPTION_2010", "SELECT_OPTION_2011", "SELECT_OPTION_2012", "SELECT_OPTION_2013", "TIMER_EVENT_2014", "GADGET_STATE_CHANGE_2018", "SELECT_OPTION_2019", "SELECT_OPTION_2020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 原Suite1,
		monsters = { },
		gadgets = { },
		regions = { 2015 },
		triggers = { "ENTER_REGION_2015", "TIMER_EVENT_2016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_2002(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201058002, 2001, {210,211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2003(context, evt)
	-- 判断是gadgetid 2001 option_id 210
	if 2001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_2003(context, evt)
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 211) then
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
	
	-- 延迟5秒后,向groupId为：201058002的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058002, "finish", 5) then
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
function condition_EVENT_ENTER_REGION_2006(context, evt)
	if evt.param1 ~= 2006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058016, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2007(context, evt)
	-- 判断是gadgetid 2001 option_id 210
	if 2001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_2007(context, evt)
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 211) then
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
	
	-- 延迟5秒后,向groupId为：201058002的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058002, "finish", 5) then
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
function condition_EVENT_SELECT_OPTION_2008(context, evt)
	-- 判断是gadgetid 2001 option_id 210
	if 2001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_2008(context, evt)
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 211) then
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
	
	-- 延迟5秒后,向groupId为：201058002的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058002, "finish", 5) then
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
function condition_EVENT_SELECT_OPTION_2009(context, evt)
	-- 判断是gadgetid 2001 option_id 210
	if 2001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_2009(context, evt)
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 211) then
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
	
	-- 延迟5秒后,向groupId为：201058002的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058002, "finish", 5) then
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
function condition_EVENT_SELECT_OPTION_2010(context, evt)
	-- 判断是gadgetid 2001 option_id 211
	if 2001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_2010(context, evt)
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 211) then
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
	
	-- 延迟5秒后,向groupId为：201058002的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058002, "finish", 5) then
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
function condition_EVENT_SELECT_OPTION_2011(context, evt)
	-- 判断是gadgetid 2001 option_id 211
	if 2001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_2011(context, evt)
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 211) then
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
	
	-- 延迟5秒后,向groupId为：201058002的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058002, "finish", 5) then
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
function condition_EVENT_SELECT_OPTION_2012(context, evt)
	-- 判断是gadgetid 2001 option_id 211
	if 2001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_2012(context, evt)
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 211) then
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
	
	-- 延迟5秒后,向groupId为：201058002的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058002, "finish", 5) then
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
function condition_EVENT_SELECT_OPTION_2013(context, evt)
	-- 判断是gadgetid 2001 option_id 211
	if 2001 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_2013(context, evt)
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：210；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 201058002 ；指定config：2001；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 201058002, 2001, 211) then
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
	
	-- 延迟5秒后,向groupId为：201058002的对象,请求一次调用,并将string参数："finish" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058002, "finish", 5) then
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
function action_EVENT_TIMER_EVENT_2014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201058002, 2001, {210,211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 延迟1秒后,向groupId为：201058002的对象,请求一次调用,并将string参数："tip2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058002, "tip2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2015(context, evt)
	if evt.param1 ~= 2015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2015(context, evt)
	-- 触发镜头注目，注目位置为坐标（-52，106，50），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-52, y=106, z=50}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 创建id为2004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2016(context, evt)
	-- 调用提示id为 10520201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10520201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	if 2017 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2018(context, evt)
	-- 创建编号为2018（该怪物潮的识别id)的怪物潮，创建怪物总数为10，场上怪物最少2只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2018, 201058014, {14001,14002,14003,14004,14005,14006,14007,14008,14009,14010}, 10, 2, 5) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2019(context, evt)
	-- 判断变量"hasStartedChallenge"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStartedChallenge") ~= 0 then
			return false
	end
	
	-- 判断是gadgetid 2001 option_id 210
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 210 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2019(context, evt)
	-- 将本组内变量名为 "hasStartedChallenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "hasStartedChallenge", 1, 201058002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "startChallenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "startChallenge", 1, 201058016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2020(context, evt)
	-- 判断变量"hasStartedChallenge"为0
	if ScriptLib.GetGroupVariableValue(context, "hasStartedChallenge") ~= 0 then
			return false
	end
	
	-- 判断是gadgetid 2001 option_id 211
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2020(context, evt)
	-- 将本组内变量名为 "hasStartedChallenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "hasStartedChallenge", 1, 201058002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "startChallenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "startChallenge", 1, 201058016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end