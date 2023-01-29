-- 基础信息
local base_info = {
	group_id = 133307065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 大血条怪
	{ config_id = 65001, monster_id = 25310101, pos = { x = -1238.926, y = -32.217, z = 5327.248 }, rot = { x = 0.000, y = 158.014, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9004, title_id = 10144, special_name_id = 10193, area_id = 32 }
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
	{ config_id = 1065002, name = "SPECIFIC_MONSTER_HP_CHANGE_65002", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "65001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_65002", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_65002", trigger_count = 0 },
	{ config_id = 1065003, name = "MONSTER_BATTLE_65003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_65003" },
	{ config_id = 1065004, name = "SPECIFIC_MONSTER_HP_CHANGE_65004", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "65001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_65004", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_65004", trigger_count = 0 }
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
		monsters = { 65001 },
		gadgets = { },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_65002", "MONSTER_BATTLE_65003", "SPECIFIC_MONSTER_HP_CHANGE_65004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_65002(context, evt)
	--[[判断指定configid的怪物的血量小于%25时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 25 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_65002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7jiede") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_65003(context, evt)
	-- 调用提示id为 1000140004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_65004(context, evt)
	--[[判断指定configid的怪物的血量小于%35时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 35 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_65004(context, evt)
	-- 调用提示id为 1000140017 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end