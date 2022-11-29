-- 基础信息
local base_info = {
	group_id = 233401003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20010801, pos = { x = 4.829, y = 0.025, z = -8.950 }, rot = { x = 0.000, y = 330.500, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 20010901, pos = { x = 0.162, y = 0.011, z = -10.463 }, rot = { x = 0.000, y = 3.246, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 20010801, pos = { x = -4.555, y = 0.020, z = -9.075 }, rot = { x = 0.000, y = 26.525, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 20010901, pos = { x = 7.704, y = 0.035, z = -6.980 }, rot = { x = 0.000, y = 314.183, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 20010801, pos = { x = -7.667, y = 0.014, z = -7.020 }, rot = { x = 0.000, y = 48.912, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 20010801, pos = { x = 9.715, y = 0.028, z = -4.461 }, rot = { x = 0.000, y = 296.033, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 20010801, pos = { x = -9.571, y = 0.035, z = -4.144 }, rot = { x = 0.000, y = 68.122, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 21011002, pos = { x = 10.148, y = 0.014, z = -0.061 }, rot = { x = 0.000, y = 270.478, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 20010801, pos = { x = 9.770, y = 0.034, z = 4.699 }, rot = { x = 0.000, y = 243.949, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 20010901, pos = { x = -9.286, y = 0.018, z = -0.006 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 20010801, pos = { x = 7.313, y = 0.028, z = 7.879 }, rot = { x = 0.000, y = 220.711, z = 0.000 }, level = 1 },
	{ config_id = 3016, monster_id = 20010801, pos = { x = 4.443, y = 0.028, z = 8.841 }, rot = { x = 0.000, y = 205.026, z = 0.000 }, level = 1 },
	{ config_id = 3017, monster_id = 20010801, pos = { x = 0.115, y = 0.028, z = 9.860 }, rot = { x = 0.000, y = 181.372, z = 0.000 }, level = 1 },
	{ config_id = 3018, monster_id = 21011002, pos = { x = -4.613, y = 0.028, z = 8.103 }, rot = { x = 0.000, y = 149.930, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 20010904, pos = { x = -7.544, y = 0.028, z = 4.621 }, rot = { x = 0.000, y = 127.693, z = 0.000 }, level = 1 },
	{ config_id = 3020, monster_id = 20010801, pos = { x = 7.868, y = 0.028, z = -5.773 }, rot = { x = 0.000, y = 314.245, z = 0.000 }, level = 1 },
	{ config_id = 3022, monster_id = 20010801, pos = { x = 4.814, y = 0.028, z = -7.671 }, rot = { x = 0.000, y = 333.028, z = 0.000 }, level = 1 },
	{ config_id = 3023, monster_id = 20010801, pos = { x = 0.361, y = 0.028, z = -9.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, monster_id = 21011002, pos = { x = -3.904, y = 0.028, z = -8.111 }, rot = { x = 0.000, y = 20.455, z = 0.000 }, level = 1 },
	{ config_id = 3025, monster_id = 20010901, pos = { x = -6.830, y = 0.028, z = -6.261 }, rot = { x = 0.000, y = 40.027, z = 0.000 }, level = 1, affix = { 6101 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3011, gadget_id = 70900205, pos = { x = 7.292, y = -1.133, z = 2.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003012, name = "ANY_MONSTER_LIVE_3012", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_3012" },
	{ config_id = 1003013, name = "CHALLENGE_SUCCESS_3013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3013" },
	{ config_id = 1003014, name = "CHALLENGE_FAIL_3014", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3014" },
	{ config_id = 1003021, name = "MONSTER_TIDE_DIE_3021", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_3021", action = "action_EVENT_MONSTER_TIDE_DIE_3021" }
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
		gadgets = { 3011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3011 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3012", "CHALLENGE_SUCCESS_3013", "CHALLENGE_FAIL_3014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 3011 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3013", "CHALLENGE_FAIL_3014" },
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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 233401003, 20, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3013(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233401001) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233401001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组233401002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233401002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233401002, 2001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组233401001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233401001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233401005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233401005, 5001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233401005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233401005, 5002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233401003, suite = 1 }) then
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
function condition_EVENT_MONSTER_TIDE_DIE_3021(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3021(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233401003, 3)
	
	return 0
end