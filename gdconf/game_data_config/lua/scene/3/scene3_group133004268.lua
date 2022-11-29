-- 基础信息
local base_info = {
	group_id = 133004268
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 761, monster_id = 20011201, pos = { x = 2642.184, y = 202.927, z = -675.876 }, rot = { x = 0.000, y = 133.354, z = 0.000 }, level = 13, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 762, monster_id = 20011201, pos = { x = 2650.214, y = 202.958, z = -670.244 }, rot = { x = 0.000, y = 201.868, z = 0.000 }, level = 13, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 763, monster_id = 20011201, pos = { x = 2646.625, y = 202.718, z = -683.533 }, rot = { x = 0.000, y = 14.839, z = 0.000 }, level = 13, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 764, monster_id = 20011201, pos = { x = 2645.794, y = 203.003, z = -672.790 }, rot = { x = 0.000, y = 153.800, z = 0.000 }, level = 13, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 765, monster_id = 20011201, pos = { x = 2654.225, y = 203.005, z = -674.789 }, rot = { x = 0.000, y = 226.298, z = 0.000 }, level = 13, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 766, monster_id = 20011201, pos = { x = 2650.972, y = 203.016, z = -672.256 }, rot = { x = 0.000, y = 226.298, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 767, monster_id = 20011201, pos = { x = 2643.598, y = 202.959, z = -679.435 }, rot = { x = 0.000, y = 78.468, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 768, monster_id = 20011201, pos = { x = 2649.711, y = 202.761, z = -683.964 }, rot = { x = 0.000, y = 335.037, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 769, monster_id = 20011201, pos = { x = 2643.576, y = 202.933, z = -673.253 }, rot = { x = 0.000, y = 174.210, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 770, monster_id = 20011201, pos = { x = 2643.832, y = 202.828, z = -682.066 }, rot = { x = 0.000, y = 174.210, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 771, monster_id = 20011201, pos = { x = 2652.960, y = 202.792, z = -684.151 }, rot = { x = 0.000, y = 319.674, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 772, monster_id = 20011201, pos = { x = 2654.948, y = 202.914, z = -670.798 }, rot = { x = 0.000, y = 239.635, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 773, monster_id = 20011201, pos = { x = 2644.602, y = 203.022, z = -676.291 }, rot = { x = 0.000, y = 97.638, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 774, monster_id = 20011201, pos = { x = 2647.636, y = 202.946, z = -681.964 }, rot = { x = 0.000, y = 353.091, z = 0.000 }, level = 16, drop_id = 1000100, pose_id = 901, area_id = 1 },
	{ config_id = 780, monster_id = 20011301, pos = { x = 2658.396, y = 202.800, z = -672.277 }, rot = { x = 0.000, y = 268.113, z = 0.000 }, level = 16, drop_id = 1000100, affix = { 1008, 1009, 1018 }, isElite = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1472, gadget_id = 70300086, pos = { x = 2643.405, y = 201.405, z = -665.300 }, rot = { x = 0.000, y = 0.000, z = 281.072 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000317, name = "ANY_MONSTER_LIVE_317", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_317", action = "action_EVENT_ANY_MONSTER_LIVE_317" },
	{ config_id = 1000318, name = "CHALLENGE_SUCCESS_318", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "3004268", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_318" },
	{ config_id = 1000319, name = "ANY_MONSTER_DIE_319", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_319", action = "action_EVENT_ANY_MONSTER_DIE_319" },
	{ config_id = 1000320, name = "ANY_MONSTER_DIE_320", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_320", action = "action_EVENT_ANY_MONSTER_DIE_320" },
	{ config_id = 1000321, name = "CHALLENGE_FAIL_321", event = EventType.EVENT_CHALLENGE_FAIL, source = "3004268", condition = "", action = "action_EVENT_CHALLENGE_FAIL_321" }
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
		gadgets = { 1472 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 761, 762, 763, 764, 765 },
		gadgets = { 1472 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_317", "CHALLENGE_SUCCESS_318", "ANY_MONSTER_DIE_319", "CHALLENGE_FAIL_321" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 766, 767, 768, 769, 770 },
		gadgets = { 1472 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_320" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 771, 772, 773, 774, 780 },
		gadgets = { 1472 },
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
function condition_EVENT_ANY_MONSTER_LIVE_317(context, evt)
	if 761 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_317(context, evt)
	-- 创建编号为3004268（该挑战的识别id),挑战内容为3001的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 3004268, 3001, 120, 133004268, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_318(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300426103") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004268, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_319(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_319(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004268, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_320(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_320(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004268, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_321(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300426104") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004268, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end