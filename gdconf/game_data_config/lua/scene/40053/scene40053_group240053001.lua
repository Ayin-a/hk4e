-- 基础信息
local base_info = {
	group_id = 240053001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 26090101, pos = { x = 463.845, y = 68.553, z = 498.065 }, rot = { x = 0.000, y = 310.870, z = 0.000 }, level = 1, affix = { 6106, 1008 }, isElite = true, pose_id = 102 },
	{ config_id = 1002, monster_id = 26090101, pos = { x = 460.567, y = 68.553, z = 500.027 }, rot = { x = 0.000, y = 111.973, z = 0.000 }, level = 1, affix = { 6106, 1008 }, isElite = true, pose_id = 102 },
	{ config_id = 1004, monster_id = 26090401, pos = { x = 463.181, y = 68.553, z = 506.722 }, rot = { x = 0.000, y = 187.414, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 101 },
	{ config_id = 1005, monster_id = 26090501, pos = { x = 461.448, y = 68.553, z = 490.298 }, rot = { x = 0.000, y = 4.505, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 101 },
	{ config_id = 1006, monster_id = 26090701, pos = { x = 468.241, y = 68.553, z = 492.907 }, rot = { x = 0.000, y = 310.870, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 101 },
	{ config_id = 1007, monster_id = 26090901, pos = { x = 455.896, y = 68.553, z = 502.602 }, rot = { x = 0.000, y = 111.973, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 101 },
	{ config_id = 1008, monster_id = 26090801, pos = { x = 468.535, y = 68.553, z = 502.435 }, rot = { x = 0.000, y = 231.632, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 101 },
	{ config_id = 1009, monster_id = 26090201, pos = { x = 456.571, y = 68.553, z = 495.024 }, rot = { x = 0.000, y = 35.641, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 101 },
	{ config_id = 1012, monster_id = 26120201, pos = { x = 467.194, y = 68.553, z = 489.723 }, rot = { x = 0.000, y = 329.468, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 201 },
	{ config_id = 1013, monster_id = 26120101, pos = { x = 451.015, y = 68.566, z = 498.681 }, rot = { x = 0.000, y = 85.444, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, pose_id = 201 },
	{ config_id = 1014, monster_id = 26120301, pos = { x = 468.442, y = 68.554, z = 508.699 }, rot = { x = 0.000, y = 211.669, z = 0.000 }, level = 1, disableWander = true, affix = { 1008 }, isElite = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1016, gadget_id = 70211021, pos = { x = 462.276, y = 68.552, z = 498.987 }, rot = { x = 0.000, y = 209.828, z = 0.000 }, level = 1, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true },
	{ config_id = 1019, gadget_id = 70290487, pos = { x = 457.999, y = 68.559, z = 490.542 }, rot = { x = 0.000, y = 26.846, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1020, gadget_id = 70290487, pos = { x = 469.960, y = 68.559, z = 498.790 }, rot = { x = 0.000, y = 82.100, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1021, gadget_id = 70290487, pos = { x = 458.557, y = 68.559, z = 506.862 }, rot = { x = 0.000, y = 156.128, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "ANY_MONSTER_DIE_1003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1003", action = "action_EVENT_ANY_MONSTER_DIE_1003" },
	{ config_id = 1001010, name = "CHALLENGE_SUCCESS_1010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1010" },
	{ config_id = 1001011, name = "ANY_MONSTER_LIVE_1011", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1011", action = "action_EVENT_ANY_MONSTER_LIVE_1011" },
	{ config_id = 1001015, name = "CHALLENGE_FAIL_1015", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1015", trigger_count = 0 },
	{ config_id = 1001017, name = "DUNGEON_SETTLE_1017", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_1017", action = "action_EVENT_DUNGEON_SETTLE_1017" },
	{ config_id = 1001018, name = "TIME_AXIS_PASS_1018", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_1018", action = "action_EVENT_TIME_AXIS_PASS_1018", trigger_count = 0 },
	{ config_id = 1001022, name = "CHALLENGE_FAIL_1022", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1022", trigger_count = 0 }
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
		monsters = { 1001, 1002 },
		gadgets = { 1019, 1020, 1021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1003", "CHALLENGE_SUCCESS_1010", "ANY_MONSTER_LIVE_1011", "CHALLENGE_FAIL_1015", "DUNGEON_SETTLE_1017", "TIME_AXIS_PASS_1018", "CHALLENGE_FAIL_1022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1004, 1005, 1006, 1007, 1008, 1009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1012, 1013, 1014 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1019, 1020, 1021 },
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
function condition_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1003(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 5, 20, 240053001, 18, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为18，场上怪物最少6只，最多6只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 240053001, {1004,1005,1006,1007,1008,1009}, 18, 6, 6) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240053001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1011(context, evt)
	if 1012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1011(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 5, 40, 240053001, 3, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1015(context, evt)
	ScriptLib.KillMonsterTide(context, 240053001, 1)
	
	ScriptLib.RemoveExtraGroupSuite(context, 240053001, 2)
	
	ScriptLib.InitTimeAxis(context, "refresh_challenge", {3}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_1017(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_1017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240053001, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_1018(context, evt)
	if "refresh_challenge" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1018(context, evt)
	ScriptLib.RefreshGroup(context, { group_id = 240053001, suite = 1 }) 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1022(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, 240053001, 3)
	
	ScriptLib.InitTimeAxis(context, "refresh_challenge", {3}, false)
	
	return 0
end