-- 基础信息
local base_info = {
	group_id = 233402003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 26010101, pos = { x = 0.131, y = 0.326, z = -9.149 }, rot = { x = 0.000, y = 359.870, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 21011002, pos = { x = -10.072, y = 0.326, z = 0.007 }, rot = { x = 0.000, y = 92.289, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 21010201, pos = { x = 9.774, y = 0.326, z = -0.114 }, rot = { x = 0.000, y = 267.909, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 20010801, pos = { x = 7.166, y = 0.326, z = -6.621 }, rot = { x = 0.000, y = 315.489, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 20010801, pos = { x = -6.890, y = 0.326, z = -7.728 }, rot = { x = 0.000, y = 45.925, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 21010201, pos = { x = -0.084, y = 0.326, z = -11.007 }, rot = { x = 0.000, y = 2.897, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 26010101, pos = { x = -7.933, y = 0.326, z = 5.128 }, rot = { x = 0.000, y = 116.050, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 21011002, pos = { x = 7.784, y = 0.326, z = 5.255 }, rot = { x = 0.000, y = 230.859, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 20010801, pos = { x = 5.009, y = 0.326, z = 9.440 }, rot = { x = 0.000, y = 206.986, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 21010201, pos = { x = -4.703, y = 0.326, z = 9.253 }, rot = { x = 0.000, y = 160.136, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 26010101, pos = { x = 10.160, y = 0.028, z = 4.002 }, rot = { x = 0.000, y = 246.558, z = 0.000 }, level = 1 },
	{ config_id = 3020, monster_id = 20010801, pos = { x = 0.163, y = 0.028, z = 11.508 }, rot = { x = 0.000, y = 180.176, z = 0.000 }, level = 1 },
	{ config_id = 3022, monster_id = 26010101, pos = { x = -10.313, y = 0.028, z = 3.870 }, rot = { x = 0.000, y = 107.987, z = 0.000 }, level = 1 },
	{ config_id = 3024, monster_id = 21011002, pos = { x = 8.434, y = 0.028, z = -3.680 }, rot = { x = 0.000, y = 293.991, z = 0.000 }, level = 1 },
	{ config_id = 3025, monster_id = 26010101, pos = { x = -7.769, y = 0.028, z = -3.787 }, rot = { x = 0.000, y = 67.337, z = 0.000 }, level = 1 },
	{ config_id = 3028, monster_id = 21010201, pos = { x = 0.321, y = 0.028, z = 9.051 }, rot = { x = 0.000, y = 180.090, z = 0.000 }, level = 1 },
	{ config_id = 3038, monster_id = 20010901, pos = { x = 0.013, y = 0.028, z = -6.716 }, rot = { x = 0.000, y = 0.745, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3011, gadget_id = 70900205, pos = { x = 4.643, y = -1.133, z = 2.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003012, name = "ANY_MONSTER_LIVE_3012", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_3012" },
	{ config_id = 1003013, name = "CHALLENGE_SUCCESS_3013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3013" },
	{ config_id = 1003014, name = "CHALLENGE_FAIL_3014", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3014" },
	{ config_id = 1003015, name = "MONSTER_TIDE_DIE_3015", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_3015", action = "action_EVENT_MONSTER_TIDE_DIE_3015" },
	{ config_id = 1003026, name = "ANY_MONSTER_DIE_3026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3026", action = "action_EVENT_ANY_MONSTER_DIE_3026" },
	{ config_id = 1003035, name = "MONSTER_TIDE_DIE_3035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_3035", action = "action_EVENT_MONSTER_TIDE_DIE_3035" },
	{ config_id = 1003046, name = "ANY_MONSTER_DIE_3046", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3046", action = "action_EVENT_ANY_MONSTER_DIE_3046" }
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
	suite = 5,
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
		gadgets = { 3011 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3012", "CHALLENGE_SUCCESS_3013", "CHALLENGE_FAIL_3014", "MONSTER_TIDE_DIE_3015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3019, 3022, 3038 },
		gadgets = { 3011 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3013", "CHALLENGE_FAIL_3014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 3011 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3013", "CHALLENGE_FAIL_3014", "MONSTER_TIDE_DIE_3035" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 3011 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3013", "CHALLENGE_FAIL_3014" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 3011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 3011 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3013", "CHALLENGE_FAIL_3014", "ANY_MONSTER_DIE_3046" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3012(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 233402003, 17, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3013(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233402001) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233402001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组233402002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233402002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233402002, 2001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组233402001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233402001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233402005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233402005, 5001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233402005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233402005, 5002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233402003, suite = 5 }) then
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
function condition_EVENT_MONSTER_TIDE_DIE_3015(context, evt)
	if 14 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233402003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3026(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233402003, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_3035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3035(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233402003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3046(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3046(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233402003, 3)
	
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少4只，最多4只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 233402003, {3025,3028,3029,3030,3031,3032,3033,3034}, 6, 4, 4) then
		return -1
	end
	
	return 0
end