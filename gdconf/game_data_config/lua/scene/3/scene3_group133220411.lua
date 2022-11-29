-- 基础信息
local base_info = {
	group_id = 133220411
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 411001, monster_id = 21020201, pos = { x = -2653.438, y = 252.562, z = -4473.025 }, rot = { x = 0.000, y = 80.863, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 411002, monster_id = 21010301, pos = { x = -2650.762, y = 253.618, z = -4474.252 }, rot = { x = 0.000, y = 57.721, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9016, area_id = 11 },
	{ config_id = 411003, monster_id = 21010701, pos = { x = -2653.249, y = 251.984, z = -4476.240 }, rot = { x = 0.000, y = 38.273, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 11 }
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
	{ config_id = 1411006, name = "ANY_MONSTER_DIE_411006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_411006", action = "action_EVENT_ANY_MONSTER_DIE_411006" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 411001, 411002, 411003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_411006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_411006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_411006(context, evt)
	-- 调用提示id为 322072836 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072836) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210813") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end