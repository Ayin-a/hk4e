-- 基础信息
local base_info = {
	group_id = 133212144
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 25050301, pos = { x = -3512.323, y = 200.136, z = -2663.771 }, rot = { x = 0.000, y = 129.910, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, title_id = 10023, special_name_id = 10043, area_id = 13 },
	{ config_id = 144002, monster_id = 25050401, pos = { x = -3512.323, y = 200.136, z = -2663.771 }, rot = { x = 0.000, y = 129.910, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, title_id = 10024, special_name_id = 10044, area_id = 13 },
	{ config_id = 144003, monster_id = 25080401, pos = { x = -3512.323, y = 200.136, z = -2663.771 }, rot = { x = 0.000, y = 129.910, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, title_id = 10025, special_name_id = 10045, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144010, gadget_id = 70710399, pos = { x = -3507.342, y = 200.046, z = -2668.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 144011, gadget_id = 70710399, pos = { x = -3507.342, y = 200.046, z = -2668.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 144012, gadget_id = 70710399, pos = { x = -3507.342, y = 200.046, z = -2668.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1144004, name = "ANY_MONSTER_DIE_144004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144004", action = "action_EVENT_ANY_MONSTER_DIE_144004", trigger_count = 0 },
	{ config_id = 1144005, name = "ANY_MONSTER_DIE_144005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144005", action = "action_EVENT_ANY_MONSTER_DIE_144005", trigger_count = 0 },
	{ config_id = 1144006, name = "ANY_MONSTER_DIE_144006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144006", action = "action_EVENT_ANY_MONSTER_DIE_144006", trigger_count = 0 },
	{ config_id = 1144007, name = "GROUP_REFRESH_144007", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_144007" },
	{ config_id = 1144008, name = "GROUP_REFRESH_144008", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_144008" },
	{ config_id = 1144009, name = "GROUP_REFRESH_144009", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_144009" }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 144001 },
		gadgets = { 144010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144004", "GROUP_REFRESH_144007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 144002 },
		gadgets = { 144011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144005", "GROUP_REFRESH_144008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 144003 },
		gadgets = { 144012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144006", "GROUP_REFRESH_144009" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20090701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20090702") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20090703") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_144007(context, evt)
	-- 调用提示id为 400034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_144008(context, evt)
	-- 调用提示id为 400036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400036) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_144009(context, evt)
	-- 调用提示id为 400038 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400038) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end