-- 基础信息
local base_info = {
	group_id = 220000064
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
	{ config_id = 358, gadget_id = 70310001, pos = { x = -53.233, y = 1.249, z = 515.741 }, rot = { x = 0.000, y = 120.143, z = 0.000 }, level = 1 },
	{ config_id = 359, gadget_id = 70310001, pos = { x = -46.124, y = 1.249, z = 515.634 }, rot = { x = 0.000, y = 159.334, z = 0.000 }, level = 1 },
	{ config_id = 360, gadget_id = 70310001, pos = { x = -46.194, y = 1.249, z = 523.770 }, rot = { x = 0.000, y = 142.675, z = 0.000 }, level = 1 },
	{ config_id = 361, gadget_id = 70310001, pos = { x = -53.239, y = 1.249, z = 523.729 }, rot = { x = 0.000, y = 78.566, z = 0.000 }, level = 1 },
	{ config_id = 362, gadget_id = 70900007, pos = { x = -38.014, y = 5.982, z = 515.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 363, gadget_id = 70900007, pos = { x = -49.978, y = 0.869, z = 519.827 }, rot = { x = 0.000, y = 89.628, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 364, gadget_id = 70360002, pos = { x = -37.839, y = 5.974, z = 523.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 365, gadget_id = 70220013, pos = { x = -37.834, y = 5.974, z = 518.066 }, rot = { x = 0.000, y = 236.652, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 119, shape = RegionShape.SPHERE, radius = 5, pos = { x = -53.835, y = 0.500, z = 531.742 } }
}

-- 触发器
triggers = {
	{ config_id = 1000109, name = "TIMER_EVENT_109", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_109" },
	{ config_id = 1000110, name = "GADGET_STATE_CHANGE_110", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_110", action = "action_EVENT_GADGET_STATE_CHANGE_110", trigger_count = 0 },
	{ config_id = 1000111, name = "GADGET_CREATE_111", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_111", action = "action_EVENT_GADGET_CREATE_111" },
	{ config_id = 1000112, name = "SELECT_OPTION_112", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_112", action = "action_EVENT_SELECT_OPTION_112", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000113, name = "GADGET_STATE_CHANGE_113", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113", action = "action_EVENT_GADGET_STATE_CHANGE_113", trigger_count = 0 },
	{ config_id = 1000114, name = "GADGET_STATE_CHANGE_114", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114", action = "action_EVENT_GADGET_STATE_CHANGE_114", trigger_count = 0 },
	{ config_id = 1000115, name = "GADGET_STATE_CHANGE_115", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115", action = "action_EVENT_GADGET_STATE_CHANGE_115", trigger_count = 0 },
	{ config_id = 1000116, name = "TIMER_EVENT_116", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_116" },
	{ config_id = 1000117, name = "TIMER_EVENT_117", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_117" },
	{ config_id = 1000118, name = "TIMER_EVENT_118", event = EventType.EVENT_TIMER_EVENT, source = "time4", condition = "", action = "action_EVENT_TIMER_EVENT_118" },
	{ config_id = 1000119, name = "ENTER_REGION_119", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1000120, name = "TIMER_EVENT_120", event = EventType.EVENT_TIMER_EVENT, source = "time5", condition = "", action = "action_EVENT_TIMER_EVENT_120" },
	{ config_id = 1000121, name = "GADGET_STATE_CHANGE_121", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_121", action = "action_EVENT_GADGET_STATE_CHANGE_121" },
	{ config_id = 1000122, name = "GADGET_STATE_CHANGE_122", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_122", action = "action_EVENT_GADGET_STATE_CHANGE_122" },
	{ config_id = 1000123, name = "GADGET_STATE_CHANGE_123", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123", action = "action_EVENT_GADGET_STATE_CHANGE_123" },
	{ config_id = 1000124, name = "GADGET_STATE_CHANGE_124", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124", action = "action_EVENT_GADGET_STATE_CHANGE_124" },
	{ config_id = 1000125, name = "GADGET_STATE_CHANGE_125", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125", action = "action_EVENT_GADGET_STATE_CHANGE_125" },
	{ config_id = 1000126, name = "VARIABLE_CHANGE_126", event = EventType.EVENT_VARIABLE_CHANGE, source = "num_1", condition = "condition_EVENT_VARIABLE_CHANGE_126", action = "action_EVENT_VARIABLE_CHANGE_126" }
}

-- 变量
variables = {
	{ config_id = 1, name = "num_1", value = 0, no_refresh = false }
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
		gadgets = { 358, 359, 360, 361, 362, 363, 364, 365 },
		regions = { 119 },
		triggers = { "TIMER_EVENT_109", "GADGET_STATE_CHANGE_110", "GADGET_CREATE_111", "SELECT_OPTION_112", "GADGET_STATE_CHANGE_113", "GADGET_STATE_CHANGE_114", "GADGET_STATE_CHANGE_115", "TIMER_EVENT_116", "TIMER_EVENT_117", "TIMER_EVENT_118", "ENTER_REGION_119", "TIMER_EVENT_120", "GADGET_STATE_CHANGE_121" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 358, 359, 360, 361, 362, 363, 364 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_122", "GADGET_STATE_CHANGE_123", "GADGET_STATE_CHANGE_124", "GADGET_STATE_CHANGE_125", "VARIABLE_CHANGE_126" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_109(context, evt)
	-- 将configid为 358 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 358, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_110(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_110(context, evt)
	-- 延迟2秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_111(context, evt)
	if 364 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_111(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_112(context, evt)
	if 364 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_112(context, evt)
	-- 将configid为 364 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 364, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 362 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 362, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-50，1，520），持续时间为10秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-50, y=1, z=520}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 10, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1046 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1046) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_113(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_113(context, evt)
	-- 延迟4秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time2", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114(context, evt)
	-- 延迟6秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time3", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115(context, evt)
	-- 延迟8秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time4", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_116(context, evt)
	-- 将configid为 359 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 359, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_117(context, evt)
	-- 将configid为 360 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 360, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_118(context, evt)
	-- 将configid为 361 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 361, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_120(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121(context, evt)
	if 362 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_121(context, evt)
	-- 延迟10秒后,向groupId为：220000064的对象,请求一次调用,并将string参数："time5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220000064, "time5", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_122(context, evt)
	if 358 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_122(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 0 then
			if 0 ~= ScriptLib.ShowReminder(context, 1047) then
			return -1
			end
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 1 }) then
			return -1
			end
		end
	
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", 1) then
	  	return -1
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123(context, evt)
	if 359 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 1 then
			if 0 ~= ScriptLib.ShowReminder(context, 1047) then
			return -1
			end
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 1 }) then
			return -1
			end
		end
	
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", 1) then
	  	return -1
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_124(context, evt)
	if 360 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 2 then
			if 0 ~= ScriptLib.ShowReminder(context, 1047) then
			return -1
			end
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 1 }) then
			return -1
			end
		end
	
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", 1) then
	  	return -1
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_125(context, evt)
	if 361 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_125(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 3 then
			if 0 ~= ScriptLib.ShowReminder(context, 1047) then
			return -1
			end
			if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000064, suite = 1 }) then
			return -1
			end
		end
	
		if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "num_1", 1) then
	  	return -1
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_126(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"num_1"为1
	if ScriptLib.GetGroupVariableValue(context, "num_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_126(context, evt)
	-- 解锁目标363
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 363, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	-- 调用提示id为 1048 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1048) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end