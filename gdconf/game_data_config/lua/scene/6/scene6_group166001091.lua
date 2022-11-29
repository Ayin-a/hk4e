-- 基础信息
local base_info = {
	group_id = 166001091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 22050101, pos = { x = 657.808, y = 392.407, z = 571.723 }, rot = { x = 0.000, y = 216.986, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 },
	{ config_id = 91002, monster_id = 22040101, pos = { x = 657.023, y = 391.923, z = 567.359 }, rot = { x = 0.000, y = 216.986, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 },
	{ config_id = 91003, monster_id = 22040101, pos = { x = 652.844, y = 393.805, z = 569.134 }, rot = { x = 0.000, y = 179.908, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 }
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
	{ config_id = 1091004, name = "MONSTER_BATTLE_91004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_91004" },
	{ config_id = 1091005, name = "ANY_MONSTER_DIE_91005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91005", action = "action_EVENT_ANY_MONSTER_DIE_91005" }
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
		monsters = { 91001, 91002, 91003 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_91004", "ANY_MONSTER_DIE_91005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_BATTLE_91004(context, evt)
	-- 调用提示id为 60010246 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010246) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "166001091") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end