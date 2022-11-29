-- 基础信息
local base_info = {
	group_id = 231000004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20010501, pos = { x = 7.451, y = 0.034, z = 7.478 }, rot = { x = 0.000, y = 218.480, z = 0.000 }, level = 1 },
	{ config_id = 4002, monster_id = 20010501, pos = { x = 0.100, y = 0.034, z = 9.605 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4003, monster_id = 20010501, pos = { x = -7.267, y = 0.034, z = 7.416 }, rot = { x = 0.000, y = 138.400, z = 0.000 }, level = 1 },
	{ config_id = 4004, monster_id = 20010501, pos = { x = 0.152, y = 0.034, z = -12.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, monster_id = 20010501, pos = { x = 7.657, y = 0.034, z = -7.251 }, rot = { x = 0.000, y = 312.600, z = 0.000 }, level = 1 },
	{ config_id = 4007, monster_id = 20010501, pos = { x = -9.906, y = 0.034, z = -7.264 }, rot = { x = 0.000, y = 53.618, z = 0.000 }, level = 1 },
	{ config_id = 4013, monster_id = 20010701, pos = { x = -1.117, y = 0.034, z = 8.516 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, monster_id = 20010601, pos = { x = 1.300, y = 0.034, z = 8.576 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4019, monster_id = 23030101, pos = { x = 0.137, y = 0.034, z = -9.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 9002 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4026, gadget_id = 70900205, pos = { x = 6.178, y = -1.176, z = 3.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004006, name = "MONSTER_TIDE_OVER_4006", event = EventType.EVENT_MONSTER_TIDE_OVER, source = "1", condition = "", action = "action_EVENT_MONSTER_TIDE_OVER_4006" },
	{ config_id = 1004027, name = "ANY_MONSTER_LIVE_4027", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4027", action = "action_EVENT_ANY_MONSTER_LIVE_4027" },
	{ config_id = 1004031, name = "CHALLENGE_SUCCESS_4031", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4031" },
	{ config_id = 1004032, name = "CHALLENGE_FAIL_4032", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4032" }
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
		gadgets = { 4026 },
		regions = { },
		triggers = { "MONSTER_TIDE_OVER_4006", "ANY_MONSTER_LIVE_4027", "CHALLENGE_SUCCESS_4031", "CHALLENGE_FAIL_4032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_TIDE_OVER_4006(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4019, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4013, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4018, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4027(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4027(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从231000001的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 231000001)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 231000004, 25, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4031(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 231000001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4032(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231000004, suite = 1 }) then
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