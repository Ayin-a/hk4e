-- 基础信息
local base_info = {
	group_id = 220146003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[3001] = { config_id = 3001, monster_id = 26120101, pos = { x = 245.563, y = 96.486, z = 686.361 }, rot = { x = 0.000, y = 49.287, z = 0.000 }, level = 1, disableWander = true, pose_id = 102, title_id = 10125, special_name_id = 10177 },
	[3002] = { config_id = 3002, monster_id = 26120101, pos = { x = 250.161, y = 96.844, z = 701.917 }, rot = { x = 0.000, y = 148.807, z = 0.000 }, level = 1, disableWander = true, pose_id = 102, title_id = 10125, special_name_id = 10177 },
	[3029] = { config_id = 3029, monster_id = 26090401, pos = { x = 254.474, y = 96.641, z = 703.388 }, rot = { x = 0.000, y = 199.753, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[3030] = { config_id = 3030, monster_id = 26090401, pos = { x = 249.606, y = 96.395, z = 683.449 }, rot = { x = 0.000, y = 14.825, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	[3031] = { config_id = 3031, monster_id = 26090101, pos = { x = 243.580, y = 96.688, z = 689.232 }, rot = { x = 0.000, y = 69.005, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 },
	[3032] = { config_id = 3032, monster_id = 26090101, pos = { x = 245.208, y = 96.713, z = 700.884 }, rot = { x = 0.000, y = 126.907, z = 0.000 }, level = 1, disableWander = true, pose_id = 102 }
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
	{ config_id = 1003027, name = "ANY_MONSTER_DIE_3027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3027", action = "action_EVENT_ANY_MONSTER_DIE_3027" }
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
		triggers = { "ANY_MONSTER_DIE_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3002, 3029, 3030, 3031, 3032 },
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
function condition_EVENT_ANY_MONSTER_DIE_3027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7307014") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 33010195 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010195) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end