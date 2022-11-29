-- 基础信息
local base_info = {
	group_id = 133003917
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 917001, monster_id = 21020201, pos = { x = 2372.081, y = 226.181, z = -1169.550 }, rot = { x = 0.000, y = 224.145, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, affix = { 1007 }, pose_id = 401, area_id = 1 },
	{ config_id = 917002, monster_id = 21010201, pos = { x = 2372.888, y = 226.184, z = -1175.384 }, rot = { x = 0.000, y = 302.950, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 917003, monster_id = 21010201, pos = { x = 2367.123, y = 225.568, z = -1171.802 }, rot = { x = 0.000, y = 125.388, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 917004, monster_id = 21010201, pos = { x = 2367.968, y = 225.912, z = -1176.971 }, rot = { x = 0.000, y = 22.511, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 1 },
	{ config_id = 917005, monster_id = 21030201, pos = { x = 2368.171, y = 225.472, z = -1168.214 }, rot = { x = 0.000, y = 153.617, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, area_id = 1 }
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
	{ config_id = 1917006, name = "QUEST_FINISH_917006", event = EventType.EVENT_QUEST_FINISH, source = "4112503", condition = "", action = "action_EVENT_QUEST_FINISH_917006", trigger_count = 0 },
	{ config_id = 1917007, name = "ANY_MONSTER_DIE_917007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_917007", action = "action_EVENT_ANY_MONSTER_DIE_917007" },
	{ config_id = 1917008, name = "QUEST_FINISH_917008", event = EventType.EVENT_QUEST_FINISH, source = "4112506", condition = "condition_EVENT_QUEST_FINISH_917008", action = "action_EVENT_QUEST_FINISH_917008", trigger_count = 0 },
	{ config_id = 1917009, name = "QUEST_FINISH_917009", event = EventType.EVENT_QUEST_FINISH, source = "4112502", condition = "", action = "action_EVENT_QUEST_FINISH_917009", trigger_count = 0 },
	{ config_id = 1917010, name = "QUEST_START_917010", event = EventType.EVENT_QUEST_START, source = "4112506", condition = "condition_EVENT_QUEST_START_917010", action = "action_EVENT_QUEST_START_917010", trigger_count = 0 },
	{ config_id = 1917011, name = "QUEST_START_917011", event = EventType.EVENT_QUEST_START, source = "4112513", condition = "condition_EVENT_QUEST_START_917011", action = "action_EVENT_QUEST_START_917011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestVar1", value = 0, no_refresh = false }
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
		monsters = { 917001, 917002, 917003, 917004, 917005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_917007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_917006", "QUEST_FINISH_917008", "QUEST_FINISH_917009", "QUEST_START_917010", "QUEST_START_917011" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_917006(context, evt)
	-- 将本组内变量名为 "QuestVar1" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestVar1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_917007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_917007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003917") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_917008(context, evt)
	-- 判断变量"QuestVar1"为1或2
	if ScriptLib.GetGroupVariableValue(context, "QuestVar1") == 1 or ScriptLib.GetGroupVariableValue(context, "QuestVar1") == 2 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_QUEST_FINISH_917008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003917, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_917009(context, evt)
	-- 将本组内变量名为 "QuestVar1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestVar1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_917010(context, evt)
	-- 判断变量"QuestVar1"为1或2
	if ScriptLib.GetGroupVariableValue(context, "QuestVar1") == 1 or ScriptLib.GetGroupVariableValue(context, "QuestVar1") == 2 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_QUEST_START_917010(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003917, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_917011(context, evt)
	-- 判断变量"QuestVar1"为1或2
	if ScriptLib.GetGroupVariableValue(context, "QuestVar1") == 1 or ScriptLib.GetGroupVariableValue(context, "QuestVar1") == 2 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_QUEST_START_917011(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003917, 1)
	
	return 0
end