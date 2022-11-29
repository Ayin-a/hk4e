-- 基础信息
local base_info = {
	group_id = 133104901
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 901001, monster_id = 21011201, pos = { x = 980.219, y = 200.310, z = 224.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 901002, monster_id = 21011201, pos = { x = 975.713, y = 200.069, z = 223.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 901003, monster_id = 21010701, pos = { x = 978.404, y = 200.316, z = 226.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 901004, monster_id = 21030201, pos = { x = 977.990, y = 200.231, z = 225.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 901005, monster_id = 21020101, pos = { x = 980.114, y = 200.358, z = 225.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 901007, monster_id = 21020101, pos = { x = 975.798, y = 200.167, z = 225.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 901008, monster_id = 21030101, pos = { x = 978.656, y = 200.217, z = 223.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_id = 1000100, area_id = 5 },
	{ config_id = 901010, monster_id = 24010201, pos = { x = 984.943, y = 200.811, z = 236.976 }, rot = { x = 0.000, y = 338.193, z = 0.000 }, level = 16, drop_id = 1000100, affix = { 1008 }, isElite = true, pose_id = 100, area_id = 5 }
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
	{ config_id = 1901006, name = "ANY_MONSTER_DIE_901006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_901006", action = "action_EVENT_ANY_MONSTER_DIE_901006", trigger_count = 0 },
	{ config_id = 1901009, name = "ANY_MONSTER_DIE_901009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_901009", action = "action_EVENT_ANY_MONSTER_DIE_901009", trigger_count = 0 },
	{ config_id = 1901011, name = "ANY_MONSTER_LIVE_901011", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_901011", action = "action_EVENT_ANY_MONSTER_LIVE_901011", trigger_count = 0 },
	{ config_id = 1901012, name = "QUEST_FINISH_901012", event = EventType.EVENT_QUEST_FINISH, source = "2200404", condition = "", action = "action_EVENT_QUEST_FINISH_901012", trigger_count = 0 }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 901001, 901002, 901003, 901004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_901006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 901005, 901007, 901008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_901009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 901010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_901011", "QUEST_FINISH_901012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_901006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_901006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331049011") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_901009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_901009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331049012") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_901011(context, evt)
	if 901010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_901011(context, evt)
	-- 锁住configid为 901010 的怪物的血量信息，直至解锁，期间怪物无敌
	if 0 ~= ScriptLib.LockMonsterHp(context, 901010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : lock_monster_hp_by_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_901012(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133104901, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end