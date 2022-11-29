-- 基础信息
local base_info = {
	group_id = 230603003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010301, pos = { x = 6.466, y = 0.034, z = 9.253 }, rot = { x = 0.000, y = 195.600, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 21010301, pos = { x = -6.652, y = 0.034, z = 9.214 }, rot = { x = 0.000, y = 159.100, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 21010301, pos = { x = -6.905, y = 0.034, z = -9.417 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 21010301, pos = { x = 10.963, y = 0.034, z = 1.753 }, rot = { x = 0.000, y = 263.500, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 21010301, pos = { x = 5.878, y = 0.034, z = -10.005 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 21010301, pos = { x = -11.346, y = 0.034, z = -1.164 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 21010301, pos = { x = 11.732, y = 0.034, z = -0.866 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 21010301, pos = { x = 4.046, y = 0.034, z = 8.611 }, rot = { x = 0.000, y = 198.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 21010401, pos = { x = 2.636, y = 0.034, z = -7.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 21010401, pos = { x = -5.214, y = 0.034, z = -7.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, monster_id = 21030304, pos = { x = -2.208, y = 0.034, z = -9.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, monster_id = 21010301, pos = { x = 11.270, y = 0.034, z = -8.705 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1 },
	{ config_id = 3013, monster_id = 21010301, pos = { x = 2.629, y = 0.034, z = -10.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, monster_id = 21010301, pos = { x = -11.443, y = 0.034, z = -8.884 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 21010402, pos = { x = 0.067, y = 0.034, z = 9.619 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 402 },
	{ config_id = 3016, monster_id = 21010301, pos = { x = 10.723, y = 0.034, z = -0.204 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, monster_id = 21010301, pos = { x = -12.004, y = 0.034, z = -0.084 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, monster_id = 21010402, pos = { x = 1.667, y = 0.034, z = -9.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 402 },
	{ config_id = 3019, monster_id = 21010402, pos = { x = 0.106, y = 0.034, z = 7.296 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 402 },
	{ config_id = 3020, monster_id = 21010301, pos = { x = 3.411, y = 0.034, z = 7.060 }, rot = { x = 0.000, y = 196.570, z = 0.000 }, level = 1 },
	{ config_id = 3021, monster_id = 21010301, pos = { x = -2.637, y = 0.034, z = -10.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, monster_id = 21020201, pos = { x = 0.006, y = 0.034, z = -7.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3025, monster_id = 21010301, pos = { x = -10.134, y = 0.034, z = 0.059 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, monster_id = 21010301, pos = { x = 10.410, y = 0.034, z = 0.099 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3027, monster_id = 21010301, pos = { x = -5.366, y = 0.034, z = 8.672 }, rot = { x = 0.000, y = 157.300, z = 0.000 }, level = 1 },
	{ config_id = 3028, monster_id = 21010301, pos = { x = -11.562, y = 0.034, z = 1.392 }, rot = { x = 0.000, y = 90.850, z = 0.000 }, level = 1 },
	{ config_id = 3039, monster_id = 21010301, pos = { x = -3.810, y = 0.034, z = 7.136 }, rot = { x = 0.000, y = 163.200, z = 0.000 }, level = 1 },
	{ config_id = 3041, monster_id = 21030303, pos = { x = -3.815, y = 0.034, z = -9.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3030, gadget_id = 70900205, pos = { x = 6.178, y = -1.176, z = 3.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003031, name = "ANY_MONSTER_LIVE_3031", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3031", action = "action_EVENT_ANY_MONSTER_LIVE_3031" },
	{ config_id = 1003032, name = "ANY_MONSTER_DIE_3032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3032", action = "action_EVENT_ANY_MONSTER_DIE_3032" },
	{ config_id = 1003033, name = "ANY_MONSTER_DIE_3033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3033", action = "action_EVENT_ANY_MONSTER_DIE_3033" },
	{ config_id = 1003034, name = "ANY_MONSTER_DIE_3034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3034", action = "action_EVENT_ANY_MONSTER_DIE_3034" },
	{ config_id = 1003035, name = "CHALLENGE_SUCCESS_3035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "" },
	{ config_id = 1003036, name = "CHALLENGE_FAIL_3036", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3036" },
	{ config_id = 1003037, name = "ANY_MONSTER_DIE_3037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3037", action = "action_EVENT_ANY_MONSTER_DIE_3037" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 3030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004, 3005, 3028 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3031", "ANY_MONSTER_DIE_3032", "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3006, 3007, 3008, 3009, 3010, 3027 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3033", "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3012, 3013, 3014, 3015, 3021 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3034", "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 3011, 3016, 3017, 3018, 3020, 3039 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036", "ANY_MONSTER_DIE_3037" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 3019, 3022, 3025, 3026, 3041 },
		gadgets = { 3030 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3035", "CHALLENGE_FAIL_3036" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3031(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3031(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 2, 300, 230603003, 28, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230603003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230603003, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230603003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230603003, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230603003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230603003, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3036(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230603003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230603003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为4
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3037(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230603003, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end