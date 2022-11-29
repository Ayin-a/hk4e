-- 基础信息
local base_info = {
	group_id = 133106445
}

-- Trigger变量
local defs = {
	gadget_11 = 445001,
	gadget_12 = 445002,
	gadget_13 = 445003,
	gadget_14 = 445004,
	gadget_15 = 445005,
	gadget_21 = 445006,
	gadget_22 = 445007,
	gadget_23 = 445008,
	gadget_24 = 445009,
	gadget_25 = 445010,
	gadget_31 = 445011,
	gadget_32 = 445012,
	gadget_33 = 445013,
	gadget_34 = 445014,
	gadget_35 = 445015,
	gadget_41 = 445016,
	gadget_42 = 445017,
	gadget_43 = 445018,
	gadget_44 = 445019,
	gadget_45 = 445020,
	gadget_51 = 445021,
	gadget_52 = 445022,
	gadget_53 = 445023,
	gadget_54 = 445024,
	gadget_55 = 445025,
	treasurebox_1 = 0,
	treasurebox_2 = 0,
	treasurebox_3 = 0,
	is_quest_group = 1,
	reminder_id = 310644510
}

-- DEFS_MISCS
digMaps={
        [1]={
                {0,0,0,1,0},
                {0,0,1,1,0},
                {0,0,1,0,1},
                {0,0,0,1,0},
                {1,0,0,0,0},
        },
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
	{ config_id = 445001, gadget_id = 70290304, pos = { x = -846.118, y = 183.460, z = 2002.356 }, rot = { x = 354.651, y = 267.098, z = 0.271 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445002, gadget_id = 70290304, pos = { x = -842.692, y = 183.133, z = 2005.642 }, rot = { x = 354.696, y = 267.057, z = 1.165 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445003, gadget_id = 70290304, pos = { x = -838.524, y = 182.860, z = 2008.847 }, rot = { x = 355.629, y = 267.069, z = 2.011 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445004, gadget_id = 70290304, pos = { x = -833.122, y = 182.607, z = 2012.812 }, rot = { x = 356.519, y = 267.079, z = 1.966 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445005, gadget_id = 70290304, pos = { x = -828.429, y = 182.052, z = 2016.900 }, rot = { x = 356.044, y = 183.250, z = 1.718 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445006, gadget_id = 70290304, pos = { x = -843.043, y = 183.135, z = 1999.306 }, rot = { x = 355.494, y = 267.137, z = 359.332 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445007, gadget_id = 70290304, pos = { x = -840.018, y = 182.916, z = 2002.172 }, rot = { x = 357.275, y = 267.129, z = 359.241 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445008, gadget_id = 70290304, pos = { x = -835.412, y = 182.674, z = 2005.812 }, rot = { x = 357.275, y = 267.129, z = 359.241 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445009, gadget_id = 70290304, pos = { x = -830.747, y = 182.441, z = 2009.235 }, rot = { x = 359.061, y = 267.118, z = 359.151 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445010, gadget_id = 70290304, pos = { x = -826.487, y = 182.180, z = 2012.216 }, rot = { x = 357.187, y = 267.173, z = 357.455 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445011, gadget_id = 70290304, pos = { x = -840.011, y = 183.101, z = 1996.140 }, rot = { x = 358.123, y = 267.139, z = 358.302 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445012, gadget_id = 70290304, pos = { x = -836.626, y = 182.898, z = 1999.100 }, rot = { x = 357.275, y = 267.129, z = 359.241 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445013, gadget_id = 70290304, pos = { x = -832.588, y = 182.656, z = 2002.465 }, rot = { x = 357.275, y = 267.129, z = 359.241 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445014, gadget_id = 70290304, pos = { x = -828.392, y = 182.460, z = 2005.699 }, rot = { x = 359.061, y = 267.118, z = 359.151 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445015, gadget_id = 70290304, pos = { x = -823.969, y = 182.178, z = 2008.614 }, rot = { x = 357.231, y = 267.151, z = 358.348 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445016, gadget_id = 70290304, pos = { x = -836.923, y = 183.003, z = 1993.313 }, rot = { x = 357.275, y = 267.129, z = 359.241 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445017, gadget_id = 70290304, pos = { x = -833.623, y = 182.833, z = 1996.325 }, rot = { x = 358.123, y = 267.139, z = 358.302 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445018, gadget_id = 70290304, pos = { x = -830.023, y = 182.616, z = 1999.354 }, rot = { x = 357.275, y = 267.129, z = 359.241 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445019, gadget_id = 70290304, pos = { x = -826.228, y = 182.393, z = 2002.049 }, rot = { x = 358.167, y = 267.124, z = 359.196 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445020, gadget_id = 70290304, pos = { x = -821.992, y = 182.138, z = 2004.966 }, rot = { x = 354.481, y = 267.270, z = 356.698 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445021, gadget_id = 70290304, pos = { x = -834.088, y = 182.922, z = 1990.333 }, rot = { x = 357.320, y = 267.108, z = 0.135 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445022, gadget_id = 70290304, pos = { x = -830.988, y = 182.751, z = 1993.371 }, rot = { x = 356.474, y = 267.078, z = 1.075 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445023, gadget_id = 70290304, pos = { x = -827.375, y = 182.470, z = 1996.497 }, rot = { x = 355.584, y = 267.068, z = 1.120 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445024, gadget_id = 70290304, pos = { x = -823.813, y = 182.275, z = 1999.461 }, rot = { x = 357.365, y = 267.087, z = 1.029 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 445025, gadget_id = 70290304, pos = { x = -820.132, y = 181.996, z = 2002.383 }, rot = { x = 353.515, y = 266.715, z = 355.923 }, level = 36, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1445026, name = "GADGET_CREATE_445026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_445026", trigger_count = 0 },
	{ config_id = 1445027, name = "SELECT_OPTION_445027", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_445027", action = "action_EVENT_SELECT_OPTION_445027", trigger_count = 0 },
	-- group被加载时开启玩法
	{ config_id = 1445028, name = "GROUP_LOAD_445028", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_445028", trigger_count = 0 },
	{ config_id = 1445029, name = "QUEST_FINISH_445029", event = EventType.EVENT_QUEST_FINISH, source = "7106307", condition = "", action = "action_EVENT_QUEST_FINISH_445029", trigger_count = 0 },
	{ config_id = 1445030, name = "QUEST_FINISH_445030", event = EventType.EVENT_QUEST_FINISH, source = "7106311", condition = "", action = "action_EVENT_QUEST_FINISH_445030" }
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
		gadgets = { 445001, 445002, 445003, 445004, 445005, 445006, 445007, 445008, 445009, 445010, 445011, 445012, 445013, 445014, 445015, 445016, 445017, 445018, 445019, 445020, 445021, 445022, 445023, 445024, 445025 },
		regions = { },
		triggers = { "SELECT_OPTION_445027", "QUEST_FINISH_445029", "QUEST_FINISH_445030" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_CREATE_445026(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_445027(context, evt)
	if 445014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_445027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7106310finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	EndGame(context)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_445028(context, evt)
	-- 针对当前group内变量名为 "PlayStartTrigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "PlayStartTrigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_445029(context, evt)
	-- 将本组内变量名为 "PlayStartTrigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "PlayStartTrigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 调用提示id为 310645001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310645001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-832.9277，182.8271，2001.316），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-832.9277, y=182.8271, z=2001.316}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_445030(context, evt)
	-- 针对当前group内变量名为 "PlayResetTrigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "PlayResetTrigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "V2_6/DigPlay"