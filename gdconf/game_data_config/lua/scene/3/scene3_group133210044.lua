-- 基础信息
local base_info = {
	group_id = 133210044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44001, monster_id = 23010601, pos = { x = -4080.125, y = 203.910, z = -1186.783 }, rot = { x = 0.000, y = 352.127, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9014, area_id = 17 },
	{ config_id = 44002, monster_id = 23010201, pos = { x = -4077.495, y = 203.524, z = -1189.981 }, rot = { x = 0.000, y = 342.363, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9014, area_id = 17 },
	{ config_id = 44003, monster_id = 23010101, pos = { x = -4082.852, y = 203.069, z = -1190.872 }, rot = { x = 0.000, y = 355.959, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9014, area_id = 17 }
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
	{ config_id = 1044004, name = "ANY_MONSTER_DIE_44004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44004", action = "action_EVENT_ANY_MONSTER_DIE_44004" },
	{ config_id = 1044005, name = "QUEST_FINISH_44005", event = EventType.EVENT_QUEST_FINISH, source = "7214803", condition = "", action = "action_EVENT_QUEST_FINISH_44005" },
	{ config_id = 1044006, name = "QUEST_START_44006", event = EventType.EVENT_QUEST_START, source = "7214804", condition = "", action = "action_EVENT_QUEST_START_44006", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_44005", "QUEST_START_44006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 44001, 44002, 44003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44004" },
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
function condition_EVENT_ANY_MONSTER_DIE_44004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133210044) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214804") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_44005(context, evt)
	-- 调用提示id为 32100110 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100110) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_44006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210044, 2)
	
	return 0
end