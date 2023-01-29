-- 基础信息
local base_info = {
	group_id = 133308212
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 大血条怪
	{ config_id = 212001, monster_id = 25410301, pos = { x = -1509.836, y = 63.155, z = 4960.550 }, rot = { x = 0.000, y = 164.916, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, title_id = 10148, special_name_id = 10197, area_id = 26 },
	{ config_id = 212004, monster_id = 25210502, pos = { x = -1512.749, y = 63.516, z = 4961.488 }, rot = { x = 0.000, y = 145.567, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 },
	{ config_id = 212005, monster_id = 25210502, pos = { x = -1510.189, y = 62.943, z = 4962.979 }, rot = { x = 0.000, y = 161.858, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 26 }
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
	{ config_id = 1212002, name = "SPECIFIC_MONSTER_HP_CHANGE_212002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "212001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_212002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_212002" },
	{ config_id = 1212003, name = "MONSTER_BATTLE_212003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_212003" },
	{ config_id = 1212006, name = "SPECIFIC_MONSTER_HP_CHANGE_212006", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "212001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_212006", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_212006" }
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
		monsters = { 212001, 212004, 212005 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_212002", "MONSTER_BATTLE_212003", "SPECIFIC_MONSTER_HP_CHANGE_212006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_212002(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_212002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7322509") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1000140027 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140027) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_212003(context, evt)
	-- 调用提示id为 1000140023 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_212006(context, evt)
	--[[判断指定configid的怪物的血量小于%60时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 60 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_212006(context, evt)
	-- 调用提示id为 1000140025 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140025) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end