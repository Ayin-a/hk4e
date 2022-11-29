-- 基础信息
local base_info = {
	group_id = 234720005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 25090101, pos = { x = -0.017, y = -0.102, z = -13.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5011, gadget_id = 70900205, pos = { x = 6.204, y = -1.386, z = 3.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "TIME_AXIS_PASS_5002", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5002", action = "action_EVENT_TIME_AXIS_PASS_5002", trigger_count = 0 },
	{ config_id = 1005003, name = "TIME_AXIS_PASS_5003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5003", action = "action_EVENT_TIME_AXIS_PASS_5003", trigger_count = 0 },
	{ config_id = 1005004, name = "TIME_AXIS_PASS_5004", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5004", action = "action_EVENT_TIME_AXIS_PASS_5004", trigger_count = 0 },
	{ config_id = 1005005, name = "ANY_MONSTER_LIVE_5005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5005", action = "action_EVENT_ANY_MONSTER_LIVE_5005" },
	{ config_id = 1005006, name = "TIME_AXIS_PASS_5006", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5006", action = "action_EVENT_TIME_AXIS_PASS_5006", trigger_count = 0 },
	{ config_id = 1005007, name = "TIME_AXIS_PASS_5007", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5007", action = "action_EVENT_TIME_AXIS_PASS_5007", trigger_count = 0 },
	{ config_id = 1005015, name = "CHALLENGE_SUCCESS_5015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5015" },
	{ config_id = 1005016, name = "CHALLENGE_FAIL_5016", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5016" }
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
		gadgets = { 5011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5001 },
		gadgets = { 5011 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_5002", "TIME_AXIS_PASS_5003", "TIME_AXIS_PASS_5004", "ANY_MONSTER_LIVE_5005", "TIME_AXIS_PASS_5006", "TIME_AXIS_PASS_5007", "CHALLENGE_SUCCESS_5015", "CHALLENGE_FAIL_5016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5002(context, evt)
	if "timer1_gv" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5002(context, evt)
	ScriptLib.EndTimeAxis(context, "timer1_gv")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "LevelEntityTowerBuff_EnergyChangeMode", 1)
	
	ScriptLib.InitTimeAxis(context, "timer2_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5003(context, evt)
	if "timer1_reminder" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5003(context, evt)
	ScriptLib.EndTimeAxis(context, "timer1_reminder")
	
	ScriptLib.ShowReminder(context, 337200102)
	
	ScriptLib.InitTimeAxis(context, "timer1_gv", {0.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5004(context, evt)
	if "timer2_reminder" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5004(context, evt)
	ScriptLib.EndTimeAxis(context, "timer2_reminder")
	
	ScriptLib.ShowReminder(context, 337200101)
	
	ScriptLib.InitTimeAxis(context, "timer2_gv", {0.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5005(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5005(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从234720002的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 234720002)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 234720005, 1, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
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
function condition_EVENT_TIME_AXIS_PASS_5006(context, evt)
	if "timer_init" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5006(context, evt)
	ScriptLib.EndTimeAxis(context, "timer_init")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "LevelEntityTowerBuff_EnergyChangeMode", 1)
	
	ScriptLib.InitTimeAxis(context, "timer2_reminder", {8.8}, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_5007(context, evt)
	if "timer2_gv" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_5007(context, evt)
	ScriptLib.EndTimeAxis(context, "timer2_gv")
	
	local uid = ScriptLib.GetSceneUidList(context)
	
	ScriptLib.AddTeamEntityGlobalFloatValue(context, uid, "LevelEntityTowerBuff_EnergyChangeMode", -1)
	
	ScriptLib.InitTimeAxis(context, "timer1_reminder", {8.8}, false)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5015(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234720002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 234720003, 2)
	
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
function action_EVENT_CHALLENGE_FAIL_5016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234720005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 234720003, 2)
	
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