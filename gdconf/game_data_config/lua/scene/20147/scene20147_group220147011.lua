-- 基础信息
local base_info = {
	group_id = 220147011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 26120201, pos = { x = 857.728, y = 76.997, z = 444.524 }, rot = { x = 0.000, y = 192.066, z = 0.000 }, level = 1, disableWander = true, pose_id = 201, title_id = 10125, special_name_id = 10177 },
	{ config_id = 11002, monster_id = 26120201, pos = { x = 862.443, y = 76.735, z = 432.015 }, rot = { x = 0.000, y = 309.919, z = 0.000 }, level = 1, disableWander = true, pose_id = 201, title_id = 10125, special_name_id = 10177 },
	{ config_id = 11027, monster_id = 26090101, pos = { x = 855.093, y = 76.591, z = 447.479 }, rot = { x = 0.000, y = 193.233, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 11028, monster_id = 26090101, pos = { x = 861.235, y = 76.669, z = 445.648 }, rot = { x = 0.000, y = 210.507, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 11029, monster_id = 26090501, pos = { x = 858.715, y = 76.951, z = 430.227 }, rot = { x = 0.000, y = 328.701, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 11030, monster_id = 26090501, pos = { x = 862.839, y = 76.775, z = 435.890 }, rot = { x = 0.000, y = 288.879, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
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
	{ config_id = 1011026, name = "ANY_MONSTER_DIE_11026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11026", action = "action_EVENT_ANY_MONSTER_DIE_11026" }
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
		triggers = { "ANY_MONSTER_DIE_11026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 11001, 11002, 11027, 11028, 11029, 11030 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_11026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7307412") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 33010173 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end