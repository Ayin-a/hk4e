-- 基础信息
local base_info = {
	group_id = 133106450
}

-- Trigger变量
local defs = {
	gadget_11 = 450001,
	gadget_12 = 450002,
	gadget_13 = 450003,
	gadget_14 = 450004,
	gadget_15 = 450005,
	gadget_21 = 450006,
	gadget_22 = 450007,
	gadget_23 = 450008,
	gadget_24 = 450009,
	gadget_25 = 450010,
	gadget_31 = 450011,
	gadget_32 = 450012,
	gadget_33 = 450013,
	gadget_34 = 450014,
	gadget_35 = 450015,
	gadget_41 = 450016,
	gadget_42 = 450017,
	gadget_43 = 450018,
	gadget_44 = 450019,
	gadget_45 = 450020,
	gadget_51 = 450021,
	gadget_52 = 450022,
	gadget_53 = 450023,
	gadget_54 = 450024,
	gadget_55 = 450025,
	treasurebox_1 = 450026,
	treasurebox_2 = 450027,
	treasurebox_3 = 450028
}

-- DEFS_MISCS
digMaps={
        [1]={
                {0,0,0,1,0},
                {0,0,1,1,0},
                {0,0,1,2,1},
                {0,0,0,1,0},
                {1,0,0,0,0},
        },
        [2]={
                {0,0,0,0,0},
                {0,0,1,0,0},
                {0,1,2,1,0},
                {0,0,1,1,1},
                {0,0,0,0,0},
        },
        [3]={
                {1,0,0,0,0},
                {0,0,1,0,0},
                {1,0,0,0,0},
                {0,0,1,0,0},
                {1,1,2,1,0},
        },
        [4]={
                {0,0,0,0,0},
                {0,1,1,1,0},
                {0,0,0,1,1},
                {0,0,0,1,2},
                {0,0,0,0,1},
        },
        [5]={
                {0,0,1,0,0},
                {0,0,1,0,0},
                {0,1,1,0,0},
                {0,1,2,1,0},
                {0,0,1,0,0},
        },
        [6]={
                {2,1,0,0,0},
                {1,1,0,0,0},
                {0,0,1,0,1},
                {0,0,0,0,0},
                {0,0,1,0,0},
        },
        [7]={
                {0,0,0,0,0},
                {0,0,1,0,1},
                {0,0,0,0,1},
                {0,0,1,1,2},
                {0,0,0,0,1},
        },
        [8]={
                {0,0,0,0,1},
                {0,1,0,0,0},
                {1,2,1,0,0},
                {0,1,1,1,0},
                {0,0,0,0,0},
        },
        [9]={
                {0,0,0,0,0},
                {0,1,0,0,0},
                {1,1,0,0,1},
                {1,2,1,0,0},
                {0,1,1,0,0},
        },
        [10]={
                {0,0,0,0,0},
                {0,1,1,1,0},
                {0,1,2,1,0},
                {0,0,1,1,0},
                {0,0,0,0,0},
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
	{ config_id = 450001, gadget_id = 70290304, pos = { x = -846.118, y = 183.460, z = 2002.355 }, rot = { x = 1.310, y = 14.113, z = 354.806 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450002, gadget_id = 70290304, pos = { x = -842.692, y = 183.133, z = 2005.641 }, rot = { x = 0.462, y = 14.327, z = 354.590 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450003, gadget_id = 70290304, pos = { x = -838.525, y = 182.860, z = 2008.847 }, rot = { x = 359.417, y = 14.858, z = 355.225 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450004, gadget_id = 70290304, pos = { x = -833.124, y = 182.607, z = 2012.810 }, rot = { x = 359.218, y = 15.302, z = 356.080 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450005, gadget_id = 70290304, pos = { x = -828.429, y = 182.052, z = 2016.899 }, rot = { x = 4.248, y = 16.759, z = 359.253 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450006, gadget_id = 70290304, pos = { x = -843.043, y = 183.135, z = 1999.304 }, rot = { x = 2.043, y = 15.285, z = 355.927 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450007, gadget_id = 70290304, pos = { x = -840.018, y = 182.916, z = 2002.172 }, rot = { x = 1.652, y = 17.277, z = 357.703 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450008, gadget_id = 70290304, pos = { x = -835.411, y = 182.674, z = 2005.811 }, rot = { x = 1.610, y = 16.226, z = 357.673 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450009, gadget_id = 70290304, pos = { x = -830.748, y = 182.441, z = 2009.233 }, rot = { x = 1.119, y = 17.147, z = 359.409 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450010, gadget_id = 70290304, pos = { x = -826.487, y = 182.180, z = 2012.213 }, rot = { x = 3.343, y = 16.779, z = 358.208 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450011, gadget_id = 70290304, pos = { x = -840.011, y = 183.101, z = 1996.140 }, rot = { x = 2.241, y = 17.288, z = 358.824 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450012, gadget_id = 70290304, pos = { x = -836.627, y = 182.898, z = 1999.099 }, rot = { x = 1.610, y = 16.226, z = 357.673 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450013, gadget_id = 70290304, pos = { x = -832.588, y = 182.657, z = 2002.464 }, rot = { x = 1.610, y = 16.226, z = 357.673 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450014, gadget_id = 70290304, pos = { x = -828.392, y = 182.460, z = 2005.696 }, rot = { x = 1.119, y = 17.147, z = 359.409 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450015, gadget_id = 70290304, pos = { x = -823.969, y = 182.178, z = 2008.613 }, rot = { x = 2.478, y = 16.499, z = 357.936 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450016, gadget_id = 70290304, pos = { x = -836.923, y = 183.003, z = 1993.312 }, rot = { x = 1.610, y = 16.226, z = 357.673 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450017, gadget_id = 70290304, pos = { x = -833.623, y = 182.833, z = 1996.324 }, rot = { x = 2.234, y = 16.970, z = 358.811 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450018, gadget_id = 70290304, pos = { x = -830.022, y = 182.616, z = 1999.353 }, rot = { x = 1.610, y = 16.226, z = 357.673 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450019, gadget_id = 70290304, pos = { x = -826.228, y = 182.393, z = 2002.047 }, rot = { x = 1.387, y = 17.293, z = 358.557 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450020, gadget_id = 70290304, pos = { x = -821.992, y = 182.138, z = 2004.965 }, rot = { x = 4.992, y = 17.134, z = 355.944 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450021, gadget_id = 70290304, pos = { x = -834.088, y = 182.922, z = 1990.333 }, rot = { x = 0.738, y = 15.959, z = 357.420 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450022, gadget_id = 70290304, pos = { x = -830.988, y = 182.751, z = 1993.371 }, rot = { x = 0.078, y = 15.245, z = 356.314 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450023, gadget_id = 70290304, pos = { x = -827.376, y = 182.470, z = 1996.497 }, rot = { x = 0.277, y = 14.788, z = 355.453 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450024, gadget_id = 70290304, pos = { x = -823.814, y = 182.275, z = 1999.460 }, rot = { x = 359.865, y = 15.698, z = 357.174 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 450025, gadget_id = 70290304, pos = { x = -820.149, y = 182.012, z = 2002.391 }, rot = { x = 5.953, y = 15.337, z = 355.178 }, level = 36, persistent = true, area_id = 19 },
	-- 这三个宝箱不能勾persistent，勾了之后会让他们创建的位置跟预期不符
	{ config_id = 450026, gadget_id = 70211101, pos = { x = -828.740, y = 182.464, z = 2000.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	-- 这三个宝箱不能勾persistent，勾了之后会让他们创建的位置跟预期不符
	{ config_id = 450027, gadget_id = 70211111, pos = { x = -830.763, y = 182.516, z = 2004.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	-- 这三个宝箱不能勾persistent，勾了之后会让他们创建的位置跟预期不符
	{ config_id = 450028, gadget_id = 70211121, pos = { x = -833.798, y = 182.591, z = 2006.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜高级璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1450029, name = "QUEST_FINISH_450029", event = EventType.EVENT_QUEST_FINISH, source = "7107802", condition = "", action = "action_EVENT_QUEST_FINISH_450029", trigger_count = 0 },
	{ config_id = 1450030, name = "GADGET_STATE_CHANGE_450030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_450030", trigger_count = 0 },
	{ config_id = 1450031, name = "VARIABLE_CHANGE_450031", event = EventType.EVENT_VARIABLE_CHANGE, source = "FailTrigger", condition = "", action = "action_EVENT_VARIABLE_CHANGE_450031", trigger_count = 0 },
	-- 当三个宝箱都挖完后，寄一个变量
	{ config_id = 1450032, name = "QUEST_FINISH_450032", event = EventType.EVENT_QUEST_FINISH, source = "7107807", condition = "", action = "action_EVENT_QUEST_FINISH_450032", trigger_count = 0 },
	-- 如果load时三个宝箱都挖完了，就刷到空suite 3
	{ config_id = 1450033, name = "GROUP_LOAD_450033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_450033", action = "action_EVENT_GROUP_LOAD_450033", trigger_count = 0 },
	-- 当新一个自然天开始时，重置一下整个玩法到不能挖的状态
	{ config_id = 1450034, name = "QUEST_FINISH_450034", event = EventType.EVENT_QUEST_FINISH, source = "7107806", condition = "", action = "action_EVENT_QUEST_FINISH_450034", trigger_count = 0 },
	-- 低等级宝箱打开
	{ config_id = 1450035, name = "GADGET_STATE_CHANGE_450035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_450035", action = "action_EVENT_GADGET_STATE_CHANGE_450035" },
	-- 中等级宝箱打开
	{ config_id = 1450036, name = "GADGET_STATE_CHANGE_450036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_450036", action = "action_EVENT_GADGET_STATE_CHANGE_450036" },
	-- 高等级宝箱打开
	{ config_id = 1450037, name = "GADGET_STATE_CHANGE_450037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_450037", action = "action_EVENT_GADGET_STATE_CHANGE_450037" },
	-- 低等级宝箱打开的保底
	{ config_id = 1450038, name = "GROUP_LOAD_450038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_450038", action = "action_EVENT_GROUP_LOAD_450038", trigger_count = 0 },
	-- 中等级宝箱打开的保底
	{ config_id = 1450039, name = "GROUP_LOAD_450039", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_450039", action = "action_EVENT_GROUP_LOAD_450039", trigger_count = 0 },
	-- 低等级宝箱打开的保底
	{ config_id = 1450040, name = "GROUP_LOAD_450040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_450040", action = "action_EVENT_GROUP_LOAD_450040", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "questFinish", value = 0, no_refresh = true },
	{ config_id = 2, name = "lowChestOpened", value = 0, no_refresh = true },
	{ config_id = 3, name = "mediumChestOpened", value = 0, no_refresh = true },
	{ config_id = 4, name = "highChestOpened", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 3,
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
		gadgets = { 450001, 450002, 450003, 450004, 450005, 450006, 450007, 450008, 450009, 450010, 450011, 450012, 450013, 450014, 450015, 450016, 450017, 450018, 450019, 450020, 450021, 450022, 450023, 450024, 450025 },
		regions = { },
		triggers = { "QUEST_FINISH_450029", "GADGET_STATE_CHANGE_450030", "VARIABLE_CHANGE_450031", "QUEST_FINISH_450032", "GROUP_LOAD_450033", "QUEST_FINISH_450034", "GADGET_STATE_CHANGE_450035", "GADGET_STATE_CHANGE_450036", "GADGET_STATE_CHANGE_450037", "GROUP_LOAD_450038", "GROUP_LOAD_450039", "GROUP_LOAD_450040" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 这个suite是给WQ用的，WQ开始时把常驻玩法刷到空suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_450029", "GADGET_STATE_CHANGE_450030", "VARIABLE_CHANGE_450031", "QUEST_FINISH_450032", "GROUP_LOAD_450033", "QUEST_FINISH_450034", "GADGET_STATE_CHANGE_450035", "GADGET_STATE_CHANGE_450036", "GADGET_STATE_CHANGE_450037", "GROUP_LOAD_450038", "GROUP_LOAD_450039", "GROUP_LOAD_450040" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_450029(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106450, 1)
	
	-- 针对当前group内变量名为 "PlayStartTrigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "PlayStartTrigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 调用提示id为 310645001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 310645001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-834.0877，182.9215，1990.333），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-834.0877, y=182.9215, z=1990.333}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_450030(context, evt)
	if evt.param2 == 450026 or evt.param2 == 450027 or evt.param2 == 450028 then
		if evt.param1 == 102 then
			ScriptLib.AddQuestProgress(context, "71078got_tresure")
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_450031(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "71078got_bomb") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_450032(context, evt)
	-- 将本组内变量名为 "questFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_450033(context, evt)
	-- 判断变量"questFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "questFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_450033(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106450, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_450034(context, evt)
	-- 针对当前group内变量名为 "PlayResetTrigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "PlayResetTrigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_450035(context, evt)
	if 450026 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_450035(context, evt)
	-- 将本组内变量名为 "lowChestOpened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lowChestOpened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "71078lowChestOpened") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_450036(context, evt)
	if 450027 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_450036(context, evt)
	-- 将本组内变量名为 "mediumChestOpened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "mediumChestOpened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "71078mediumChestOpened") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_450037(context, evt)
	if 450028 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_450037(context, evt)
	-- 将本组内变量名为 "highChestOpened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "highChestOpened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "71078highChestOpened") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_450038(context, evt)
	-- 判断变量"lowChestOpened"为1
	if ScriptLib.GetGroupVariableValue(context, "lowChestOpened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_450038(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "71078lowChestOpened") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_450039(context, evt)
	-- 判断变量"mediumChestOpened"为1
	if ScriptLib.GetGroupVariableValue(context, "mediumChestOpened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_450039(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "71078mediumChestOpened") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_450040(context, evt)
	-- 判断变量"highChestOpened"为1
	if ScriptLib.GetGroupVariableValue(context, "highChestOpened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_450040(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "71078highChestOpened") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V2_6/DigPlay"