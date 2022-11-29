-- 基础信息
local base_info = {
	group_id = 133003918
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 918001, monster_id = 21020201, pos = { x = 2476.488, y = 215.372, z = -1294.789 }, rot = { x = 0.000, y = 224.145, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 401, area_id = 1 },
	{ config_id = 918002, monster_id = 21010201, pos = { x = 2477.291, y = 215.927, z = -1300.625 }, rot = { x = 0.000, y = 302.950, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 918003, monster_id = 21010201, pos = { x = 2471.528, y = 215.521, z = -1297.043 }, rot = { x = 0.000, y = 125.388, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 918004, monster_id = 21010201, pos = { x = 2472.373, y = 216.023, z = -1302.212 }, rot = { x = 0.000, y = 22.511, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 918005, monster_id = 21030201, pos = { x = 2472.485, y = 215.160, z = -1292.959 }, rot = { x = 0.000, y = 153.617, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 1 }
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
	{ config_id = 1918006, name = "ANY_MONSTER_DIE_918006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_918006", action = "action_EVENT_ANY_MONSTER_DIE_918006" },
	{ config_id = 1918007, name = "QUEST_FINISH_918007", event = EventType.EVENT_QUEST_FINISH, source = "4112508", condition = "condition_EVENT_QUEST_FINISH_918007", action = "action_EVENT_QUEST_FINISH_918007", trigger_count = 0 },
	{ config_id = 1918008, name = "QUEST_FINISH_918008", event = EventType.EVENT_QUEST_FINISH, source = "4112504", condition = "", action = "action_EVENT_QUEST_FINISH_918008", trigger_count = 0 },
	{ config_id = 1918009, name = "QUEST_FINISH_918009", event = EventType.EVENT_QUEST_FINISH, source = "4112505", condition = "", action = "action_EVENT_QUEST_FINISH_918009", trigger_count = 0 },
	{ config_id = 1918010, name = "QUEST_START_918010", event = EventType.EVENT_QUEST_START, source = "4112508", condition = "condition_EVENT_QUEST_START_918010", action = "action_EVENT_QUEST_START_918010", trigger_count = 0 },
	{ config_id = 1918011, name = "QUEST_START_918011", event = EventType.EVENT_QUEST_START, source = "4112514", condition = "", action = "action_EVENT_QUEST_START_918011", trigger_count = 0 },
	{ config_id = 1918012, name = "QUEST_START_918012", event = EventType.EVENT_QUEST_START, source = "4112516", condition = "", action = "action_EVENT_QUEST_START_918012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestVar2", value = 0, no_refresh = false }
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
		-- description = suite_2,
		monsters = { 918001, 918002, 918003, 918004, 918005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_918006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_918007", "QUEST_FINISH_918008", "QUEST_FINISH_918009", "QUEST_START_918010", "QUEST_START_918011", "QUEST_START_918012" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_918006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_918006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003918") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_918007(context, evt)
	-- 判断变量"QuestVar2"为3或4
	if ScriptLib.GetGroupVariableValue(context, "QuestVar2") == 3 or ScriptLib.GetGroupVariableValue(context, "QuestVar2") == 4 then
			return true
	end
	
	return false
	
end

-- 触发操作
function action_EVENT_QUEST_FINISH_918007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003918, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_918008(context, evt)
	-- 将本组内变量名为 "QuestVar2" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestVar2", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_918009(context, evt)
	-- 将本组内变量名为 "QuestVar2" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestVar2", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_918010(context, evt)
	-- 判断变量"QuestVar2"为3或4
	if ScriptLib.GetGroupVariableValue(context, "QuestVar2") == 3 or ScriptLib.GetGroupVariableValue(context, "QuestVar2") == 4 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_QUEST_START_918010(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003918, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_918011(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003918, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_918012(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003918, 1)
	
	return 0
end