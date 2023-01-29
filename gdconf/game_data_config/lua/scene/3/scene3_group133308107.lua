-- 基础信息
local base_info = {
	group_id = 133308107
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107001, monster_id = 25310301, pos = { x = -1575.267, y = 40.323, z = 5039.909 }, rot = { x = 0.000, y = 96.859, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 107002, monster_id = 25210502, pos = { x = -1564.099, y = 42.827, z = 5033.740 }, rot = { x = 0.000, y = 148.148, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 107003, monster_id = 25310201, pos = { x = -1563.460, y = 38.861, z = 5043.267 }, rot = { x = 0.000, y = 226.449, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 107006, monster_id = 25210502, pos = { x = -1576.937, y = 40.880, z = 5034.684 }, rot = { x = 0.000, y = 52.316, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 107007, monster_id = 25210303, pos = { x = -1577.831, y = 39.593, z = 5052.107 }, rot = { x = 0.000, y = 151.811, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
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
	{ config_id = 1107004, name = "ANY_MONSTER_DIE_107004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_107004", action = "action_EVENT_ANY_MONSTER_DIE_107004" },
	{ config_id = 1107005, name = "MONSTER_BATTLE_107005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_107005" }
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
		monsters = { 107001, 107002, 107003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_107004", "MONSTER_BATTLE_107005" },
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
function condition_EVENT_ANY_MONSTER_DIE_107004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_107004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7322521") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1000140062 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140062) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_107005(context, evt)
	ScriptLib.AutoMonsterTide(context, 1, 133308107, {107006,107007}, 6, 2, 2)
	
	TLA_active_reminder_ui(context, evt, 1000140061)
	
	return 0
end