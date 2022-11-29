-- 基础信息
local base_info = {
	group_id = 220036003
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
	{ config_id = 3001, gadget_id = 70210116, pos = { x = 343.384, y = -11.535, z = 243.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked },
	{ config_id = 3002, gadget_id = 70350002, pos = { x = 343.330, y = -11.186, z = 240.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70310011, pos = { x = 343.238, y = -13.023, z = 269.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3004, gadget_id = 70310011, pos = { x = 338.257, y = -13.023, z = 259.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3005, gadget_id = 70310011, pos = { x = 344.702, y = -13.023, z = 266.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3008, gadget_id = 70360002, pos = { x = 348.281, y = -12.741, z = 258.040 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3009, gadget_id = 70360002, pos = { x = 343.269, y = -12.741, z = 268.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3010, gadget_id = 70360002, pos = { x = 338.294, y = -12.741, z = 258.067 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3014, gadget_id = 70310011, pos = { x = 348.202, y = -13.023, z = 259.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3015, gadget_id = 70310011, pos = { x = 341.849, y = -13.023, z = 266.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3016, gadget_id = 70310011, pos = { x = 339.767, y = -13.023, z = 256.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3017, gadget_id = 70360002, pos = { x = 343.341, y = -11.354, z = 282.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 3018, gadget_id = 70710345, pos = { x = 343.290, y = -12.740, z = 262.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3027, gadget_id = 70710291, pos = { x = 343.419, y = -11.354, z = 285.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003006, name = "SELECT_OPTION_3006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3006", action = "action_EVENT_SELECT_OPTION_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "SELECT_OPTION_3007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3007", action = "action_EVENT_SELECT_OPTION_3007", trigger_count = 0 },
	{ config_id = 1003011, name = "QUEST_START_3011", event = EventType.EVENT_QUEST_START, source = "1904511", condition = "", action = "action_EVENT_QUEST_START_3011", trigger_count = 0 },
	{ config_id = 1003012, name = "SELECT_OPTION_3012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3012", action = "action_EVENT_SELECT_OPTION_3012", trigger_count = 0 },
	{ config_id = 1003013, name = "TIMER_EVENT_3013", event = EventType.EVENT_TIMER_EVENT, source = "unlock_option", condition = "condition_EVENT_TIMER_EVENT_3013", action = "action_EVENT_TIMER_EVENT_3013", trigger_count = 0 },
	{ config_id = 1003019, name = "GADGET_STATE_CHANGE_3019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3019", action = "action_EVENT_GADGET_STATE_CHANGE_3019", trigger_count = 0 },
	{ config_id = 1003020, name = "GADGET_STATE_CHANGE_3020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3020", action = "action_EVENT_GADGET_STATE_CHANGE_3020", trigger_count = 0 },
	{ config_id = 1003021, name = "QUEST_FINISH_3021", event = EventType.EVENT_QUEST_FINISH, source = "1904515", condition = "", action = "action_EVENT_QUEST_FINISH_3021", trigger_count = 0 },
	{ config_id = 1003022, name = "VARIABLE_CHANGE_3022", event = EventType.EVENT_VARIABLE_CHANGE, source = "puzzle_flag", condition = "condition_EVENT_VARIABLE_CHANGE_3022", action = "action_EVENT_VARIABLE_CHANGE_3022" },
	{ config_id = 1003023, name = "TIMER_EVENT_3023", event = EventType.EVENT_TIMER_EVENT, source = "fail_delay", condition = "", action = "action_EVENT_TIMER_EVENT_3023" },
	{ config_id = 1003024, name = "QUEST_START_3024", event = EventType.EVENT_QUEST_START, source = "1904515", condition = "", action = "action_EVENT_QUEST_START_3024", trigger_count = 0 },
	{ config_id = 1003026, name = "GADGET_STATE_CHANGE_3026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_3026", action = "action_EVENT_GADGET_STATE_CHANGE_3026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "puzzle_count", value = 0, no_refresh = false },
	{ config_id = 2, name = "puzzle_flag", value = 0, no_refresh = false }
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3008, 3009, 3010, 3014, 3015, 3016, 3017, 3018 },
		regions = { },
		triggers = { "SELECT_OPTION_3006", "SELECT_OPTION_3007", "QUEST_START_3011", "SELECT_OPTION_3012", "TIMER_EVENT_3013", "GADGET_STATE_CHANGE_3019", "GADGET_STATE_CHANGE_3020", "QUEST_FINISH_3021", "VARIABLE_CHANGE_3022", "TIMER_EVENT_3023", "QUEST_START_3024", "GADGET_STATE_CHANGE_3026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_3006(context, evt)
	if 3009 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"puzzle_count"为0
	if ScriptLib.GetGroupVariableValue(context, "puzzle_count") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3006(context, evt)
	-- 删除指定group： 220036003 ；指定config：3009；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3009, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "puzzle_count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "puzzle_count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3007(context, evt)
	if 3008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3007(context, evt)
	local count = ScriptLib.GetGroupVariableValue(context, "puzzle_count")
	local pos = { x = 343, y = -11, z = 285 }
	
	if count == 1 then
	        ScriptLib.SetGroupVariableValue(context, "puzzle_count", 2)   
	        ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3008, 24)
	        ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.GearStart)
	
	else
	        ScriptLib.SetGroupVariableValue(context, "puzzle_count", 0)
	        ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3008, 24)
	        ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3009, 24)
	        ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3010, 24)
	        ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.Default)
	        ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.Default)
	        ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.Default)
	        ScriptLib.CreateGroupTimerEvent(context, 220036003, "unlock_option", 3)        
	        ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 })
	        ScriptLib.CreateGadget(context, { config_id = 3027 })
	        ScriptLib.AddQuestProgress(context, "22003600302")
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_3011(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220036003, 3008, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220036003, 3009, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220036003, 3010, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 3008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3012(context, evt)
	if 3010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3012(context, evt)
	local count = ScriptLib.GetGroupVariableValue(context, "puzzle_count")
	local pos = { x = 343, y = -11, z = 285 }
	
	if count == 2 then
	        ScriptLib.SetGroupVariableValue(context, "puzzle_count", 3)
	        ScriptLib.SetGroupVariableValue(context, "puzzle_flag", 1)    
	        ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3010, 24)
	        ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.GearStart)
	        ScriptLib.AddQuestProgress(context, "22003600301")
	
	else
	        ScriptLib.SetGroupVariableValue(context, "puzzle_count", 0)
	        ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3008, 24)
	        ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3009, 24)
	        ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3010, 24)
	        ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.Default)
	        ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.Default)
	        ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.Default)
	        ScriptLib.CreateGroupTimerEvent(context, 220036003, "unlock_option", 3)
	        
	        ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 })
	        ScriptLib.CreateGadget(context, { config_id = 3027 })
	        ScriptLib.AddQuestProgress(context, "22003600302")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_3013(context, evt)
	-- 判断变量"puzzle_flag"为0
	if ScriptLib.GetGroupVariableValue(context, "puzzle_flag") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220036003, 3008, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220036003, 3009, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220036003, 3010, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3019(context, evt)
	if 3013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3019(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2200360012") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3020(context, evt)
	if 3018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2200360013") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3021(context, evt)
	-- 延迟5秒后,向groupId为：220036003的对象,请求一次调用,并将string参数："fail_delay" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220036003, "fail_delay", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_3022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"puzzle_flag"为1
	if ScriptLib.GetGroupVariableValue(context, "puzzle_flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_3022(context, evt)
	-- 将configid为 3001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2200360031") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3023(context, evt)
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_3024(context, evt)
	-- 将本组内变量名为 "puzzle_flag" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "puzzle_flag", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 220036003 ；指定config：3008；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3008, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 220036003 ；指定config：3009；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3009, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 220036003 ；指定config：3010；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220036003, 3010, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 3008 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3010 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3017 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3017, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_3026(context, evt)
	if 3001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_3026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2200360032") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end