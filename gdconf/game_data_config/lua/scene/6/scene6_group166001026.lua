-- 基础信息
local base_info = {
	group_id = 166001026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26002, monster_id = 25070101, pos = { x = 764.753, y = 707.164, z = 217.418 }, rot = { x = 0.000, y = 194.498, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9009, area_id = 300 },
	{ config_id = 26003, monster_id = 25010501, pos = { x = 764.174, y = 707.254, z = 215.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9006, area_id = 300 },
	{ config_id = 26005, monster_id = 25060101, pos = { x = 772.069, y = 706.073, z = 214.794 }, rot = { x = 0.000, y = 194.498, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9101, area_id = 300 },
	{ config_id = 26006, monster_id = 25010201, pos = { x = 755.881, y = 707.760, z = 212.626 }, rot = { x = 0.000, y = 254.930, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9102, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 26001, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1003.452, y = 747.733, z = 267.520 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1026001, name = "ENTER_REGION_26001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_26001" },
	{ config_id = 1026004, name = "MONSTER_BATTLE_26004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_26004", action = "action_EVENT_MONSTER_BATTLE_26004" },
	{ config_id = 1026007, name = "ANY_MONSTER_DIE_26007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26007", action = "action_EVENT_ANY_MONSTER_DIE_26007" }
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
		monsters = { 26002, 26003, 26005, 26006 },
		gadgets = { },
		regions = { 26001 },
		triggers = { "ENTER_REGION_26001", "MONSTER_BATTLE_26004", "ANY_MONSTER_DIE_26007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_26001(context, evt)
	-- 调用提示id为 60010128 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010128) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_26004(context, evt)
	if 26002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_26004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001025") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 60010130 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010130) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001025") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001026") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end