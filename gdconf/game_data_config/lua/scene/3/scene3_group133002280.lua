-- 基础信息
local base_info = {
	group_id = 133002280
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1013, monster_id = 21010201, pos = { x = 2020.300, y = 204.597, z = -924.087 }, rot = { x = 0.000, y = 168.692, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 1014, monster_id = 21010101, pos = { x = 2019.705, y = 204.823, z = -928.930 }, rot = { x = 0.000, y = 19.776, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 1015, monster_id = 21010301, pos = { x = 2017.238, y = 204.962, z = -924.719 }, rot = { x = 0.000, y = 205.832, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 1016, monster_id = 21010301, pos = { x = 2017.588, y = 205.566, z = -929.464 }, rot = { x = 0.000, y = 49.989, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 1017, monster_id = 21010501, pos = { x = 2019.036, y = 204.737, z = -915.550 }, rot = { x = 0.000, y = 188.352, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 1018, monster_id = 21011001, pos = { x = 2024.658, y = 205.187, z = -936.267 }, rot = { x = 0.000, y = 336.186, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 1019, monster_id = 21020201, pos = { x = 2023.186, y = 205.427, z = -937.406 }, rot = { x = 0.000, y = 345.084, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 1020, monster_id = 21011001, pos = { x = 2022.333, y = 204.854, z = -915.787 }, rot = { x = 0.000, y = 202.807, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 }
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
	{ config_id = 1000371, name = "ANY_MONSTER_DIE_371", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_371", action = "action_EVENT_ANY_MONSTER_DIE_371", trigger_count = 0 },
	{ config_id = 1000372, name = "ANY_MONSTER_DIE_372", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_372", action = "action_EVENT_ANY_MONSTER_DIE_372", trigger_count = 0 }
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
		monsters = { 1013, 1014, 1015, 1016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_371" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1017, 1018, 1019, 1020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_372" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_371(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_371(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_372(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_372(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022802") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end