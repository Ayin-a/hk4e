-- 基础信息
local base_info = {
	group_id = 240951003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 25080101, pos = { x = -5.736, y = 0.002, z = -7.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 3003, monster_id = 25080101, pos = { x = 5.868, y = 0.002, z = -7.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 3004, monster_id = 25010501, pos = { x = 10.726, y = 0.002, z = -9.720 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 25010301, pos = { x = -12.511, y = 0.002, z = -9.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 25010501, pos = { x = 0.321, y = 0.002, z = -13.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 25080201, pos = { x = 0.049, y = 0.002, z = -5.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 3008, monster_id = 25080301, pos = { x = 8.218, y = 0.002, z = -4.541 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, pose_id = 1 },
	{ config_id = 3009, monster_id = 25080301, pos = { x = -9.921, y = 0.002, z = -4.299 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70900205, pos = { x = 10.504, y = -0.554, z = 0.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003010, name = "ANY_MONSTER_LIVE_3010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3010", action = "action_EVENT_ANY_MONSTER_LIVE_3010" },
	{ config_id = 1003011, name = "ANY_MONSTER_DIE_3011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3011", action = "action_EVENT_ANY_MONSTER_DIE_3011" },
	{ config_id = 1003012, name = "CHALLENGE_FAIL_3012", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3012" },
	{ config_id = 1003013, name = "CHALLENGE_SUCCESS_3013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3013" }
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
		gadgets = { 3001 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_3012", "CHALLENGE_SUCCESS_3013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3002, 3003, 3004, 3005, 3006 },
		gadgets = { 3001 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3010", "ANY_MONSTER_DIE_3011", "CHALLENGE_FAIL_3012", "CHALLENGE_SUCCESS_3013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3007, 3008, 3009 },
		gadgets = { 3001 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_3012", "CHALLENGE_SUCCESS_3013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3010(context, evt)
	if 3002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3010(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240951003, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "challenge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "challenge", 1, 240951001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240951003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240951003, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240951003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240951002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240951001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240951001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240951001, 1001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "challenge" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "challenge", 0, 240951001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240951002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240951001中， configid为1004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240951001, 1004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240951001中， configid为1005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240951001, 1005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "challenge" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "challenge", 0, 240951001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end