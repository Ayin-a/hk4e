-- 基础信息
local base_info = {
	group_id = 133303366
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 366001, monster_id = 21010301, pos = { x = -988.017, y = 173.941, z = 3656.264 }, rot = { x = 0.000, y = 129.620, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 23 },
	{ config_id = 366002, monster_id = 21020101, pos = { x = -980.103, y = 175.930, z = 3654.894 }, rot = { x = 0.000, y = 189.760, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 401, area_id = 23 },
	{ config_id = 366003, monster_id = 21010201, pos = { x = -989.409, y = 173.269, z = 3653.297 }, rot = { x = 0.000, y = 100.990, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 9012, area_id = 23 }
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
	{ config_id = 1366004, name = "ANY_MONSTER_DIE_366004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_366004", action = "action_EVENT_ANY_MONSTER_DIE_366004", trigger_count = 0 },
	{ config_id = 1366005, name = "MONSTER_BATTLE_366005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_366005" },
	{ config_id = 1366006, name = "QUEST_START_366006", event = EventType.EVENT_QUEST_START, source = "7318504", condition = "condition_EVENT_QUEST_START_366006", action = "action_EVENT_QUEST_START_366006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "questfinish", value = 0, no_refresh = true }
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
		monsters = { 366001, 366002, 366003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_366004", "MONSTER_BATTLE_366005", "QUEST_START_366006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_366004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_366004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7318504_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "questfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_366005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7318503_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_366006(context, evt)
	-- 判断变量"questfinish"为1
	if ScriptLib.GetGroupVariableValue(context, "questfinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_366006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7318504_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end