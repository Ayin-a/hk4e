-- 基础信息
local base_info = {
	group_id = 233720004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 25080301, pos = { x = 11.032, y = -0.110, z = -0.019 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 4004, monster_id = 25080201, pos = { x = -11.037, y = -0.110, z = -0.045 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 4005, monster_id = 25080101, pos = { x = 0.032, y = -0.110, z = -11.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 4018, monster_id = 25100101, pos = { x = 3.041, y = -0.110, z = -11.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 4019, monster_id = 25100201, pos = { x = -4.080, y = -0.110, z = -11.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 }
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
	{ config_id = 1004002, name = "ANY_MONSTER_LIVE_4002", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4002", action = "action_EVENT_ANY_MONSTER_LIVE_4002" },
	{ config_id = 1004003, name = "TIME_AXIS_PASS_4003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4003", action = "action_EVENT_TIME_AXIS_PASS_4003", trigger_count = 0 },
	{ config_id = 1004006, name = "TIME_AXIS_PASS_4006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4006", action = "action_EVENT_TIME_AXIS_PASS_4006", trigger_count = 0 },
	{ config_id = 1004007, name = "TIME_AXIS_PASS_4007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4007", action = "action_EVENT_TIME_AXIS_PASS_4007", trigger_count = 0 },
	{ config_id = 1004008, name = "TIME_AXIS_PASS_4008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4008", action = "action_EVENT_TIME_AXIS_PASS_4008", trigger_count = 0 },
	{ config_id = 1004012, name = "ANY_MONSTER_DIE_4012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4012", action = "action_EVENT_ANY_MONSTER_DIE_4012" },
	{ config_id = 1004013, name = "TIME_AXIS_PASS_4013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4013", action = "action_EVENT_TIME_AXIS_PASS_4013", trigger_count = 0 },
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4001, 4004, 4005 },
		gadgets = { 4010 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4002", "TIME_AXIS_PASS_4003", "TIME_AXIS_PASS_4006", "TIME_AXIS_PASS_4007", "TIME_AXIS_PASS_4008", "ANY_MONSTER_DIE_4012", "TIME_AXIS_PASS_4013", "CHALLENGE_SUCCESS_4014", "CHALLENGE_FAIL_4015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4018, 4019 },
		gadgets = { 4010 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4014", "CHALLENGE_FAIL_4015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4002(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4002(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 233720004, 5, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "monster_wave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"timer_init"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_init", {1}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4003(context, evt)
	if "timer1_gv" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4003(context, evt)
	ScriptLib.EndTimeAxis(context, "timer1_gv")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "LevelEntityTowerBuff_EnergyChangeMode", 1)
	
	ScriptLib.InitTimeAxis(context, "timer2_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4006(context, evt)
	if "timer1_reminder" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4006(context, evt)
	ScriptLib.EndTimeAxis(context, "timer1_reminder")
	
	ScriptLib.ShowReminder(context, 337200102)
	
	ScriptLib.InitTimeAxis(context, "timer1_gv", {0.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4007(context, evt)
	if "timer2_reminder" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4007(context, evt)
	ScriptLib.EndTimeAxis(context, "timer2_reminder")
	
	ScriptLib.ShowReminder(context, 337200101)
	
	ScriptLib.InitTimeAxis(context, "timer2_gv", {0.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4008(context, evt)
	if "timer_init" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4008(context, evt)
	ScriptLib.EndTimeAxis(context, "timer_init")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "LevelEntityTowerBuff_EnergyChangeMode", 1)
	
	ScriptLib.InitTimeAxis(context, "timer2_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233720004, 3)
	
	-- 将本组内变量名为 "monster_wave" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4013(context, evt)
	if "timer2_gv" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4013(context, evt)
	ScriptLib.EndTimeAxis(context, "timer2_gv")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "LevelEntityTowerBuff_EnergyChangeMode", -1)
	
	ScriptLib.InitTimeAxis(context, "timer1_reminder", {8.8}, false)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4014(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233720002) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 233720003, 2)
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233720002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组233720003中， configid为3005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233720003, 3005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组233720003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233720003, 3001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233720003, 3001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组233720001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233720001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233720001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233720001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 停止标识为"timer1_reminder"的时间轴
	ScriptLib.EndTimeAxis(context, "timer1_reminder")
	
	
	-- 停止标识为"timer2_reminder"的时间轴
	ScriptLib.EndTimeAxis(context, "timer2_reminder")
	
	
	-- 停止标识为"timer1_gv"的时间轴
	ScriptLib.EndTimeAxis(context, "timer1_gv")
	
	
	-- 停止标识为"timer2_gv"的时间轴
	ScriptLib.EndTimeAxis(context, "timer2_gv")
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233720004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 233720003, 2)
	
	-- 改变指定group组233720003中， configid为3005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233720003, 3005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 停止标识为"timer1_reminder"的时间轴
	ScriptLib.EndTimeAxis(context, "timer1_reminder")
	
	
	-- 停止标识为"timer2_reminder"的时间轴
	ScriptLib.EndTimeAxis(context, "timer2_reminder")
	
	
	-- 停止标识为"timer1_gv"的时间轴
	ScriptLib.EndTimeAxis(context, "timer1_gv")
	
	
	-- 停止标识为"timer2_gv"的时间轴
	ScriptLib.EndTimeAxis(context, "timer2_gv")
	
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end