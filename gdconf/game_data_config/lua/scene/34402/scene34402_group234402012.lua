-- 基础信息
local base_info = {
	group_id = 234402012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 21010901, pos = { x = 9.315, y = 0.028, z = -4.584 }, rot = { x = 0.000, y = 299.025, z = 0.000 }, level = 1 },
	{ config_id = 12002, monster_id = 21010901, pos = { x = 10.693, y = 0.028, z = -1.312 }, rot = { x = 0.000, y = 275.467, z = 0.000 }, level = 1 },
	{ config_id = 12003, monster_id = 21010601, pos = { x = 5.144, y = -0.046, z = -9.888 }, rot = { x = 0.000, y = 331.130, z = 0.000 }, level = 1 },
	{ config_id = 12004, monster_id = 21010301, pos = { x = 10.631, y = 0.028, z = 2.788 }, rot = { x = 0.000, y = 259.511, z = 0.000 }, level = 1 },
	{ config_id = 12005, monster_id = 21010601, pos = { x = -4.695, y = -0.046, z = -9.917 }, rot = { x = 0.000, y = 22.350, z = 0.000 }, level = 1 },
	{ config_id = 12006, monster_id = 21010301, pos = { x = 8.785, y = 0.028, z = 5.461 }, rot = { x = 0.000, y = 248.814, z = 0.000 }, level = 1 },
	{ config_id = 12007, monster_id = 21020201, pos = { x = 0.368, y = -0.046, z = -12.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12009, monster_id = 21020101, pos = { x = 6.232, y = 0.028, z = 8.063 }, rot = { x = 0.000, y = 211.207, z = 0.000 }, level = 1 },
	{ config_id = 12011, monster_id = 21030101, pos = { x = -9.369, y = 0.028, z = -5.048 }, rot = { x = 0.000, y = 63.948, z = 0.000 }, level = 1 },
	{ config_id = 12012, monster_id = 21010501, pos = { x = -10.246, y = 0.028, z = -1.019 }, rot = { x = 0.000, y = 80.435, z = 0.000 }, level = 1 },
	{ config_id = 12013, monster_id = 21011001, pos = { x = 7.666, y = 0.028, z = -7.428 }, rot = { x = 0.000, y = 314.412, z = 0.000 }, level = 1 },
	{ config_id = 12014, monster_id = 21011001, pos = { x = -7.248, y = 0.028, z = -7.306 }, rot = { x = 0.000, y = 48.285, z = 0.000 }, level = 1 },
	{ config_id = 12018, monster_id = 21010501, pos = { x = -9.613, y = 0.028, z = 4.076 }, rot = { x = 0.000, y = 106.274, z = 0.000 }, level = 1 },
	{ config_id = 12019, monster_id = 21030101, pos = { x = -7.258, y = 0.028, z = 7.112 }, rot = { x = 0.000, y = 137.088, z = 0.000 }, level = 1 },
	{ config_id = 12020, monster_id = 22010201, pos = { x = -3.430, y = 0.028, z = 9.721 }, rot = { x = 0.000, y = 165.208, z = 0.000 }, level = 1 },
	{ config_id = 12021, monster_id = 21020301, pos = { x = 0.127, y = 0.028, z = 8.040 }, rot = { x = 0.000, y = 181.797, z = 0.000 }, level = 1 },
	{ config_id = 12022, monster_id = 21010902, pos = { x = -2.059, y = 0.028, z = -11.283 }, rot = { x = 0.000, y = 11.336, z = 0.000 }, level = 1 },
	{ config_id = 12023, monster_id = 21011002, pos = { x = 2.794, y = 0.028, z = -11.329 }, rot = { x = 0.000, y = 344.815, z = 0.000 }, level = 1 },
	{ config_id = 12024, monster_id = 21010701, pos = { x = 6.021, y = 0.028, z = 5.351 }, rot = { x = 0.000, y = 222.896, z = 0.000 }, level = 1 },
	{ config_id = 12025, monster_id = 21010701, pos = { x = -6.758, y = 0.028, z = 5.263 }, rot = { x = 0.000, y = 130.345, z = 0.000 }, level = 1 },
	{ config_id = 12026, monster_id = 21010603, pos = { x = 9.635, y = 0.028, z = 0.882 }, rot = { x = 0.000, y = 267.757, z = 0.000 }, level = 1 },
	{ config_id = 12027, monster_id = 21010603, pos = { x = 7.170, y = 0.028, z = -4.614 }, rot = { x = 0.000, y = 306.018, z = 0.000 }, level = 1 },
	{ config_id = 12028, monster_id = 21011201, pos = { x = 2.630, y = 0.028, z = -8.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12029, monster_id = 21011201, pos = { x = -2.304, y = 0.028, z = -8.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12030, monster_id = 21020201, pos = { x = -6.495, y = 0.028, z = -5.569 }, rot = { x = 0.000, y = 59.730, z = 0.000 }, level = 1 },
	{ config_id = 12031, monster_id = 21020202, pos = { x = -8.564, y = 0.028, z = 0.643 }, rot = { x = 0.000, y = 87.436, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12008, gadget_id = 70900205, pos = { x = 6.400, y = -1.256, z = 3.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012010, name = "ANY_MONSTER_DIE_12010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12010", action = "action_EVENT_ANY_MONSTER_DIE_12010" },
	{ config_id = 1012015, name = "ANY_MONSTER_LIVE_12015", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_12015" },
	{ config_id = 1012016, name = "CHALLENGE_FAIL_12016", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_12016" },
	{ config_id = 1012017, name = "CHALLENGE_SUCCESS_12017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_12017" }
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
		gadgets = { 12008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 12008 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_12015", "CHALLENGE_FAIL_12016", "CHALLENGE_SUCCESS_12017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 12008 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_12016", "CHALLENGE_SUCCESS_12017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12010(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234402012) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234402012, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_12015(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 234402012, 26, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_12016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234402012, suite = 1 }) then
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_12017(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 234402010) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 234402010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组234402011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402011, 11001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 234402011, 11001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组234402013中， configid为13001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402013, 13001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234402013中， configid为13002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402013, 13002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 改变指定group组234402001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234402001, 1003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end