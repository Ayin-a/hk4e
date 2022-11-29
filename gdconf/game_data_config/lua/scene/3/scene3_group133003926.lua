-- 基础信息
local base_info = {
	group_id = 133003926
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 926001, monster_id = 24010101, pos = { x = 2614.607, y = 270.359, z = -425.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 101, area_id = 4 }
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
	{ config_id = 1926002, name = "CHALLENGE_FAIL_926002", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_926002", trigger_count = 0 },
	{ config_id = 1926003, name = "MONSTER_BATTLE_926003", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_926003" },
	{ config_id = 1926004, name = "CHALLENGE_SUCCESS_926004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_926004", trigger_count = 0 },
	{ config_id = 1926005, name = "QUEST_FINISH_926005", event = EventType.EVENT_QUEST_FINISH, source = "1908715", condition = "", action = "action_EVENT_QUEST_FINISH_926005", trigger_count = 0 },
	{ config_id = 1926007, name = "QUEST_START_926007", event = EventType.EVENT_QUEST_START, source = "1908706", condition = "", action = "action_EVENT_QUEST_START_926007", trigger_count = 0 }
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
		monsters = { 926001 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_FAIL_926002", "MONSTER_BATTLE_926003", "CHALLENGE_SUCCESS_926004", "QUEST_FINISH_926005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_926007" },
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
function action_EVENT_CHALLENGE_FAIL_926002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300392602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_926003(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 70, 133003926, 1, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_KilMonster_InTime")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_926004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300392601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_926005(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003926, EntityType.MONSTER, 926001)
	
		
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003926, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_926007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003926, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end