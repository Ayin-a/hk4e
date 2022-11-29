-- 基础信息
local base_info = {
	group_id = 234403014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 23010401, pos = { x = -4.421, y = 0.082, z = -7.962 }, rot = { x = 0.000, y = 43.689, z = 0.000 }, level = 1 },
	{ config_id = 14002, monster_id = 23010601, pos = { x = -4.539, y = 0.082, z = -10.844 }, rot = { x = 0.000, y = 24.287, z = 0.000 }, level = 1 },
	{ config_id = 14003, monster_id = 23010601, pos = { x = 6.553, y = 0.082, z = -9.759 }, rot = { x = 0.000, y = 339.090, z = 0.000 }, level = 1 },
	{ config_id = 14006, monster_id = 23010501, pos = { x = 0.289, y = 0.028, z = -9.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14007, monster_id = 23010401, pos = { x = 4.693, y = 0.028, z = -8.408 }, rot = { x = 0.000, y = 333.083, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14026, gadget_id = 70900205, pos = { x = 0.231, y = -3.342, z = 0.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014004, name = "CHALLENGE_SUCCESS_14004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_14004" },
	{ config_id = 1014005, name = "CHALLENGE_FAIL_14005", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_14005" },
	{ config_id = 1014027, name = "ANY_MONSTER_DIE_14027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14027", action = "action_EVENT_ANY_MONSTER_DIE_14027" },
	{ config_id = 1014030, name = "ANY_MONSTER_LIVE_14030", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_14030" }
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
		gadgets = { 14026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 14001, 14003 },
		gadgets = { 14026 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_14004", "CHALLENGE_FAIL_14005", "ANY_MONSTER_DIE_14027", "ANY_MONSTER_LIVE_14030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 14002, 14006, 14007 },
		gadgets = { 14026 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_14004", "CHALLENGE_FAIL_14005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_14004(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234403010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234403014, suite = 1 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_14027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234403014) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234403014, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_14030(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从234403010的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 234403010)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 234403014, 5, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	return 0
end