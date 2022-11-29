-- 基础信息
local base_info = {
	group_id = 133002411
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 411001, monster_id = 21010201, pos = { x = 1235.333, y = 372.032, z = -933.566 }, rot = { x = 0.000, y = 237.013, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 411002, monster_id = 21010201, pos = { x = 1236.420, y = 372.266, z = -935.490 }, rot = { x = 0.000, y = 237.013, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 411003, monster_id = 21010901, pos = { x = 1236.791, y = 372.978, z = -932.457 }, rot = { x = 0.000, y = 237.013, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 411004, monster_id = 21010901, pos = { x = 1238.178, y = 373.195, z = -934.586 }, rot = { x = 0.000, y = 237.013, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
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
	{ config_id = 1411005, name = "ANY_MONSTER_DIE_411005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_411005", action = "action_EVENT_ANY_MONSTER_DIE_411005" },
	{ config_id = 1411006, name = "ANY_MONSTER_DIE_411006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_411006", action = "action_EVENT_ANY_MONSTER_DIE_411006" }
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
		monsters = { 411001, 411002, 411003, 411004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_411005", "ANY_MONSTER_DIE_411006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_411005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_411005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121207") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_411006(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_411006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4121205") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end