-- 基础信息
local base_info = {
	group_id = 199003068
}

-- Trigger变量
local defs = {
	group_id = 199003068,
	gadget_riddle_hint = 68021,
	gadget_riddle_1  = 68002,
	gadget_riddle_2 = 68003,
	gadget_riddle_3 = 68004,
	gadget_riddle_4 = 68005,
	gadget_chest = 68019,
	reverse_time = 20
}

-- DEFS_MISCS
function GadgetStateSwitcher(context,gadget_id,state)

				if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, gadget_id)  == state[1] then 
					ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_id, state[2])
				elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, gadget_id)  == state[2] then 
					ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, gadget_id, state[1])
				end 
			
			end

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
	[68001] = { config_id = 68001, gadget_id = 70310390, pos = { x = -723.828, y = 211.654, z = -39.623 }, rot = { x = 0.000, y = 281.992, z = 0.000 }, level = 20, state = GadgetState.GearStop, persistent = true, area_id = 403 },
	[68002] = { config_id = 68002, gadget_id = 70310011, pos = { x = -706.632, y = 211.307, z = -31.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[68003] = { config_id = 68003, gadget_id = 70310011, pos = { x = -726.305, y = 211.307, z = -32.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[68004] = { config_id = 68004, gadget_id = 70310011, pos = { x = -714.913, y = 211.981, z = -46.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[68005] = { config_id = 68005, gadget_id = 70310011, pos = { x = -730.568, y = 211.307, z = -41.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[68012] = { config_id = 68012, gadget_id = 70350006, pos = { x = -718.707, y = 220.411, z = -25.631 }, rot = { x = 90.000, y = 130.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[68013] = { config_id = 68013, gadget_id = 70360170, pos = { x = -724.133, y = 217.940, z = -53.412 }, rot = { x = 85.518, y = 277.583, z = 283.454 }, level = 20, persistent = true, mark_flag = 1, worktop_config = { init_options = { 7 } }, area_id = 403 },
	[68014] = { config_id = 68014, gadget_id = 70360170, pos = { x = -709.268, y = 213.925, z = -13.298 }, rot = { x = 89.497, y = 180.819, z = 315.032 }, level = 20, persistent = true, mark_flag = 1, worktop_config = { init_options = { 7 } }, area_id = 403 },
	[68017] = { config_id = 68017, gadget_id = 70310391, pos = { x = -710.787, y = 211.854, z = -40.799 }, rot = { x = 0.000, y = 38.876, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[68018] = { config_id = 68018, gadget_id = 70310391, pos = { x = -726.482, y = 211.566, z = -49.339 }, rot = { x = 0.000, y = 204.855, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
	[68019] = { config_id = 68019, gadget_id = 70211012, pos = { x = -720.463, y = 211.307, z = -35.200 }, rot = { x = 0.000, y = 287.334, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 1 }, area_id = 403 },
	[68021] = { config_id = 68021, gadget_id = 70310475, pos = { x = -723.805, y = 211.184, z = -39.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 拉杆机关加open
	{ config_id = 1068006, name = "GADGET_STATE_CHANGE_68006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68006", action = "action_EVENT_GADGET_STATE_CHANGE_68006", trigger_count = 0 },
	-- 拉杆机关加open2
	{ config_id = 1068020, name = "GADGET_STATE_CHANGE_68020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68020", action = "action_EVENT_GADGET_STATE_CHANGE_68020", trigger_count = 0 },
	-- 火把迷阵
	{ config_id = 1068022, name = "GADGET_STATE_CHANGE_68022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68022", action = "action_EVENT_GADGET_STATE_CHANGE_68022", trigger_count = 0 },
	-- 火把迷阵解
	{ config_id = 1068023, name = "VARIABLE_CHANGE_68023", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_68023", action = "action_EVENT_VARIABLE_CHANGE_68023", trigger_count = 0 },
	-- 拉杆机关1
	{ config_id = 1068028, name = "SELECT_OPTION_68028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_68028", action = "action_EVENT_SELECT_OPTION_68028", trigger_count = 0 },
	-- 拉杆机关2
	{ config_id = 1068029, name = "SELECT_OPTION_68029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_68029", action = "action_EVENT_SELECT_OPTION_68029", trigger_count = 0 },
	-- 回溯重置变量
	{ config_id = 1068031, name = "TIME_AXIS_PASS_68031", event = EventType.EVENT_TIME_AXIS_PASS, source = "reverse", condition = "", action = "action_EVENT_TIME_AXIS_PASS_68031", trigger_count = 0 },
	-- 火把迷阵解
	{ config_id = 1068032, name = "GADGET_STATE_CHANGE_68032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68032", action = "action_EVENT_GADGET_STATE_CHANGE_68032", trigger_count = 0 },
	-- 开启回溯播reminder
	{ config_id = 1068034, name = "VARIABLE_CHANGE_68034", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_68034", action = "action_EVENT_VARIABLE_CHANGE_68034", trigger_count = 0 },
	-- 回溯完成播reminder
	{ config_id = 1068035, name = "VARIABLE_CHANGE_68035", event = EventType.EVENT_VARIABLE_CHANGE, source = "is_reverting", condition = "condition_EVENT_VARIABLE_CHANGE_68035", action = "action_EVENT_VARIABLE_CHANGE_68035", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "open1", value = 0, no_refresh = true },
	{ config_id = 3, name = "open2", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 68007, gadget_id = 70310392, pos = { x = -734.963, y = 211.307, z = -23.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
		{ config_id = 68008, gadget_id = 70310392, pos = { x = -734.019, y = 211.307, z = -22.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
		{ config_id = 68009, gadget_id = 70310392, pos = { x = -729.714, y = 211.307, z = -18.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
		{ config_id = 68010, gadget_id = 70310392, pos = { x = -727.271, y = 211.307, z = -16.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
		{ config_id = 68011, gadget_id = 70310392, pos = { x = -737.235, y = 211.307, z = -27.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
		{ config_id = 68015, gadget_id = 70310392, pos = { x = -724.967, y = 211.307, z = -20.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 },
		{ config_id = 68016, gadget_id = 70310392, pos = { x = -724.827, y = 211.307, z = -26.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, mark_flag = 1, area_id = 403 }
	},
	triggers = {
		{ config_id = 1068024, name = "GADGET_STATE_CHANGE_68024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68024", action = "action_EVENT_GADGET_STATE_CHANGE_68024", trigger_count = 0 },
		{ config_id = 1068025, name = "GADGET_STATE_CHANGE_68025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68025", action = "action_EVENT_GADGET_STATE_CHANGE_68025", trigger_count = 0 },
		{ config_id = 1068026, name = "SELECT_OPTION_68026", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_68026", action = "action_EVENT_SELECT_OPTION_68026", trigger_count = 0 },
		{ config_id = 1068027, name = "SELECT_OPTION_68027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_68027", action = "action_EVENT_SELECT_OPTION_68027", trigger_count = 0 },
		{ config_id = 1068030, name = "VARIABLE_CHANGE_68030", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_68030", action = "action_EVENT_VARIABLE_CHANGE_68030", trigger_count = 0 },
		{ config_id = 1068033, name = "GROUP_LOAD_68033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_68033", trigger_count = 0 }
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
		gadgets = { 68001, 68002, 68003, 68004, 68005, 68012, 68013, 68014, 68017, 68018, 68019, 68021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_68006", "GADGET_STATE_CHANGE_68020", "GADGET_STATE_CHANGE_68022", "VARIABLE_CHANGE_68023", "SELECT_OPTION_68028", "SELECT_OPTION_68029", "TIME_AXIS_PASS_68031", "GADGET_STATE_CHANGE_68032", "VARIABLE_CHANGE_68034", "VARIABLE_CHANGE_68035" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68006(context, evt)
	if 68013 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68006(context, evt)
	ScriptLib.SetGroupVariableValue(context, "open1", 1)
	if ScriptLib.GetGroupVariableValueByGroup(context, "open2", 199003068) == 1
	then
	ScriptLib.SetGadgetStateByConfigId(context, 68012, GadgetState.GearStart)
	local pos = {x=-718, y=220, z=-25}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68020(context, evt)
	if 68014 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68020(context, evt)
	ScriptLib.SetGroupVariableValue(context, "open2", 1)
	if ScriptLib.GetGroupVariableValueByGroup(context, "open1", 199003068) == 1
	then
	ScriptLib.SetGadgetStateByConfigId(context, 68012, GadgetState.GearStart)
	local pos = {x=-718, y=220, z=-25}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68022(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68022(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_68023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_68023(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	
	end
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_68028(context, evt)
	-- 判断是gadgetid 68013 option_id 7
	if 68013 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_68028(context, evt)
	GadgetStateSwitcher(context,68013,{0,201})
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_68029(context, evt)
	-- 判断是gadgetid 68014 option_id 7
	if 68014 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_68029(context, evt)
	GadgetStateSwitcher(context,68014,{0,201})
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_68031(context, evt)
	-- 变量"open1"赋值为0
	ScriptLib.SetGroupVariableValue(context, "open1", 0)
	
	-- 变量"open2"赋值为0
	ScriptLib.SetGroupVariableValue(context, "open2", 0)
	
	-- 将configid为 68021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68032(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003068, 68002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003068, 68003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003068, 68004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 199003068, 68005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68032(context, evt)
	-- 将configid为 68019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 68001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止标识为"reverse"的时间轴
	ScriptLib.EndTimeAxis(context, "reverse")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_68034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为1
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_68034(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-718,y=211,z=-39}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111350, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_68035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_reverting"为0
	if ScriptLib.GetGroupVariableValue(context, "is_reverting") ~= 0 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 199003068, 68001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_68035(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-718,y=211,z=-39}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111351, pos, 30) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

require "V2_8/TimeReverser"