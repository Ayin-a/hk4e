-- 基础信息
local base_info = {
	group_id = 233402004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 26010201, pos = { x = 0.052, y = 0.326, z = -9.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4002, monster_id = 21010902, pos = { x = -6.172, y = 0.326, z = -6.729 }, rot = { x = 0.000, y = 49.587, z = 0.000 }, level = 1 },
	{ config_id = 4003, monster_id = 21030301, pos = { x = 5.886, y = 0.326, z = -6.851 }, rot = { x = 0.000, y = 315.578, z = 0.000 }, level = 1 },
	{ config_id = 4004, monster_id = 21010201, pos = { x = -10.182, y = 0.326, z = -2.589 }, rot = { x = 0.000, y = 72.421, z = 0.000 }, level = 1 },
	{ config_id = 4005, monster_id = 20011202, pos = { x = 9.891, y = 0.326, z = -2.311 }, rot = { x = 0.000, y = 285.863, z = 0.000 }, level = 1 },
	{ config_id = 4006, monster_id = 20011202, pos = { x = 9.491, y = 0.028, z = 5.321 }, rot = { x = 0.000, y = 238.108, z = 0.000 }, level = 1 },
	{ config_id = 4011, monster_id = 26010201, pos = { x = 11.065, y = 0.028, z = 0.759 }, rot = { x = 0.000, y = 268.145, z = 0.000 }, level = 1 },
	{ config_id = 4013, monster_id = 21010902, pos = { x = -10.094, y = 0.028, z = 1.903 }, rot = { x = 0.000, y = 89.365, z = 0.000 }, level = 1 },
	{ config_id = 4014, monster_id = 20011202, pos = { x = -8.165, y = 0.028, z = 6.624 }, rot = { x = 0.000, y = 136.397, z = 0.000 }, level = 1 },
	{ config_id = 4015, monster_id = 21030301, pos = { x = 0.281, y = 0.028, z = 10.298 }, rot = { x = 0.000, y = 178.547, z = 0.000 }, level = 1 },
	{ config_id = 4016, monster_id = 20011202, pos = { x = -4.785, y = 0.028, z = 9.443 }, rot = { x = 0.000, y = 153.636, z = 0.000 }, level = 1 },
	{ config_id = 4017, monster_id = 26010201, pos = { x = 6.657, y = 0.028, z = 7.763 }, rot = { x = 0.000, y = 232.941, z = 0.000 }, level = 1 },
	{ config_id = 4018, monster_id = 21010201, pos = { x = 3.764, y = 0.028, z = 9.629 }, rot = { x = 0.000, y = 204.637, z = 0.000 }, level = 1 },
	{ config_id = 4019, monster_id = 20011301, pos = { x = 0.052, y = 0.028, z = -5.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4020, monster_id = 26010201, pos = { x = -3.763, y = 0.028, z = -7.578 }, rot = { x = 0.270, y = 27.296, z = 359.844 }, level = 1 },
	{ config_id = 4021, monster_id = 26010201, pos = { x = 3.907, y = 0.028, z = -7.726 }, rot = { x = 0.000, y = 336.589, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4007, gadget_id = 70900205, pos = { x = 4.643, y = -1.133, z = 2.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004008, name = "ANY_MONSTER_LIVE_4008", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4008", action = "action_EVENT_ANY_MONSTER_LIVE_4008" },
	{ config_id = 1004009, name = "CHALLENGE_SUCCESS_4009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4009" },
	{ config_id = 1004010, name = "CHALLENGE_FAIL_4010", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4010" },
	{ config_id = 1004012, name = "MONSTER_TIDE_DIE_4012", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "8", condition = "condition_EVENT_MONSTER_TIDE_DIE_4012", action = "action_EVENT_MONSTER_TIDE_DIE_4012" }
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
		gadgets = { 4007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4007 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4008", "CHALLENGE_SUCCESS_4009", "CHALLENGE_FAIL_4010", "MONSTER_TIDE_DIE_4012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4019, 4020, 4021 },
		gadgets = { 4007 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4009", "CHALLENGE_FAIL_4010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4008(context, evt)
	if 4003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4008(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从233402001的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 233402001)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 233402004, 16, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4009(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 233402001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233402004, suite = 1 }) then
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
function condition_EVENT_MONSTER_TIDE_DIE_4012(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233402004, 3)
	
	return 0
end