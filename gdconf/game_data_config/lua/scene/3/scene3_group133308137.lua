-- 基础信息
local base_info = {
	group_id = 133308137
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 大血条怪
	{ config_id = 137001, monster_id = 25310301, pos = { x = -1539.051, y = 34.337, z = 5062.622 }, rot = { x = 0.000, y = 256.608, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9001, title_id = 10147, special_name_id = 10196, area_id = 32 },
	{ config_id = 137002, monster_id = 25210101, pos = { x = -1538.081, y = 34.292, z = 5065.044 }, rot = { x = 0.000, y = 254.274, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 32 },
	{ config_id = 137003, monster_id = 25210502, pos = { x = -1553.858, y = 34.079, z = 5076.971 }, rot = { x = 0.000, y = 291.076, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9001, area_id = 32 },
	{ config_id = 137008, monster_id = 25210502, pos = { x = -1556.667, y = 35.895, z = 5052.365 }, rot = { x = 0.000, y = 291.076, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9001, area_id = 32 }
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
	{ config_id = 1137004, name = "GROUP_LOAD_137004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "" },
	{ config_id = 1137005, name = "MONSTER_BATTLE_137005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_137005" },
	{ config_id = 1137006, name = "SPECIFIC_MONSTER_HP_CHANGE_137006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "137001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_137006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_137006" },
	{ config_id = 1137007, name = "ANY_MONSTER_DIE_137007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_137007", action = "action_EVENT_ANY_MONSTER_DIE_137007" }
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
		monsters = { 137001, 137002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_137005", "SPECIFIC_MONSTER_HP_CHANGE_137006", "ANY_MONSTER_DIE_137007" },
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_137005(context, evt)
	TLA_active_reminder_ui(context, evt, 1000140028)
	
	ScriptLib.AutoMonsterTide(context, 1, 133308137, {137003,137008}, 4, 1, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_137006(context, evt)
	--[[判断指定configid的怪物的血量小于%10时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 10 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_137006(context, evt)
	-- 调用提示id为 1000140030 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140030) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_137007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_137007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7322522") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1000140033 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end