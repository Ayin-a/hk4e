-- 基础信息
local base_info = {
	group_id = 133007903
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 903001, monster_id = 22010301, pos = { x = 2860.511, y = 213.825, z = 296.087 }, rot = { x = 0.000, y = 207.768, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 4 },
	{ config_id = 903002, monster_id = 21010301, pos = { x = 2852.525, y = 213.825, z = 290.271 }, rot = { x = 0.000, y = 80.830, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 4 },
	{ config_id = 903003, monster_id = 21010301, pos = { x = 2860.731, y = 213.825, z = 286.418 }, rot = { x = 0.000, y = 327.272, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 4 },
	{ config_id = 903004, monster_id = 21010201, pos = { x = 2857.615, y = 213.825, z = 285.585 }, rot = { x = 0.000, y = 359.185, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 4 },
	{ config_id = 903005, monster_id = 21010201, pos = { x = 2854.123, y = 213.891, z = 287.356 }, rot = { x = 0.000, y = 46.693, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 4 },
	{ config_id = 903006, monster_id = 21020101, pos = { x = 2850.257, y = 213.825, z = 292.819 }, rot = { x = 0.000, y = 101.314, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 4 },
	{ config_id = 903007, monster_id = 22010304, pos = { x = 2861.075, y = 213.573, z = 298.305 }, rot = { x = 0.000, y = 197.368, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 4 },
	{ config_id = 903008, monster_id = 21030101, pos = { x = 2854.699, y = 213.659, z = 283.516 }, rot = { x = 0.000, y = 22.255, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 4 },
	{ config_id = 903009, monster_id = 21020101, pos = { x = 2864.368, y = 213.638, z = 286.010 }, rot = { x = 0.000, y = 312.219, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 4 }
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
	{ config_id = 1903010, name = "QUEST_START_903010", event = EventType.EVENT_QUEST_START, source = "1800023", condition = "", action = "action_EVENT_QUEST_START_903010", trigger_count = 0 },
	{ config_id = 1903011, name = "ANY_MONSTER_DIE_903011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903011", action = "action_EVENT_ANY_MONSTER_DIE_903011" },
	{ config_id = 1903012, name = "ANY_MONSTER_DIE_903012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903012", action = "action_EVENT_ANY_MONSTER_DIE_903012" },
	{ config_id = 1903013, name = "QUEST_START_903013", event = EventType.EVENT_QUEST_START, source = "1800023", condition = "", action = "action_EVENT_QUEST_START_903013", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { 903001, 903002, 903003, 903004, 903005 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_903010", "ANY_MONSTER_DIE_903011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 903006, 903007, 903008, 903009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_903012", "QUEST_START_903013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_903010(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007903, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007903, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133007903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_903013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133007903, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end