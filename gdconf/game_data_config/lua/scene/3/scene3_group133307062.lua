-- 基础信息
local base_info = {
	group_id = 133307062
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 大血条怪
	{ config_id = 62001, monster_id = 25210102, pos = { x = -1242.054, y = -32.226, z = 5322.059 }, rot = { x = 0.000, y = 27.634, z = 0.000 }, level = 1, drop_id = 1000100, title_id = 10145, special_name_id = 10194, area_id = 32 },
	-- 大血条怪
	{ config_id = 62003, monster_id = 25310201, pos = { x = -1242.201, y = -32.191, z = 5318.551 }, rot = { x = 0.000, y = 22.699, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9001, title_id = 10146, special_name_id = 10195, area_id = 32 }
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
	{ config_id = 1062002, name = "MONSTER_BATTLE_62002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_62002", action = "action_EVENT_MONSTER_BATTLE_62002" },
	{ config_id = 1062004, name = "ANY_MONSTER_DIE_62004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_62004", action = "action_EVENT_ANY_MONSTER_DIE_62004", trigger_count = 0 },
	{ config_id = 1062005, name = "ANY_MONSTER_DIE_62005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_62005", action = "action_EVENT_ANY_MONSTER_DIE_62005" },
	{ config_id = 1062006, name = "MONSTER_BATTLE_62006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_62006", action = "action_EVENT_MONSTER_BATTLE_62006" }
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
	end_suite = 2,
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
		monsters = { 62001 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_62002", "ANY_MONSTER_DIE_62005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 62003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_62004", "MONSTER_BATTLE_62006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_62002(context, evt)
	if 62001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_62002(context, evt)
	-- 调用提示id为 1000140018 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_62004(context, evt)
	if 62003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_62004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "q7dujin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1000140050 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140050) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_62005(context, evt)
	--判断死亡怪物的configid是否为 62001
	if evt.param1 ~= 62001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_62005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133307062, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 调用提示id为 1000140047 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_62006(context, evt)
	if 62003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_62006(context, evt)
	-- 调用提示id为 1000140049 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140049) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end