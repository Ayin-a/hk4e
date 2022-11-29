-- 基础信息
local base_info = {
	group_id = 234404005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 24010101, pos = { x = 0.399, y = -0.046, z = -13.987 }, rot = { x = 0.000, y = 352.642, z = 0.000 }, level = 1, pose_id = 100 },
	{ config_id = 5002, monster_id = 21010502, pos = { x = 6.698, y = -0.046, z = -11.779 }, rot = { x = 0.000, y = 336.716, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 21010701, pos = { x = -5.385, y = -0.046, z = -11.367 }, rot = { x = 0.000, y = 28.566, z = 0.000 }, level = 1 },
	{ config_id = 5009, monster_id = 21010603, pos = { x = -7.521, y = 0.082, z = -8.845 }, rot = { x = 0.000, y = 41.728, z = 0.000 }, level = 1 },
	{ config_id = 5010, monster_id = 21010502, pos = { x = -9.203, y = 0.082, z = -5.701 }, rot = { x = 0.000, y = 60.141, z = 0.000 }, level = 1 },
	{ config_id = 5011, monster_id = 21010701, pos = { x = 9.417, y = 0.278, z = -8.422 }, rot = { x = 0.000, y = 317.642, z = 0.000 }, level = 1 },
	{ config_id = 5017, monster_id = 21010603, pos = { x = 10.420, y = 0.082, z = -5.099 }, rot = { x = 0.000, y = 297.977, z = 0.000 }, level = 1 },
	{ config_id = 5019, monster_id = 21010701, pos = { x = 3.689, y = 0.082, z = -12.511 }, rot = { x = 0.000, y = 349.872, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5007, gadget_id = 70350033, pos = { x = 0.164, y = 0.016, z = -7.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5026, gadget_id = 70900205, pos = { x = 0.292, y = -3.342, z = 2.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005004, name = "CHALLENGE_SUCCESS_5004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5004" },
	{ config_id = 1005005, name = "CHALLENGE_FAIL_5005", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5005" },
	{ config_id = 1005006, name = "ANY_MONSTER_LIVE_5006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_5006" },
	{ config_id = 1005027, name = "ANY_MONSTER_DIE_5027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5027", action = "action_EVENT_ANY_MONSTER_DIE_5027" }
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
		gadgets = { 5026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 5007, 5026 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5004", "CHALLENGE_FAIL_5005", "ANY_MONSTER_LIVE_5006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 5007, 5026 },
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
function action_EVENT_CHALLENGE_SUCCESS_5004(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234404001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234404005, suite = 1 }) then
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
function action_EVENT_ANY_MONSTER_LIVE_5006(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从234404001的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 234404001)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 234404005, 8, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	-- 将configid为 5007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234404005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234404005, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end