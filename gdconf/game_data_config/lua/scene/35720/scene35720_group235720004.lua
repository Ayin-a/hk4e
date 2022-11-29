-- 基础信息
local base_info = {
	group_id = 235720004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 24010201, pos = { x = 0.029, y = -0.102, z = -13.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 4002, monster_id = 24020101, pos = { x = -5.183, y = -0.102, z = -12.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 4003, monster_id = 24020301, pos = { x = -0.027, y = -0.102, z = -11.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 4008, monster_id = 24020401, pos = { x = 5.023, y = -0.102, z = -11.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 }
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
	{ config_id = 1004004, name = "TIME_AXIS_PASS_4004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4004", action = "action_EVENT_TIME_AXIS_PASS_4004", trigger_count = 0 },
	{ config_id = 1004005, name = "ANY_MONSTER_LIVE_4005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4005", action = "action_EVENT_ANY_MONSTER_LIVE_4005" },
	{ config_id = 1004006, name = "TIME_AXIS_PASS_4006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4006", action = "action_EVENT_TIME_AXIS_PASS_4006", trigger_count = 0 },
	{ config_id = 1004007, name = "TIME_AXIS_PASS_4007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4007", action = "action_EVENT_TIME_AXIS_PASS_4007", trigger_count = 0 },
	{ config_id = 1004009, name = "TIME_AXIS_PASS_4009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4009", action = "action_EVENT_TIME_AXIS_PASS_4009", trigger_count = 0 },
	{ config_id = 1004011, name = "TIME_AXIS_PASS_4011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_4011", action = "action_EVENT_TIME_AXIS_PASS_4011", trigger_count = 0 },
	{ config_id = 1004013, name = "ANY_MONSTER_DIE_4013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4013", action = "action_EVENT_ANY_MONSTER_DIE_4013" },
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
		monsters = { 4001 },
		gadgets = { 4010 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_4004", "ANY_MONSTER_LIVE_4005", "TIME_AXIS_PASS_4006", "TIME_AXIS_PASS_4007", "TIME_AXIS_PASS_4009", "TIME_AXIS_PASS_4011", "ANY_MONSTER_DIE_4013", "CHALLENGE_SUCCESS_4014", "CHALLENGE_FAIL_4015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4002, 4003, 4008 },
		gadgets = { },
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
function condition_EVENT_TIME_AXIS_PASS_4004(context, evt)
	if "timer1_gv" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4004(context, evt)
	ScriptLib.EndTimeAxis(context, "timer1_gv")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "LevelEntityTowerBuff_EnergyChangeMode", 1)
	
	ScriptLib.InitTimeAxis(context, "timer2_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4005(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4005(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 235720004, 4, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 创建标识为"timer_init"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer_init", {1}, false)
	
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
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
function condition_EVENT_TIME_AXIS_PASS_4009(context, evt)
	if "timer_init" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4009(context, evt)
	ScriptLib.EndTimeAxis(context, "timer_init")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "LevelEntityTowerBuff_EnergyChangeMode", 1)
	
	ScriptLib.InitTimeAxis(context, "timer2_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4011(context, evt)
	if "timer2_gv" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4011(context, evt)
	ScriptLib.EndTimeAxis(context, "timer2_gv")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "LevelEntityTowerBuff_EnergyChangeMode", -1)
	
	ScriptLib.InitTimeAxis(context, "timer1_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4013(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_4013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235720004, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4014(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 235720002) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235720003, 2)
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 235720002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组235720003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235720003, 3001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 235720003, 3001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组235720001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235720001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组235720001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235720001, 1002, GadgetState.Default) then
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
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235720004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 235720003, 2)
	
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