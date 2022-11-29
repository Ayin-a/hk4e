-- 基础信息
local base_info = {
	group_id = 133310582
}

-- Trigger变量
local defs = {
	inner_region = 582004,
	related_region = 582004,
	outer_region = 582004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 582008, monster_id = 25210209, pos = { x = -2099.122, y = 297.688, z = 3956.861 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 9009 }, area_id = 26 },
	{ config_id = 582009, monster_id = 25210208, pos = { x = -2095.300, y = 297.520, z = 3959.480 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 9009 }, area_id = 26 },
	{ config_id = 582010, monster_id = 25210507, pos = { x = -2108.628, y = 296.452, z = 3964.831 }, rot = { x = 0.000, y = 117.334, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 9009 }, area_id = 26 },
	{ config_id = 582012, monster_id = 25210108, pos = { x = -2097.652, y = 297.275, z = 3959.223 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 9009 }, area_id = 26 },
	{ config_id = 582013, monster_id = 25210208, pos = { x = -2108.727, y = 296.123, z = 3968.729 }, rot = { x = 0.000, y = 129.723, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 9009 }, area_id = 26 },
	{ config_id = 582014, monster_id = 25210407, pos = { x = -2099.491, y = 296.914, z = 3960.250 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 9009 }, area_id = 26 },
	{ config_id = 582016, monster_id = 25210108, pos = { x = -2111.144, y = 297.267, z = 3962.468 }, rot = { x = 0.000, y = 85.211, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 9009 }, area_id = 26 },
	{ config_id = 582017, monster_id = 25210208, pos = { x = -2097.078, y = 297.957, z = 3956.401 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 9009 }, area_id = 26 },
	{ config_id = 582018, monster_id = 25210407, pos = { x = -2097.023, y = 297.210, z = 3961.500 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 35, drop_id = 1000100, affix = { 9009 }, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 582001, gadget_id = 70360001, pos = { x = -2102.969, y = 296.720, z = 3961.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 582011, gadget_id = 70950156, pos = { x = -2103.209, y = 296.602, z = 3963.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 582004, shape = RegionShape.SPHERE, radius = 16, pos = { x = -2103.209, y = 296.602, z = 3963.134 }, area_id = 26 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 582005, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2100.526, y = 296.851, z = 3960.063 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1582002, name = "ANY_MONSTER_DIE_582002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582002", action = "action_EVENT_ANY_MONSTER_DIE_582002" },
	{ config_id = 1582003, name = "ANY_MONSTER_DIE_582003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_582003", action = "action_EVENT_ANY_MONSTER_DIE_582003" },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1582005, name = "ENTER_REGION_582005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_582005", action = "action_EVENT_ENTER_REGION_582005" },
	{ config_id = 1582006, name = "CHALLENGE_SUCCESS_582006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_582006", trigger_count = 0 },
	{ config_id = 1582007, name = "CHALLENGE_FAIL_582007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_582007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
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
		monsters = { 582010, 582013, 582016 },
		gadgets = { 582001, 582011 },
		regions = { 582004, 582005 },
		triggers = { "ANY_MONSTER_DIE_582002", "ENTER_REGION_582005", "CHALLENGE_SUCCESS_582006", "CHALLENGE_FAIL_582007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 582008, 582014, 582018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_582003" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 582009, 582012, 582017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_582002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310582, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_582003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_582003(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310582, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_582005(context, evt)
	if evt.param1 ~= 582005 then return false end
	
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "isFinish", 133310582) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_582005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310582, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310582, 3)
	
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 300, 133310582, 9, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_582006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "302408") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_582007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310582, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310582, 3)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "302408fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V3.0"