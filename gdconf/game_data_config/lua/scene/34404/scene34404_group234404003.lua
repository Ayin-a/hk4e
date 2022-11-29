-- 基础信息
local base_info = {
	group_id = 234404003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3007, monster_id = 24010101, pos = { x = 0.448, y = -0.046, z = -13.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 100 },
	{ config_id = 3013, monster_id = 21010401, pos = { x = -5.000, y = 0.082, z = -11.084 }, rot = { x = 0.000, y = 31.806, z = 0.000 }, level = 1 },
	{ config_id = 3014, monster_id = 21010902, pos = { x = 5.795, y = 0.082, z = -11.425 }, rot = { x = 0.000, y = 321.637, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 21010902, pos = { x = -8.118, y = 0.082, z = -8.585 }, rot = { x = 0.000, y = 24.853, z = 0.000 }, level = 1 },
	{ config_id = 3016, monster_id = 21010301, pos = { x = 7.657, y = 0.082, z = -9.588 }, rot = { x = 0.000, y = 305.704, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 21010401, pos = { x = 9.314, y = 0.082, z = -6.013 }, rot = { x = 0.000, y = 299.207, z = 0.000 }, level = 1 },
	{ config_id = 3022, monster_id = 21010201, pos = { x = -9.284, y = 0.082, z = -5.745 }, rot = { x = 0.000, y = 62.242, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3008, gadget_id = 70900205, pos = { x = 6.479, y = -1.256, z = 5.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3034, gadget_id = 70350034, pos = { x = 0.164, y = 0.016, z = -7.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003002, name = "CHALLENGE_SUCCESS_3002", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3002" },
	{ config_id = 1003004, name = "CHALLENGE_FAIL_3004", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3004" },
	{ config_id = 1003009, name = "ANY_MONSTER_LIVE_3009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_3009" },
	{ config_id = 1003010, name = "MONSTER_TIDE_DIE_3010", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_3010", action = "action_EVENT_MONSTER_TIDE_DIE_3010" },
	{ config_id = 1003030, name = "ANY_MONSTER_DIE_3030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3030", action = "action_EVENT_ANY_MONSTER_DIE_3030" },
	{ config_id = 1003033, name = "ANY_MONSTER_DIE_3033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3033", action = "action_EVENT_ANY_MONSTER_DIE_3033" }
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
		gadgets = { 3008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3008, 3034 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3002", "CHALLENGE_FAIL_3004", "ANY_MONSTER_LIVE_3009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 3008, 3034 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3002", "CHALLENGE_FAIL_3004", "ANY_MONSTER_DIE_3030" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 3008, 3034 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3002", "CHALLENGE_FAIL_3004", "ANY_MONSTER_DIE_3033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 3008 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3002(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 234404001) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 234404001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组234404002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234404002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 234404002, 2001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组234404004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234404004, 4001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234404004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234404004, 4002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 改变指定group组234404001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234404001, 1003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234404003, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234404005, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234404003, suite = 5 }) then
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
function action_EVENT_ANY_MONSTER_LIVE_3009(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 234404003, 7, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 改变指定group组234404003中， configid为3034的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234404003, 3034, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_3010(context, evt)
	if 10 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234404003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3030(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234404003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234404003, 5)
	
	return 0
end