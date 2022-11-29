-- 基础信息
local base_info = {
	group_id = 233737003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011001, pos = { x = -0.017, y = -0.102, z = -10.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 26090901, pos = { x = -10.129, y = -0.102, z = -3.086 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3003, monster_id = 25210401, pos = { x = 6.056, y = -0.102, z = -10.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 25210301, pos = { x = 0.041, y = -0.102, z = -10.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 25210101, pos = { x = 0.000, y = -0.102, z = 10.003 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3010, monster_id = 25210501, pos = { x = -10.020, y = -0.102, z = 0.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3011, monster_id = 26090501, pos = { x = -0.017, y = -0.102, z = 9.970 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3012, monster_id = 26090201, pos = { x = 9.985, y = -0.102, z = -3.086 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3013, monster_id = 26090201, pos = { x = 10.034, y = -0.102, z = 2.923 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3018, monster_id = 26090101, pos = { x = 3.003, y = -0.102, z = 9.999 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3019, monster_id = 26090701, pos = { x = 4.096, y = -0.102, z = -10.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3020, monster_id = 26090401, pos = { x = 9.985, y = -0.102, z = 0.034 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3021, monster_id = 25210501, pos = { x = 9.979, y = -0.102, z = -0.042 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3022, monster_id = 26090101, pos = { x = -3.062, y = -0.102, z = 9.969 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3023, monster_id = 26090701, pos = { x = -4.007, y = -0.102, z = -10.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3024, monster_id = 20011001, pos = { x = -9.875, y = -0.102, z = 0.034 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3027, monster_id = 26120201, pos = { x = -0.017, y = -0.102, z = -10.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 201 },
	{ config_id = 3028, monster_id = 26090901, pos = { x = -9.961, y = -0.102, z = -0.022 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3029, monster_id = 26090901, pos = { x = -10.080, y = -0.102, z = 2.923 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3030, monster_id = 26090701, pos = { x = 10.048, y = -0.102, z = -0.022 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 3031, monster_id = 25310101, pos = { x = 10.802, y = -0.102, z = -0.365 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 3033, monster_id = 25210201, pos = { x = 4.032, y = -0.102, z = 9.924 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3034, monster_id = 25210201, pos = { x = -4.065, y = -0.102, z = 9.895 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3036, monster_id = 25210501, pos = { x = -9.951, y = -0.102, z = 2.993 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3037, monster_id = 25210401, pos = { x = 4.061, y = -0.102, z = -10.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3038, monster_id = 20011103, pos = { x = 6.093, y = -0.102, z = 9.958 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3039, monster_id = 25210201, pos = { x = 0.012, y = -0.102, z = -10.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3040, monster_id = 20011103, pos = { x = 0.052, y = -0.102, z = 9.958 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3041, monster_id = 20011103, pos = { x = -6.027, y = -0.102, z = 9.958 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3042, monster_id = 25210401, pos = { x = -5.970, y = -0.102, z = -10.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3043, monster_id = 25210401, pos = { x = -3.926, y = -0.102, z = -10.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3044, monster_id = 25210201, pos = { x = 0.012, y = -0.102, z = 9.993 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3045, monster_id = 25210501, pos = { x = -9.912, y = -0.102, z = -3.147 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3006, gadget_id = 70900205, pos = { x = 6.220, y = -1.157, z = 3.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003007, name = "ANY_MONSTER_LIVE_3007", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3007", action = "action_EVENT_ANY_MONSTER_LIVE_3007" },
	{ config_id = 1003008, name = "CHALLENGE_SUCCESS_3008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3008" },
	{ config_id = 1003009, name = "CHALLENGE_FAIL_3009", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3009" },
	{ config_id = 1003014, name = "ANY_MONSTER_DIE_3014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3014", action = "action_EVENT_ANY_MONSTER_DIE_3014" },
	{ config_id = 1003015, name = "ANY_MONSTER_LIVE_3015", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3015", action = "action_EVENT_ANY_MONSTER_LIVE_3015" },
	{ config_id = 1003016, name = "CHALLENGE_SUCCESS_3016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3016" },
	{ config_id = 1003017, name = "CHALLENGE_FAIL_3017", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3017" },
	{ config_id = 1003025, name = "DUNGEON_SETTLE_3025", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "" },
	{ config_id = 1003026, name = "ANY_MONSTER_DIE_3026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3026", action = "action_EVENT_ANY_MONSTER_DIE_3026" },
	{ config_id = 1003032, name = "ANY_MONSTER_DIE_3032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3032", action = "action_EVENT_ANY_MONSTER_DIE_3032" },
	{ config_id = 1003035, name = "ANY_MONSTER_DIE_3035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3035", action = "action_EVENT_ANY_MONSTER_DIE_3035" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false },
	{ config_id = 2, name = "stage", value = 0, no_refresh = false },
	{ config_id = 3, name = "monster_wave2", value = 0, no_refresh = false }
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
		gadgets = { 3006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3011, 3018, 3019, 3022, 3023 },
		gadgets = { 3006 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3008", "CHALLENGE_FAIL_3009", "ANY_MONSTER_LIVE_3015", "ANY_MONSTER_DIE_3032" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3002, 3012, 3013, 3020, 3024, 3029 },
		gadgets = { 3006 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3008", "CHALLENGE_FAIL_3009", "ANY_MONSTER_DIE_3026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3027, 3028, 3030, 3038, 3040, 3041 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3008", "CHALLENGE_FAIL_3009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 3003, 3004, 3033, 3034, 3042 },
		gadgets = { 3006 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3007", "CHALLENGE_SUCCESS_3016", "CHALLENGE_FAIL_3017", "ANY_MONSTER_DIE_3035" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 3005, 3010, 3021, 3037, 3043 },
		gadgets = { 3006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3014", "CHALLENGE_SUCCESS_3016", "CHALLENGE_FAIL_3017" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 3031, 3036, 3039, 3044, 3045 },
		gadgets = { 3006 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3016", "CHALLENGE_FAIL_3017", "DUNGEON_SETTLE_3025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3007(context, evt)
	if 3003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3007(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从233737001的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 233737001)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 233737003, 15, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	-- 针对当前group内变量名为 "monster_wave2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3008(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233737001) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233737001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组233737002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233737002, 2001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组233737009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233737009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233737003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	-- 改变指定group组233737002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737002, 2001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233737009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233737009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave2"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave2") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3014(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233737003, 7)
	
	-- 针对当前group内变量名为 "monster_wave2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3015(context, evt)
	if 3011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3015(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 233737003, 18, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
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
function action_EVENT_CHALLENGE_SUCCESS_3016(context, evt)
	-- 改变指定group组233737002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737002, 2001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 233737001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组233737009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233737009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233737003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组233737002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737002, 2001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	-- 改变指定group组233737009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233737009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233737009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3026(context, evt)
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3026(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233737003, 4)
	
	-- 将本组内变量名为 "monster_wave" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233737003, 3)
	
	-- 将本组内变量名为 "monster_wave" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3035(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3035(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233737003, 6)
	
	-- 针对当前group内变量名为 "monster_wave2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end