-- 基础信息
local base_info = {
	group_id = 199003133
}

-- DEFS_MISCS
local defs = {
    reverse_time = 30,--回溯倒计时，整数秒
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
	[133001] = { config_id = 133001, gadget_id = 70310390, pos = { x = -720.645, y = 231.800, z = -36.138 }, rot = { x = 358.462, y = 79.984, z = 3.956 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 403 },
	[133002] = { config_id = 133002, gadget_id = 70310392, pos = { x = -722.909, y = 231.924, z = -37.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[133003] = { config_id = 133003, gadget_id = 70310392, pos = { x = -718.799, y = 231.923, z = -36.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[133004] = { config_id = 133004, gadget_id = 70211102, pos = { x = -721.389, y = 232.373, z = -33.186 }, rot = { x = 0.000, y = 172.851, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1133005, name = "TIME_AXIS_PASS_133005", event = EventType.EVENT_TIME_AXIS_PASS, source = "reverse", condition = "", action = "action_EVENT_TIME_AXIS_PASS_133005", trigger_count = 0 },
	{ config_id = 1133006, name = "VARIABLE_CHANGE_133006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_133006", action = "action_EVENT_VARIABLE_CHANGE_133006", trigger_count = 0 },
	-- 开启回溯播reminder
	{ config_id = 1133011, name = "VARIABLE_CHANGE_133011", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_133011", action = "action_EVENT_VARIABLE_CHANGE_133011", trigger_count = 0 },
	-- 回溯完成播reminder
	{ config_id = 1133013, name = "VARIABLE_CHANGE_133013", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_133013", action = "action_EVENT_VARIABLE_CHANGE_133013", trigger_count = 0 },
	{ config_id = 1133014, name = "GROUP_LOAD_133014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_133014", action = "action_EVENT_GROUP_LOAD_133014", trigger_count = 0 },
	-- 未完成时重设0
	{ config_id = 1133016, name = "GROUP_LOAD_133016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_133016", action = "action_EVENT_GROUP_LOAD_133016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "star1", value = 0, no_refresh = true },
	{ config_id = 2, name = "star2", value = 0, no_refresh = true },
	{ config_id = 3, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 133015, gadget_id = 70310130, pos = { x = -723.360, y = 231.911, z = -37.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
	},
	triggers = {
		{ config_id = 1133007, name = "GADGET_STATE_CHANGE_133007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_133007", action = "action_EVENT_GADGET_STATE_CHANGE_133007", trigger_count = 0 },
		{ config_id = 1133008, name = "GADGET_STATE_CHANGE_133008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_133008", action = "action_EVENT_GADGET_STATE_CHANGE_133008", trigger_count = 0 },
		{ config_id = 1133009, name = "SELECT_OPTION_133009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_133009", action = "action_EVENT_SELECT_OPTION_133009", trigger_count = 0 },
		{ config_id = 1133010, name = "SELECT_OPTION_133010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_133010", action = "action_EVENT_SELECT_OPTION_133010", trigger_count = 0 },
		{ config_id = 1133012, name = "GROUP_LOAD_133012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_133012", action = "action_EVENT_GROUP_LOAD_133012", trigger_count = 0 }
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
		gadgets = { 133001, 133002, 133003, 133004 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_133005", "VARIABLE_CHANGE_133006", "VARIABLE_CHANGE_133011", "VARIABLE_CHANGE_133013", "GROUP_LOAD_133014", "GROUP_LOAD_133016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_133005(context, evt)
	-- 将本组内变量名为 "star1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "star2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "reverse" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reverse", 1, 199003134) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "reverse" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reverse", 1, 199003135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_133006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"star1"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "star1", 199003133) ~= 1 then
			return false
	end
	
	-- 判断变量"star2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "star2", 199003133) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_133006(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 133001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"reverse"的时间轴
	ScriptLib.EndTimeAxis(context, "reverse")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003134, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003135, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 133004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_133011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为1
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_133011(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-720,y=231,z=-36}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111350, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_133013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为0
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 199003133, 133001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_133013(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-720,y=231,z=-36}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111351, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_133014(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 199003133) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_133014(context, evt)
	-- 将configid为 133001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003134, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 199003135, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 133004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_133016(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 199003133, 133001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_133016(context, evt)
	-- 将本组内变量名为 "star1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "star2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "star2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "reverse" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reverse", 0, 199003134) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "reverse" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reverse", 0, 199003135) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_8/TimeReverser"