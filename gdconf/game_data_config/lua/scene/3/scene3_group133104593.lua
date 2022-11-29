-- 基础信息
local base_info = {
	group_id = 133104593
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 593001, monster_id = 25030201, pos = { x = 258.879, y = 235.218, z = 513.948 }, rot = { x = 0.000, y = 343.810, z = 0.000 }, level = 27, drop_id = 1000100, isElite = true, area_id = 9 },
	{ config_id = 593002, monster_id = 25070101, pos = { x = 261.595, y = 235.321, z = 519.279 }, rot = { x = 0.000, y = 343.067, z = 0.000 }, level = 27, drop_id = 1000100, isElite = true, area_id = 9 },
	{ config_id = 593003, monster_id = 25010501, pos = { x = 245.793, y = 235.728, z = 511.529 }, rot = { x = 0.000, y = 10.717, z = 0.000 }, level = 27, drop_id = 1000100, isElite = true, area_id = 9 },
	{ config_id = 593004, monster_id = 25010301, pos = { x = 240.030, y = 236.616, z = 519.484 }, rot = { x = 0.000, y = 87.301, z = 0.000 }, level = 27, drop_id = 1000100, isElite = true, area_id = 9 }
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
	{ config_id = 1593005, name = "ANY_MONSTER_DIE_593005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_593005", action = "action_EVENT_ANY_MONSTER_DIE_593005", trigger_count = 0 }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 593001, 593002, 593003, 593004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_593005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_593005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_593005(context, evt)
	-- 调用提示id为 31040513 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 31040513) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104593_1") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end