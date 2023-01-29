-- 基础信息
local base_info = {
	group_id = 133308056
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 56001, monster_id = 25210401, pos = { x = -1528.000, y = 55.602, z = 5005.029 }, rot = { x = 0.000, y = 127.825, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 56002, monster_id = 25210502, pos = { x = -1522.150, y = 58.968, z = 4999.890 }, rot = { x = 0.000, y = 187.052, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 56003, monster_id = 25210101, pos = { x = -1523.580, y = 60.574, z = 4991.612 }, rot = { x = 0.000, y = 147.981, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 32 },
	{ config_id = 56005, monster_id = 25210401, pos = { x = -1537.092, y = 49.342, z = 5013.432 }, rot = { x = 0.000, y = 96.859, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 },
	{ config_id = 56006, monster_id = 25210502, pos = { x = -1525.589, y = 51.441, z = 5015.913 }, rot = { x = 0.000, y = 187.052, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
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
	{ config_id = 1056004, name = "ANY_MONSTER_DIE_56004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_56004", action = "action_EVENT_ANY_MONSTER_DIE_56004" },
	{ config_id = 1056010, name = "MONSTER_BATTLE_56010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_56010" }
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
		monsters = { 56001, 56002, 56003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_56004", "MONSTER_BATTLE_56010" },
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
function condition_EVENT_ANY_MONSTER_DIE_56004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_56004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7322510") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1000140060 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000140060) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_56010(context, evt)
	ScriptLib.AutoMonsterTide(context, 1, 133308056, {56005,56006}, 6, 2, 2)
	
	TLA_active_reminder_ui(context, evt, 1000140059)
	
	return 0
end