-- 基础信息
local base_info = {
	group_id = 133008054
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
	{ config_id = 54001, gadget_id = 70710221, pos = { x = 912.031, y = 289.494, z = -552.818 }, rot = { x = 320.950, y = 312.491, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 54002, gadget_id = 70710221, pos = { x = 901.221, y = 289.828, z = -552.198 }, rot = { x = 0.790, y = 160.253, z = 5.913 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 54003, gadget_id = 70710221, pos = { x = 910.368, y = 289.476, z = -555.239 }, rot = { x = 0.000, y = 258.520, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 10 },
	{ config_id = 54005, gadget_id = 70710221, pos = { x = 892.187, y = 289.597, z = -554.454 }, rot = { x = 0.000, y = 141.365, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 54006, gadget_id = 70710221, pos = { x = 893.930, y = 288.773, z = -553.363 }, rot = { x = 0.000, y = 154.759, z = 42.543 }, level = 30, area_id = 10 },
	{ config_id = 54007, gadget_id = 70350081, pos = { x = 887.694, y = 299.683, z = -556.026 }, rot = { x = 0.000, y = 163.909, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 54008, gadget_id = 70220046, pos = { x = 901.647, y = 291.081, z = -553.375 }, rot = { x = 0.000, y = 188.286, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 54009, gadget_id = 70220046, pos = { x = 901.244, y = 291.417, z = -551.639 }, rot = { x = 0.000, y = 353.259, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 54013, gadget_id = 70360001, pos = { x = 887.337, y = 300.001, z = -555.699 }, rot = { x = 0.000, y = 262.654, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 54017, gadget_id = 70300110, pos = { x = 901.508, y = 290.045, z = -552.013 }, rot = { x = 0.000, y = 34.016, z = 0.000 }, level = 30, drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1054011, name = "ANY_GADGET_DIE_54011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_54011", action = "action_EVENT_ANY_GADGET_DIE_54011" },
	{ config_id = 1054012, name = "ANY_GADGET_DIE_54012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_54012", action = "action_EVENT_ANY_GADGET_DIE_54012" },
	{ config_id = 1054014, name = "GADGET_CREATE_54014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_54014", action = "action_EVENT_GADGET_CREATE_54014", trigger_count = 0 },
	{ config_id = 1054015, name = "SELECT_OPTION_54015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54015", action = "action_EVENT_SELECT_OPTION_54015", trigger_count = 0 },
	{ config_id = 1054016, name = "SELECT_OPTION_54016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54016", action = "action_EVENT_SELECT_OPTION_54016", trigger_count = 0 },
	{ config_id = 1054028, name = "TIMER_EVENT_54028", event = EventType.EVENT_TIMER_EVENT, source = "Prison", condition = "", action = "action_EVENT_TIMER_EVENT_54028" }
}

-- 变量
variables = {
	{ config_id = 1, name = "canopen", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 4,
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
		gadgets = { 54001, 54002, 54003, 54005, 54006, 54007, 54008, 54009, 54013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_54011", "ANY_GADGET_DIE_54012", "GADGET_CREATE_54014", "SELECT_OPTION_54015", "SELECT_OPTION_54016", "TIMER_EVENT_54028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_GADGET_DIE_54011(context, evt)
	if 54008 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"canopen"为0
	if ScriptLib.GetGroupVariableValue(context, "canopen") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_54011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 54009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "canopen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "canopen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 30080202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为54017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 54017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_54012(context, evt)
	if 54009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"canopen"为0
	if ScriptLib.GetGroupVariableValue(context, "canopen") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_54012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 54008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "canopen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "canopen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 30080202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为54017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 54017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_54014(context, evt)
	if 54013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_54014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008054, 54013, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54015(context, evt)
	-- 判断是gadgetid 54013 option_id 24
	if 54013 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"canopen"为0
	if ScriptLib.GetGroupVariableValue(context, "canopen") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54015(context, evt)
	-- 调用提示id为 30080201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30080201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54016(context, evt)
	-- 判断是gadgetid 54013 option_id 24
	if 54013 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"canopen"为1
	if ScriptLib.GetGroupVariableValue(context, "canopen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008472, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 54013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008374, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 54007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟1秒后,向groupId为：133008054的对象,请求一次调用,并将string参数："Prison" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008054, "Prison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（900，290，-551），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=900, y=290, z=-551}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_54028(context, evt)
	-- 将configid为 54002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end