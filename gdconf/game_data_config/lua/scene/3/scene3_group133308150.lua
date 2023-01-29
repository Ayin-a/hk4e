-- 基础信息
local base_info = {
	group_id = 133308150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 大血条怪
	{ config_id = 150001, monster_id = 25310301, pos = { x = -1161.929, y = 103.190, z = 4810.664 }, rot = { x = 0.000, y = 352.530, z = 0.000 }, level = 1, drop_id = 1000100, title_id = 10143, special_name_id = 10192, area_id = 32 },
	{ config_id = 150003, monster_id = 25210501, pos = { x = -1159.759, y = 103.724, z = 4810.174 }, rot = { x = 0.000, y = 352.530, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 32 }
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
	{ config_id = 1150004, name = "MONSTER_BATTLE_150004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_150004" },
	{ config_id = 1150012, name = "ANY_MONSTER_DIE_150012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_150012", action = "action_EVENT_ANY_MONSTER_DIE_150012" }
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
		monsters = { 150001, 150003 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_150004", "ANY_MONSTER_DIE_150012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_150004(context, evt)
	-- 调用提示id为 1000160014 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000160014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_150012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_150012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7321208") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end