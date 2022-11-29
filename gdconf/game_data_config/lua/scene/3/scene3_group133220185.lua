-- 基础信息
local base_info = {
	group_id = 133220185
}

-- Trigger变量
local defs = {
	temari_id = 185001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 185001, gadget_id = 70290072, pos = { x = -3039.904, y = 203.644, z = -4231.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 185002, gadget_id = 70360001, pos = { x = -3039.798, y = 203.761, z = -4231.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1185003, name = "CHALLENGE_SUCCESS_185003", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_185003" },
	{ config_id = 1185004, name = "QUEST_START_185004", event = EventType.EVENT_QUEST_START, source = "7217604", condition = "", action = "action_EVENT_QUEST_START_185004", trigger_count = 0 },
	{ config_id = 1185005, name = "CHALLENGE_FAIL_185005", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_185005" }
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
		gadgets = { 185002 },
		regions = { },
		triggers = { "QUEST_START_185004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 185001, 185002 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_185003", "CHALLENGE_FAIL_185005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_185003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "721760401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220185, 2)
	
	-- 调用提示id为 32207601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32207601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_185004(context, evt)
	-- 创建编号为235（该挑战的识别id),挑战内容为235的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 235, 235, 30, 2, 235, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220185, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_185005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "721760402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220185, 2)
	
	-- 调用提示id为 32207602 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32207602) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_0/TemariChallengePreQuest"