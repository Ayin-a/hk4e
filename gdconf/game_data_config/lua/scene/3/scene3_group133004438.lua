-- 基础信息
local base_info = {
	group_id = 133004438
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 438001, monster_id = 21020101, pos = { x = 2360.815, y = 207.557, z = -1122.366 }, rot = { x = 0.000, y = 321.761, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 401, area_id = 1 },
	{ config_id = 438002, monster_id = 21030101, pos = { x = 2356.623, y = 207.397, z = -1118.681 }, rot = { x = 0.000, y = 95.841, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 438003, monster_id = 21010301, pos = { x = 2358.620, y = 207.238, z = -1121.057 }, rot = { x = 0.000, y = 105.190, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 438004, monster_id = 21010301, pos = { x = 2361.399, y = 207.638, z = -1119.362 }, rot = { x = 0.000, y = 205.019, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 }
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
	{ config_id = 1438005, name = "QUEST_START_438005", event = EventType.EVENT_QUEST_START, source = "1900602", condition = "condition_EVENT_QUEST_START_438005", action = "action_EVENT_QUEST_START_438005", trigger_count = 0 },
	{ config_id = 1438006, name = "ANY_MONSTER_DIE_438006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_438006", action = "action_EVENT_ANY_MONSTER_DIE_438006", trigger_count = 0 }
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
		monsters = { 438001, 438002, 438003, 438004 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_438005", "ANY_MONSTER_DIE_438006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_438005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_438005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044381") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_438006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_438006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330044381") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end