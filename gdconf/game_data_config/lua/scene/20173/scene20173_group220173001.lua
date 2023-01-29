-- 基础信息
local base_info = {
	group_id = 220173001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 26120301, pos = { x = 3.357, y = 193.878, z = 357.952 }, rot = { x = 0.000, y = 217.235, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 101 },
	{ config_id = 1002, monster_id = 26010101, pos = { x = 0.509, y = 248.853, z = 365.664 }, rot = { x = 0.000, y = 204.448, z = 0.000 }, level = 40, drop_id = 1000100 },
	{ config_id = 1003, monster_id = 28060203, pos = { x = -0.190, y = 193.630, z = 358.579 }, rot = { x = 0.000, y = 135.382, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 1 },
	{ config_id = 1007, monster_id = 20010801, pos = { x = 6.419, y = 248.833, z = 356.281 }, rot = { x = 0.000, y = 237.165, z = 0.000 }, level = 40, drop_id = 1000100 },
	{ config_id = 1008, monster_id = 20010801, pos = { x = 0.149, y = 250.127, z = 357.747 }, rot = { x = 0.000, y = 140.933, z = 0.000 }, level = 40, drop_id = 1000100 },
	{ config_id = 1009, monster_id = 26010101, pos = { x = 9.354, y = 193.630, z = 364.783 }, rot = { x = 0.000, y = 212.071, z = 0.000 }, level = 40, drop_id = 1000100 },
	{ config_id = 1010, monster_id = 20011101, pos = { x = 12.285, y = 193.630, z = 358.836 }, rot = { x = 0.000, y = 185.361, z = 0.000 }, level = 40, drop_id = 1000100, affix = { 1026 } },
	{ config_id = 1011, monster_id = 26091001, pos = { x = 3.638, y = 193.630, z = 364.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 101 },
	{ config_id = 1012, monster_id = 26091001, pos = { x = 11.133, y = 193.635, z = 363.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 101 },
	{ config_id = 1013, monster_id = 26010301, pos = { x = 16.251, y = 193.664, z = 354.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 40, drop_id = 1000100 },
	{ config_id = 1014, monster_id = 26010301, pos = { x = 3.503, y = 193.630, z = 350.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 40, drop_id = 1000100 },
	{ config_id = 1016, monster_id = 26110101, pos = { x = 10.115, y = 193.630, z = 352.528 }, rot = { x = 0.000, y = 286.438, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 101 },
	{ config_id = 1017, monster_id = 28060203, pos = { x = 7.641, y = 193.696, z = 349.432 }, rot = { x = 0.000, y = 319.856, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 1 },
	{ config_id = 1019, monster_id = 28060203, pos = { x = 11.052, y = 193.635, z = 361.619 }, rot = { x = 0.000, y = 258.020, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 1 },
	{ config_id = 1020, monster_id = 26120201, pos = { x = 2.110, y = 193.635, z = 353.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 201 },
	{ config_id = 1021, monster_id = 26120201, pos = { x = -4.959, y = 252.215, z = 356.380 }, rot = { x = 0.000, y = 31.491, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 201 },
	{ config_id = 1022, monster_id = 26120301, pos = { x = 3.742, y = 193.730, z = 361.118 }, rot = { x = 0.000, y = 218.525, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 101 },
	{ config_id = 1023, monster_id = 26120301, pos = { x = 6.844, y = 193.630, z = 364.274 }, rot = { x = 0.000, y = 153.447, z = 0.000 }, level = 40, drop_id = 1000100, pose_id = 101 }
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
	{ config_id = 1001004, name = "ANY_MONSTER_DIE_1004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1004", action = "action_EVENT_ANY_MONSTER_DIE_1004" },
	{ config_id = 1001005, name = "ANY_MONSTER_DIE_1005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1005", action = "action_EVENT_ANY_MONSTER_DIE_1005" },
	{ config_id = 1001006, name = "ANY_MONSTER_DIE_1006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1006", action = "action_EVENT_ANY_MONSTER_DIE_1006" },
	{ config_id = 1001015, name = "ANY_MONSTER_DIE_1015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1015", action = "action_EVENT_ANY_MONSTER_DIE_1015" },
	{ config_id = 1001018, name = "ANY_MONSTER_DIE_1018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1018", action = "action_EVENT_ANY_MONSTER_DIE_1018" },
	{ config_id = 1001024, name = "ANY_MONSTER_DIE_1024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1024", action = "action_EVENT_ANY_MONSTER_DIE_1024" }
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
		monsters = { 1011, 1012, 1013, 1014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001, 1007, 1008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1003, 1017, 1019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1002, 1009, 1010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1005" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 1020, 1021, 1022, 1023 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1024" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 1016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1302209") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1302211") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1302213") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220173001, 2)
	
	-- 调用提示id为 1000220000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000220000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1018(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220173001, 4)
	
	-- 调用提示id为 1000220002 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000220002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1024(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1024(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220173001, 6)
	
	-- 调用提示id为 1000220005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000220005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end