-- 基础信息
local base_info = {
	group_id = 133008010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10002, monster_id = 23010301, pos = { x = 1324.820, y = 275.107, z = -789.045 }, rot = { x = 0.000, y = 220.848, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 10004, monster_id = 23010101, pos = { x = 1323.951, y = 275.109, z = -786.721 }, rot = { x = 0.000, y = 227.000, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 10005, monster_id = 23010101, pos = { x = 1322.006, y = 275.021, z = -786.352 }, rot = { x = 0.000, y = 220.848, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 10006, monster_id = 23010401, pos = { x = 1324.988, y = 275.543, z = -786.871 }, rot = { x = 0.000, y = 220.848, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 10007, monster_id = 23010401, pos = { x = 1327.539, y = 276.540, z = -789.469 }, rot = { x = 0.000, y = 220.848, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 10009, monster_id = 23010401, pos = { x = 1327.047, y = 277.114, z = -784.662 }, rot = { x = 0.000, y = 220.848, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 10010, monster_id = 23010601, pos = { x = 1328.668, y = 277.473, z = -787.207 }, rot = { x = 0.000, y = 220.848, z = 0.000 }, level = 30, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 10011, monster_id = 23010301, pos = { x = 1323.085, y = 274.408, z = -789.732 }, rot = { x = 0.000, y = 220.848, z = 0.000 }, level = 30, drop_id = 1000100, isElite = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10014, gadget_id = 70360001, pos = { x = 1308.929, y = 275.221, z = -801.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010001, name = "CHALLENGE_SUCCESS_10001", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10001", tag = "180" },
	{ config_id = 1010003, name = "QUEST_START_10003", event = EventType.EVENT_QUEST_START, source = "7010228", condition = "", action = "action_EVENT_QUEST_START_10003", trigger_count = 0 },
	{ config_id = 1010012, name = "ANY_MONSTER_DIE_10012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10012", action = "action_EVENT_ANY_MONSTER_DIE_10012" },
	{ config_id = 1010013, name = "ANY_MONSTER_DIE_10013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10013", action = "action_EVENT_ANY_MONSTER_DIE_10013" },
	{ config_id = 1010015, name = "TIMER_EVENT_10015", event = EventType.EVENT_TIMER_EVENT, source = "321", condition = "", action = "action_EVENT_TIMER_EVENT_10015", trigger_count = 0 },
	{ config_id = 1010016, name = "CHALLENGE_FAIL_10016", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10016", trigger_count = 0, tag = "180" }
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
		gadgets = { 10014 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_10001", "QUEST_START_10003", "TIMER_EVENT_10015", "CHALLENGE_FAIL_10016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 10002, 10004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 10005, 10006, 10007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 10009, 10010, 10011 },
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
function action_EVENT_CHALLENGE_SUCCESS_10001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133008010") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（1296，279，-805），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1296, y=279, z=-805}
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
function action_EVENT_QUEST_START_10003(context, evt)
	-- 延迟2秒后,向groupId为：133008010的对象,请求一次调用,并将string参数："321" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008010, "321", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008010, 3)
	
	-- 调用提示id为 400002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10013(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008010, 4)
	
	-- 调用提示id为 400003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10015(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为208的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 208, 133008010, 8, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008010, 2)
	
	-- 调用提示id为 400001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300801002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008348, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end