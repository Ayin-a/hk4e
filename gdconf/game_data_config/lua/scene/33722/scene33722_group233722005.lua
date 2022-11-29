-- 基础信息
local base_info = {
	group_id = 233722005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20020101, pos = { x = 0.011, y = -0.102, z = -11.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5002, monster_id = 20060301, pos = { x = 0.047, y = -0.102, z = 9.954 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5005, monster_id = 20060301, pos = { x = -10.004, y = -0.102, z = -0.079 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5007, monster_id = 20060301, pos = { x = 10.033, y = -0.102, z = -0.081 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5017, monster_id = 21020501, pos = { x = 0.011, y = -0.102, z = -11.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 5018, monster_id = 20060201, pos = { x = 0.047, y = -0.102, z = 9.954 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5019, monster_id = 20060201, pos = { x = -10.004, y = -0.102, z = -0.079 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 5020, monster_id = 20060201, pos = { x = 10.033, y = -0.102, z = -0.081 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
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
	{ config_id = 1005003, name = "ANY_MONSTER_LIVE_5003", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5003", action = "action_EVENT_ANY_MONSTER_LIVE_5003" },
	{ config_id = 1005012, name = "ANY_MONSTER_DIE_5012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5012", action = "action_EVENT_ANY_MONSTER_DIE_5012" },
	{ config_id = 1005015, name = "CHALLENGE_SUCCESS_5015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5015" },
	{ config_id = 1005016, name = "CHALLENGE_FAIL_5016", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5016" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1005008, name = "TIME_AXIS_PASS_5008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5008", action = "action_EVENT_TIME_AXIS_PASS_5008", trigger_count = 0 },
		{ config_id = 1005009, name = "TIME_AXIS_PASS_5009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5009", action = "action_EVENT_TIME_AXIS_PASS_5009", trigger_count = 0 },
		{ config_id = 1005010, name = "TIME_AXIS_PASS_5010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5010", action = "action_EVENT_TIME_AXIS_PASS_5010", trigger_count = 0 },
		{ config_id = 1005013, name = "TIME_AXIS_PASS_5013", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5013", action = "action_EVENT_TIME_AXIS_PASS_5013", trigger_count = 0 },
		{ config_id = 1005014, name = "TIME_AXIS_PASS_5014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_5014", action = "action_EVENT_TIME_AXIS_PASS_5014", trigger_count = 0 }
	}
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
		monsters = { 5001, 5002, 5005, 5007 },
		gadgets = { 5011 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5003", "ANY_MONSTER_DIE_5012", "CHALLENGE_SUCCESS_5015", "CHALLENGE_FAIL_5016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5017, 5018, 5019, 5020 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5015", "CHALLENGE_FAIL_5016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5003(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5003(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从233722002的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 233722002)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 233722005, 8, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	-- 将本组内变量名为 "monster_wave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5012(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_5012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233722005, 3)
	
	-- 将本组内变量名为 "monster_wave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5015(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 233722002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233722005, suite = 1 }) then
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