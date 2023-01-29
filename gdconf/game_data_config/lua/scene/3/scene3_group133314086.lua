-- 基础信息
local base_info = {
	group_id = 133314086
}

-- Trigger变量
local defs = {
	point_camera = 86008,
	gadget_lookEntity = 86003,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 普通的秃鹫
	[86001] = { config_id = 86001, monster_id = 26100301, pos = { x = -199.557, y = 0.469, z = 4868.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, pose_id = 101, area_id = 32, isBlockOneoff = true },
	-- 暴怒的秃鹫
	[86003] = { config_id = 86003, monster_id = 26100301, pos = { x = -142.506, y = 28.501, z = 4822.054 }, rot = { x = 0.000, y = 318.696, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, pose_id = 101, area_id = 32, isBlockOneoff = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1086002, name = "ANY_MONSTER_DIE_86002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86002", action = "action_EVENT_ANY_MONSTER_DIE_86002" },
	{ config_id = 1086004, name = "ANY_MONSTER_DIE_86004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86004", action = "action_EVENT_ANY_MONSTER_DIE_86004" },
	-- 刷怪时reminder
	{ config_id = 1086005, name = "ANY_MONSTER_LIVE_86005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_86005", action = "action_EVENT_ANY_MONSTER_LIVE_86005" },
	-- 刷怪时reminder
	{ config_id = 1086006, name = "ANY_MONSTER_LIVE_86006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_86006", action = "action_EVENT_ANY_MONSTER_LIVE_86006" },
	-- 入战时reminder
	{ config_id = 1086007, name = "MONSTER_BATTLE_86007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_86007", action = "action_EVENT_MONSTER_BATTLE_86007" }
}

-- 点位
points = {
	-- point_camera
	[86008] = { config_id = 86008, pos = { x = -174.450, y = 6.056, z = 4857.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 32 }
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
		monsters = { 86001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86002", "ANY_MONSTER_LIVE_86005", "MONSTER_BATTLE_86007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 86003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86004", "ANY_MONSTER_LIVE_86006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 使用reminderUI
function TLA_active_reminder_ui(context, evt, reminder_id)
	-- 调用提示id为 reminder_id 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, reminder_id) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328108") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7328108") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_86005(context, evt)
	if 86001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_86005(context, evt)
	-- 调用提示id为 1000190013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000190013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_86006(context, evt)
	if 86003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_86006(context, evt)
	TLA_active_reminder_ui(context, evt, 1000190016)
	
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_86007(context, evt)
	if 86001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_86007(context, evt)
	-- 调用提示id为 1000190014 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000190014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/CameraLook"