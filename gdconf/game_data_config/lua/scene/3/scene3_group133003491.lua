-- 基础信息
local base_info = {
	group_id = 133003491
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 491001, monster_id = 28030501, pos = { x = 2231.971, y = 202.400, z = -1050.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 491002, monster_id = 28030501, pos = { x = 2220.095, y = 202.400, z = -1049.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 491003, monster_id = 28030501, pos = { x = 2245.222, y = 205.831, z = -1066.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 491004, monster_id = 28030501, pos = { x = 2245.566, y = 202.400, z = -1046.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 491005, monster_id = 28030504, pos = { x = 2201.922, y = 202.400, z = -1034.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 491008, monster_id = 28030504, pos = { x = 2231.971, y = 202.400, z = -1050.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 491009, monster_id = 28030504, pos = { x = 2220.095, y = 202.400, z = -1049.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 491010, monster_id = 28030504, pos = { x = 2245.222, y = 205.831, z = -1066.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "鸟类", area_id = 1 },
	{ config_id = 491011, monster_id = 28030504, pos = { x = 2245.566, y = 202.400, z = -1046.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "鸟类", area_id = 1 }
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
	{ config_id = 1491006, name = "QUEST_START_491006", event = EventType.EVENT_QUEST_START, source = "2004805", condition = "condition_EVENT_QUEST_START_491006", action = "action_EVENT_QUEST_START_491006" },
	{ config_id = 1491007, name = "ANY_MONSTER_DIE_491007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_491007", action = "action_EVENT_ANY_MONSTER_DIE_491007", trigger_count = 0 }
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
		monsters = { 491001, 491002, 491003, 491004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 491005, 491008, 491009, 491010, 491011 },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_491006", "ANY_MONSTER_DIE_491007" },
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
function condition_EVENT_QUEST_START_491006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) < 5 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_QUEST_START_491006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300349101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_491007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) < 5 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_491007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300349101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end