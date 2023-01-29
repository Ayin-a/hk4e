-- 基础信息
local base_info = {
	group_id = 133307092
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 92001, monster_id = 23010201, pos = { x = -1400.279, y = -29.906, z = 5372.668 }, rot = { x = 0.000, y = 202.947, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, pose_id = 9011, area_id = 32, isBlockOneoff = true },
	{ config_id = 92003, monster_id = 23010601, pos = { x = -1400.947, y = -30.406, z = 5388.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, area_id = 32, isBlockOneoff = true },
	{ config_id = 92006, monster_id = 23010501, pos = { x = -1408.238, y = -30.110, z = 5375.077 }, rot = { x = 0.000, y = 201.195, z = 0.000 }, level = 1, drop_id = 1000100, isOneoff = true, pose_id = 9011, area_id = 32, isBlockOneoff = true }
}

-- NPC
npcs = {
	{ config_id = 92004, npc_id = 20937, pos = { x = -1400.279, y = -29.906, z = 5372.668 }, rot = { x = 0.000, y = 202.947, z = 0.000 }, area_id = 32 },
	{ config_id = 92007, npc_id = 20938, pos = { x = -1408.238, y = -30.110, z = 5375.077 }, rot = { x = 0.000, y = 201.195, z = 0.000 }, area_id = 32 },
	{ config_id = 92008, npc_id = 10326, pos = { x = -1400.947, y = -30.406, z = 5388.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 32 }
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1092002, name = "ANY_MONSTER_DIE_92002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_92002", action = "action_EVENT_ANY_MONSTER_DIE_92002" },
	{ config_id = 1092005, name = "ANY_MONSTER_LIVE_92005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_92005", action = "action_EVENT_ANY_MONSTER_LIVE_92005" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 92004, 92007, 92008 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 92001, 92003, 92006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_92002", "ANY_MONSTER_LIVE_92005" },
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
function condition_EVENT_ANY_MONSTER_DIE_92002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_92002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7327905") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_92005(context, evt)
	if 92001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_92005(context, evt)
	if 0 ~= ScriptLib.RemoveExtraGroupSuite(context, 133307092, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING: RemoveExtraGroupSuite")
		return -1
	end
	
	TLA_active_reminder_ui(context, evt, 1000200000)
	
	return 0
end