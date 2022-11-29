-- 基础信息
local base_info = {
	group_id = 133107931
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 931001, monster_id = 21020501, pos = { x = -795.619, y = 232.402, z = 440.752 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 931002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -795.619, y = 232.402, z = 440.752 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1931002, name = "ENTER_REGION_931002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_931002", action = "action_EVENT_ENTER_REGION_931002" },
	{ config_id = 1931003, name = "TIMER_EVENT_931003", event = EventType.EVENT_TIMER_EVENT, source = "waitTillCamera", condition = "", action = "action_EVENT_TIMER_EVENT_931003" },
	{ config_id = 1931004, name = "SPECIFIC_MONSTER_HP_CHANGE_931004", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "931001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931004", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931004" },
	{ config_id = 1931005, name = "SPECIFIC_MONSTER_HP_CHANGE_931005", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "931001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931005", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931005" },
	{ config_id = 1931006, name = "SPECIFIC_MONSTER_HP_CHANGE_931006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "931001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931006" },
	{ config_id = 1931007, name = "ANY_MONSTER_DIE_931007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_931007", action = "action_EVENT_ANY_MONSTER_DIE_931007" },
	{ config_id = 1931008, name = "TIMER_EVENT_931008", event = EventType.EVENT_TIMER_EVENT, source = "waitTillReminder", condition = "", action = "action_EVENT_TIMER_EVENT_931008" },
	{ config_id = 1931009, name = "QUEST_START_931009", event = EventType.EVENT_QUEST_START, source = "7180302", condition = "", action = "action_EVENT_QUEST_START_931009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasKilledMonster", value = 0, no_refresh = true }
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
		monsters = { 931001 },
		gadgets = { },
		regions = { 931002 },
		triggers = { "ENTER_REGION_931002", "TIMER_EVENT_931003", "SPECIFIC_MONSTER_HP_CHANGE_931004", "SPECIFIC_MONSTER_HP_CHANGE_931005", "SPECIFIC_MONSTER_HP_CHANGE_931006", "ANY_MONSTER_DIE_931007", "TIMER_EVENT_931008", "QUEST_START_931009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_931002(context, evt)
	if evt.param1 ~= 931002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasKilledMonster"为0
	if ScriptLib.GetGroupVariableValue(context, "hasKilledMonster") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_931002(context, evt)
	-- 触发镜头注目，注目位置为坐标（-795，232，440），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-795, y=232, z=440}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 延迟2秒后,向groupId为：133107931的对象,请求一次调用,并将string参数："waitTillCamera" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107931, "waitTillCamera", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_931003(context, evt)
	-- 调用提示id为 31070201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31070201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7180302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931004(context, evt)
	--[[判断指定configid的怪物的血量小于%80时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 80 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931004(context, evt)
	-- 调用提示id为 31070202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31070202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931005(context, evt)
	--[[判断指定configid的怪物的血量小于%60时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 60 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931005(context, evt)
	-- 调用提示id为 31070202 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31070202) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931006(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_931006(context, evt)
	-- 调用提示id为 31070203 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31070203) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_931007(context, evt)
	if 931001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_931007(context, evt)
	-- 调用提示id为 31070206 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31070206) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟3秒后,向groupId为：133107931的对象,请求一次调用,并将string参数："waitTillReminder" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107931, "waitTillReminder", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "hasKilledMonster" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasKilledMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_931008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "WQ7180303") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_931009(context, evt)
	-- 将本组内变量名为 "hasKilledMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasKilledMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end