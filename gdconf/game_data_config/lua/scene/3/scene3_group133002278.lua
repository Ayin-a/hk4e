-- 基础信息
local base_info = {
	group_id = 133002278
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1005, monster_id = 21010201, pos = { x = 1955.468, y = 219.777, z = -546.407 }, rot = { x = 0.000, y = 168.692, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 1006, monster_id = 21010101, pos = { x = 1955.297, y = 219.540, z = -552.537 }, rot = { x = 0.000, y = 19.776, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 1007, monster_id = 21010301, pos = { x = 1954.398, y = 219.716, z = -547.632 }, rot = { x = 0.000, y = 205.832, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 1008, monster_id = 21010301, pos = { x = 1953.488, y = 219.850, z = -552.002 }, rot = { x = 0.000, y = 49.989, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 3 },
	{ config_id = 1009, monster_id = 21030101, pos = { x = 1953.904, y = 220.769, z = -535.733 }, rot = { x = 0.000, y = 188.352, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 1010, monster_id = 21011001, pos = { x = 1955.996, y = 219.357, z = -562.940 }, rot = { x = 0.000, y = 10.418, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 1011, monster_id = 21020101, pos = { x = 1953.380, y = 219.497, z = -564.336 }, rot = { x = 0.000, y = 15.117, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 },
	{ config_id = 1012, monster_id = 21011001, pos = { x = 1957.455, y = 221.001, z = -537.842 }, rot = { x = 0.000, y = 202.807, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 }
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
	{ config_id = 1000364, name = "ANY_MONSTER_DIE_364", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_364", action = "action_EVENT_ANY_MONSTER_DIE_364", trigger_count = 0 },
	{ config_id = 1000365, name = "ANY_MONSTER_DIE_365", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_365", action = "action_EVENT_ANY_MONSTER_DIE_365", trigger_count = 0 }
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
		monsters = { 1005, 1006, 1007, 1008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_364" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1009, 1010, 1011, 1012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_365" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_364(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_364(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022781") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_365(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_365(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330022782") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end