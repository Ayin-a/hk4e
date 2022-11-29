-- 基础信息
local base_info = {
	group_id = 133004922
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 922001, monster_id = 22010101, pos = { x = 2105.752, y = 216.611, z = -487.500 }, rot = { x = 0.000, y = 174.942, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9013, area_id = 3 },
	{ config_id = 922002, monster_id = 21010201, pos = { x = 2106.711, y = 215.756, z = -490.121 }, rot = { x = 0.000, y = 198.020, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9010, area_id = 3 },
	{ config_id = 922003, monster_id = 21010201, pos = { x = 2104.302, y = 215.833, z = -490.479 }, rot = { x = 0.000, y = 189.912, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 9010, area_id = 3 },
	{ config_id = 922005, monster_id = 21011001, pos = { x = 2095.374, y = 219.127, z = -488.913 }, rot = { x = 0.000, y = 130.010, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 3 },
	{ config_id = 922006, monster_id = 21010901, pos = { x = 2112.822, y = 218.018, z = -491.562 }, rot = { x = 0.000, y = 245.268, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 3 }
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
	{ config_id = 1922004, name = "ANY_MONSTER_DIE_922004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_922004", action = "action_EVENT_ANY_MONSTER_DIE_922004", trigger_count = 0 },
	{ config_id = 1922007, name = "QUEST_START_922007", event = EventType.EVENT_QUEST_START, source = "800204", condition = "condition_EVENT_QUEST_START_922007", action = "action_EVENT_QUEST_START_922007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CampClear", value = 0, no_refresh = true }
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
		monsters = { 922001, 922002, 922003, 922005, 922006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_922004", "QUEST_START_922007" },
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
function condition_EVENT_ANY_MONSTER_DIE_922004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_922004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300492201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "CampClear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CampClear", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_922007(context, evt)
	-- 判断变量"CampClear"为1
	if ScriptLib.GetGroupVariableValue(context, "CampClear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_922007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300492201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end