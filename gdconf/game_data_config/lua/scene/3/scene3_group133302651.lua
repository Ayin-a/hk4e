-- 基础信息
local base_info = {
	group_id = 133302651
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 651001, monster_id = 25210302, pos = { x = -267.092, y = 102.980, z = 2215.386 }, rot = { x = 0.000, y = 49.211, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1007, 1009 }, title_id = 10101, special_name_id = 10135, area_id = 24 },
	{ config_id = 651002, monster_id = 25210202, pos = { x = -267.731, y = 103.215, z = 2217.561 }, rot = { x = 0.000, y = 104.473, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1007, 1009 }, title_id = 10101, special_name_id = 10136, area_id = 24 }
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
	-- 发送完成通知
	{ config_id = 1651003, name = "ANY_MONSTER_DIE_651003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_651003", action = "action_EVENT_ANY_MONSTER_DIE_651003", trigger_count = 0 },
	{ config_id = 1651004, name = "MONSTER_BATTLE_651004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_651004", action = "action_EVENT_MONSTER_BATTLE_651004" }
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
		monsters = { 651001, 651002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_651003", "MONSTER_BATTLE_651004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_651003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_651003(context, evt)
	-- 调用提示id为 60010409 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010409) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306118") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_651004(context, evt)
	if 651001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_651004(context, evt)
	-- 调用提示id为 60010407 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010407) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end