-- 基础信息
local base_info = {
	group_id = 166001051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51002, monster_id = 22030102, pos = { x = 453.777, y = 378.101, z = 522.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1042 }, pose_id = 101, title_id = 10083, special_name_id = 10058, area_id = 300 },
	{ config_id = 51003, monster_id = 22030202, pos = { x = 453.820, y = 378.146, z = 519.544 }, rot = { x = 0.000, y = 149.052, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1042 }, pose_id = 101, title_id = 10082, special_name_id = 10058, area_id = 300 }
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
	{ config_id = 1051001, name = "ANY_MONSTER_DIE_51001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51001", action = "action_EVENT_ANY_MONSTER_DIE_51001" },
	{ config_id = 1051004, name = "MONSTER_BATTLE_51004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_51004", action = "action_EVENT_MONSTER_BATTLE_51004" },
	{ config_id = 1051005, name = "ANY_MONSTER_DIE_51005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51005", action = "action_EVENT_ANY_MONSTER_DIE_51005" },
	{ config_id = 1051006, name = "ANY_MONSTER_DIE_51006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51006", action = "action_EVENT_ANY_MONSTER_DIE_51006" }
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
		monsters = { 51002, 51003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51001", "MONSTER_BATTLE_51004", "ANY_MONSTER_DIE_51005", "ANY_MONSTER_DIE_51006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 60010167 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010167) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_51004(context, evt)
	if 51003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_51004(context, evt)
	-- 调用提示id为 60010163 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010163) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51005(context, evt)
	if 51003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51005(context, evt)
	-- 调用提示id为 60010165 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010165) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51006(context, evt)
	if 51002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51006(context, evt)
	-- 调用提示id为 60010166 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010166) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end