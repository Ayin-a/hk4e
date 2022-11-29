-- 基础信息
local base_info = {
	group_id = 166001116
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 116001, monster_id = 22070301, pos = { x = 123.631, y = 143.817, z = 608.203 }, rot = { x = 0.000, y = 331.988, z = 0.000 }, level = 36, drop_tag = "黑蛇剑士", disableWander = true, pose_id = 9001, title_id = 10076, special_name_id = 10109, area_id = 300 },
	{ config_id = 116002, monster_id = 28050301, pos = { x = 122.176, y = 143.740, z = 608.345 }, rot = { x = 0.000, y = 148.401, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
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
	{ config_id = 1116003, name = "MONSTER_BATTLE_116003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_116003", action = "action_EVENT_MONSTER_BATTLE_116003" },
	{ config_id = 1116004, name = "ANY_MONSTER_DIE_116004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_116004", action = "action_EVENT_ANY_MONSTER_DIE_116004" }
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
		monsters = { 116001, 116002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_116003", "ANY_MONSTER_DIE_116004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_116003(context, evt)
	if 116001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_116003(context, evt)
	-- 调用提示id为 60010304 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010304) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_116004(context, evt)
	if 116001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_116004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001116") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 60010305 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010305) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end