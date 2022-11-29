-- 基础信息
local base_info = {
	group_id = 199004017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17006, monster_id = 24010101, pos = { x = -428.549, y = 120.017, z = -542.399 }, rot = { x = 0.000, y = 148.177, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 100, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17001, gadget_id = 70220011, pos = { x = -424.363, y = 120.487, z = -550.827 }, rot = { x = 0.000, y = 317.977, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 17002, gadget_id = 70220010, pos = { x = -422.398, y = 120.499, z = -549.590 }, rot = { x = 0.000, y = 317.977, z = 0.000 }, level = 1, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017003, name = "QUEST_START_17003", event = EventType.EVENT_QUEST_START, source = "7902533", condition = "condition_EVENT_QUEST_START_17003", action = "action_EVENT_QUEST_START_17003", trigger_count = 0 },
	{ config_id = 1017004, name = "QUEST_FINISH_17004", event = EventType.EVENT_QUEST_FINISH, source = "7902533", condition = "", action = "action_EVENT_QUEST_FINISH_17004", trigger_count = 0 },
	{ config_id = 1017007, name = "ANY_MONSTER_DIE_17007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17007", action = "action_EVENT_ANY_MONSTER_DIE_17007", trigger_count = 0 },
	{ config_id = 1017016, name = "QUEST_FINISH_17016", event = EventType.EVENT_QUEST_FINISH, source = "7902531", condition = "condition_EVENT_QUEST_FINISH_17016", action = "action_EVENT_QUEST_FINISH_17016", trigger_count = 0 },
	{ config_id = 1017017, name = "QUEST_FINISH_17017", event = EventType.EVENT_QUEST_FINISH, source = "7902533", condition = "", action = "action_EVENT_QUEST_FINISH_17017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true }
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
		monsters = { 17006 },
		gadgets = { 17001, 17002 },
		regions = { },
		triggers = { "QUEST_START_17003", "QUEST_FINISH_17004", "ANY_MONSTER_DIE_17007", "QUEST_FINISH_17016", "QUEST_FINISH_17017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_17003(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_17003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902533finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_17004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199004017, EntityType.GADGET, 17001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 199004017) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17007(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902533finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_17016(context, evt)
	-- 判断剩余怪物数量是否是1
	if ScriptLib.GetGroupMonsterCount(context) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_17016(context, evt)
	-- 调用提示id为 1111145 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111145) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_17017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199004017, EntityType.GADGET, 17002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end