-- 基础信息
local base_info = {
	group_id = 166001111
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 22080101, pos = { x = 807.731, y = 791.162, z = 637.001 }, rot = { x = 0.000, y = 163.484, z = 0.000 }, level = 36, drop_tag = "黑蛇剑士", disableWander = true, pose_id = 101, title_id = 10077, special_name_id = 10110, area_id = 300 },
	{ config_id = 111002, monster_id = 22070101, pos = { x = 806.597, y = 791.000, z = 629.856 }, rot = { x = 0.000, y = 346.567, z = 0.000 }, level = 36, drop_tag = "黑蛇剑士", disableWander = true, pose_id = 101, area_id = 300 }
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
	{ config_id = 1111004, name = "MONSTER_BATTLE_111004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_111004", action = "action_EVENT_MONSTER_BATTLE_111004" },
	{ config_id = 1111005, name = "ANY_MONSTER_DIE_111005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_111005", action = "action_EVENT_ANY_MONSTER_DIE_111005" }
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
		monsters = { 111001, 111002 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_111004", "ANY_MONSTER_DIE_111005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_111004(context, evt)
	if 111001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_111004(context, evt)
	-- 调用提示id为 60010306 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010306) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_111005(context, evt)
	if 111001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_111005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001111") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 60010307 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010307) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end