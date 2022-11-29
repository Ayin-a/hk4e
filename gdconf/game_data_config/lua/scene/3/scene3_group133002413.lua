-- 基础信息
local base_info = {
	group_id = 133002413
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 413001, monster_id = 25010201, pos = { x = 1530.600, y = 271.476, z = -855.391 }, rot = { x = 0.000, y = 155.566, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 413002, monster_id = 25010201, pos = { x = 1533.569, y = 271.368, z = -855.398 }, rot = { x = 0.000, y = 155.566, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 413003, monster_id = 25010301, pos = { x = 1524.969, y = 271.727, z = -851.568 }, rot = { x = 0.000, y = 155.566, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 413004, monster_id = 25010301, pos = { x = 1536.465, y = 271.491, z = -850.550 }, rot = { x = 0.000, y = 155.566, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 413005, monster_id = 25070101, pos = { x = 1537.271, y = 270.747, z = -866.442 }, rot = { x = 0.000, y = 298.677, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 413006, monster_id = 25020204, pos = { x = 1542.600, y = 270.295, z = -868.262 }, rot = { x = 0.000, y = 298.677, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 413007, monster_id = 25020204, pos = { x = 1538.238, y = 270.530, z = -873.379 }, rot = { x = 0.000, y = 298.677, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 413008, monster_id = 25030201, pos = { x = 1535.094, y = 270.897, z = -869.410 }, rot = { x = 0.000, y = 298.677, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 413009, monster_id = 23010101, pos = { x = 1531.057, y = 272.394, z = -838.691 }, rot = { x = 0.000, y = 161.864, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 413010, monster_id = 23010501, pos = { x = 1526.001, y = 272.665, z = -840.533 }, rot = { x = 0.000, y = 151.571, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 413011, monster_id = 23010201, pos = { x = 1521.317, y = 272.571, z = -841.001 }, rot = { x = 0.000, y = 151.571, z = 0.000 }, level = 35, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
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
	{ config_id = 1413012, name = "ANY_MONSTER_DIE_413012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413012", action = "action_EVENT_ANY_MONSTER_DIE_413012" },
	{ config_id = 1413013, name = "ANY_MONSTER_DIE_413013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413013", action = "action_EVENT_ANY_MONSTER_DIE_413013" },
	{ config_id = 1413014, name = "ANY_MONSTER_DIE_413014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413014", action = "action_EVENT_ANY_MONSTER_DIE_413014" },
	{ config_id = 1413015, name = "GROUP_LOAD_413015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_413015" }
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
		monsters = { 413001, 413002, 413003, 413004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_413012", "GROUP_LOAD_413015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 413005, 413006, 413007, 413008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_413013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 413009, 413010, 413011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_413014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_413012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_413012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002413, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 1110175 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_413013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_413013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002413, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 调用提示id为 1110176 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110176) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121113") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_413014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_413014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121104") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_413015(context, evt)
	-- 调用提示id为 1110174 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110174) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end