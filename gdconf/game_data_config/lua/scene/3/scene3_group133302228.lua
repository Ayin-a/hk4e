-- 基础信息
local base_info = {
	group_id = 133302228
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 228001, monster_id = 20011001, pos = { x = -205.237, y = 216.152, z = 2501.066 }, rot = { x = 0.000, y = 268.935, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 901, area_id = 24 },
	{ config_id = 228002, monster_id = 20011001, pos = { x = -210.436, y = 217.805, z = 2502.993 }, rot = { x = 0.000, y = 147.569, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 901, area_id = 24 },
	{ config_id = 228003, monster_id = 20011001, pos = { x = -209.728, y = 217.243, z = 2498.284 }, rot = { x = 0.000, y = 24.557, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 901, area_id = 24 },
	{ config_id = 228004, monster_id = 20011101, pos = { x = -206.472, y = 216.473, z = 2498.899 }, rot = { x = 0.000, y = 263.868, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 24 }
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
	{ config_id = 1228005, name = "ANY_MONSTER_DIE_228005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_228005", action = "action_EVENT_ANY_MONSTER_DIE_228005" },
	{ config_id = 1228006, name = "ANY_MONSTER_DIE_228006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_228006", action = "action_EVENT_ANY_MONSTER_DIE_228006" }
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
	suite = 2,
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
		monsters = { 228001, 228002, 228003, 228004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_228005", "ANY_MONSTER_DIE_228006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 228001, 228002, 228003, 228004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_228005(context, evt)
	-- 判断剩余怪物数量是否是3
	if ScriptLib.GetGroupMonsterCount(context) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_228005(context, evt)
	-- 调用提示id为 1111401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_228006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_228006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2303304") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end