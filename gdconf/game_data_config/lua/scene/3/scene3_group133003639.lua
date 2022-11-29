-- 基础信息
local base_info = {
	group_id = 133003639
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 639007, monster_id = 20010501, pos = { x = 2346.635, y = 283.605, z = -1582.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 1 },
	{ config_id = 639008, monster_id = 20010501, pos = { x = 2345.869, y = 283.115, z = -1577.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 1 },
	{ config_id = 639009, monster_id = 20010501, pos = { x = 2353.965, y = 283.972, z = -1571.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 1 },
	{ config_id = 639010, monster_id = 20010701, pos = { x = 2352.727, y = 284.613, z = -1579.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 1 },
	{ config_id = 639011, monster_id = 20010601, pos = { x = 2356.888, y = 284.975, z = -1574.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_id = 1000100, area_id = 1 }
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
	{ config_id = 1639006, name = "ANY_MONSTER_DIE_639006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_639006", action = "action_EVENT_ANY_MONSTER_DIE_639006" }
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
		monsters = { 639007, 639008, 639009, 639010, 639011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_639006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
function condition_EVENT_ANY_MONSTER_DIE_639006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_639006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003639") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end