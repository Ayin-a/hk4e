-- 基础信息
local base_info = {
	group_id = 233744004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 22040201, pos = { x = 6.869, y = -0.102, z = 9.788 }, rot = { x = 0.000, y = 269.969, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4004, monster_id = 22050201, pos = { x = 0.010, y = -0.102, z = -0.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4005, monster_id = 22040201, pos = { x = -6.478, y = -0.102, z = 9.833 }, rot = { x = 0.000, y = 90.508, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4006, monster_id = 22040201, pos = { x = 5.136, y = -0.102, z = 3.930 }, rot = { x = 0.000, y = 333.450, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4007, monster_id = 22050201, pos = { x = 0.010, y = -0.102, z = 17.060 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4008, monster_id = 22040201, pos = { x = 5.299, y = -0.102, z = 14.768 }, rot = { x = 0.000, y = 197.281, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4009, monster_id = 22040201, pos = { x = -5.549, y = -0.102, z = 15.045 }, rot = { x = 0.000, y = 140.078, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4011, monster_id = 22040201, pos = { x = -5.116, y = -0.102, z = 4.342 }, rot = { x = 0.000, y = 34.281, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4012, monster_id = 22040201, pos = { x = 10.232, y = -0.102, z = 9.986 }, rot = { x = 0.000, y = 269.969, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4013, monster_id = 22040201, pos = { x = -10.258, y = -0.102, z = 10.063 }, rot = { x = 0.000, y = 90.508, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4016, monster_id = 22040201, pos = { x = 6.349, y = -0.102, z = 1.699 }, rot = { x = 0.000, y = 333.450, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4017, monster_id = 22040201, pos = { x = 5.887, y = -0.102, z = 16.856 }, rot = { x = 0.000, y = 197.281, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4018, monster_id = 22040201, pos = { x = -7.190, y = -0.102, z = 17.202 }, rot = { x = 0.000, y = 140.078, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 4019, monster_id = 22040201, pos = { x = -7.032, y = -0.102, z = 1.728 }, rot = { x = 0.000, y = 34.281, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4010, gadget_id = 70900205, pos = { x = 6.204, y = -1.386, z = 3.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "MONSTER_TIDE_DIE_4002", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_4002", action = "action_EVENT_MONSTER_TIDE_DIE_4002" },
	{ config_id = 1004003, name = "ANY_MONSTER_LIVE_4003", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4003", action = "action_EVENT_ANY_MONSTER_LIVE_4003" },
	{ config_id = 1004014, name = "CHALLENGE_SUCCESS_4014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4014" },
	{ config_id = 1004015, name = "CHALLENGE_FAIL_4015", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4015" }
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
		gadgets = { 4010 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_4002", "ANY_MONSTER_LIVE_4003", "CHALLENGE_SUCCESS_4014", "CHALLENGE_FAIL_4015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4001, 4005, 4006, 4008, 4009, 4011, 4012, 4013, 4016, 4017, 4018, 4019 },
		gadgets = { 4010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4004, 4007 },
		gadgets = { 4010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
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
function condition_EVENT_MONSTER_TIDE_DIE_4002(context, evt)
	if 14 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233744004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4003(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4003(context, evt)
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 233744004, 20, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4014(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233744002) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233744002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组233744003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233744003, 3001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233744003, 3001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组233744001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233744001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233744001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233744001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233744004, suite = 1 }) then
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