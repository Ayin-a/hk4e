-- 基础信息
local base_info = {
	group_id = 231703006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 25010201, pos = { x = 6.454, y = 0.162, z = 9.217 }, rot = { x = 0.000, y = 195.600, z = 0.000 }, level = 1 },
	{ config_id = 6002, monster_id = 25010201, pos = { x = -6.664, y = 0.162, z = 9.179 }, rot = { x = 0.000, y = 159.100, z = 0.000 }, level = 1 },
	{ config_id = 6003, monster_id = 25060101, pos = { x = -6.917, y = 0.162, z = -9.452 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 6004, monster_id = 25010401, pos = { x = 10.951, y = 0.162, z = 1.718 }, rot = { x = 0.000, y = 263.500, z = 0.000 }, level = 1 },
	{ config_id = 6005, monster_id = 25060101, pos = { x = 5.866, y = 0.162, z = -10.040 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1 },
	{ config_id = 6006, monster_id = 25010301, pos = { x = -11.358, y = 0.162, z = -1.199 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 6007, monster_id = 25010601, pos = { x = 11.720, y = 0.162, z = -0.901 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 6008, monster_id = 25020201, pos = { x = 0.131, y = 0.162, z = 10.857 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, monster_id = 25070101, pos = { x = 2.624, y = 0.162, z = -7.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6010, monster_id = 25070101, pos = { x = -5.226, y = 0.162, z = -7.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6011, monster_id = 25030301, pos = { x = 0.001, y = 0.358, z = -7.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6012, monster_id = 25070101, pos = { x = 11.258, y = 0.162, z = -8.740 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1 },
	{ config_id = 6013, monster_id = 25030201, pos = { x = -0.589, y = 0.162, z = -10.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6014, monster_id = 25060101, pos = { x = -11.455, y = 0.162, z = -8.919 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1 },
	{ config_id = 6015, monster_id = 25010501, pos = { x = -7.793, y = 0.162, z = 5.224 }, rot = { x = 0.000, y = 133.400, z = 0.000 }, level = 1 },
	{ config_id = 6016, monster_id = 25020201, pos = { x = 7.720, y = 0.162, z = 10.326 }, rot = { x = 0.000, y = 217.700, z = 0.000 }, level = 1 },
	{ config_id = 6017, monster_id = 25010701, pos = { x = -0.006, y = 0.162, z = -7.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6018, monster_id = 25060101, pos = { x = -12.798, y = 0.162, z = -10.305 }, rot = { x = 0.000, y = 43.800, z = 0.000 }, level = 1 },
	{ config_id = 6019, monster_id = 25070101, pos = { x = 7.523, y = 0.162, z = -10.219 }, rot = { x = 0.000, y = 320.900, z = 0.000 }, level = 1 },
	{ config_id = 6020, monster_id = 25030201, pos = { x = -10.146, y = 0.162, z = 0.024 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6021, monster_id = 25030201, pos = { x = 10.443, y = 0.162, z = -0.518 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 6022, monster_id = 25010301, pos = { x = -11.574, y = 0.162, z = 1.356 }, rot = { x = 0.000, y = 90.850, z = 0.000 }, level = 1 },
	{ config_id = 6023, monster_id = 25010601, pos = { x = 7.803, y = 0.162, z = 5.064 }, rot = { x = 0.000, y = 230.800, z = 0.000 }, level = 1 },
	{ config_id = 6024, monster_id = 25020201, pos = { x = -7.690, y = 0.162, z = 10.283 }, rot = { x = 0.000, y = 153.200, z = 0.000 }, level = 1 },
	{ config_id = 6025, monster_id = 25030301, pos = { x = -0.039, y = 0.162, z = 9.660 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6026, gadget_id = 70900205, pos = { x = -0.012, y = -1.518, z = -0.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6034, gadget_id = 70350034, pos = { x = 0.202, y = 0.033, z = -6.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006028, name = "ANY_MONSTER_DIE_6028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6028", action = "action_EVENT_ANY_MONSTER_DIE_6028" },
	{ config_id = 1006029, name = "ANY_MONSTER_DIE_6029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6029", action = "action_EVENT_ANY_MONSTER_DIE_6029" },
	{ config_id = 1006030, name = "ANY_MONSTER_DIE_6030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6030", action = "action_EVENT_ANY_MONSTER_DIE_6030" },
	{ config_id = 1006031, name = "CHALLENGE_SUCCESS_6031", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6031" },
	{ config_id = 1006032, name = "CHALLENGE_FAIL_6032", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6032" },
	{ config_id = 1006033, name = "ANY_MONSTER_DIE_6033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6033", action = "action_EVENT_ANY_MONSTER_DIE_6033" },
	{ config_id = 1006035, name = "ANY_MONSTER_LIVE_6035", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6035", action = "action_EVENT_ANY_MONSTER_LIVE_6035" }
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
		gadgets = { 6026, 6034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6001, 6002, 6003, 6004, 6005, 6022 },
		gadgets = { 6026, 6034 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6028", "CHALLENGE_SUCCESS_6031", "CHALLENGE_FAIL_6032", "ANY_MONSTER_LIVE_6035" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 6006, 6007, 6008, 6009, 6010 },
		gadgets = { 6026, 6034 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6029", "CHALLENGE_SUCCESS_6031", "CHALLENGE_FAIL_6032" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 6012, 6013, 6014 },
		gadgets = { 6026, 6034 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6030", "CHALLENGE_SUCCESS_6031", "CHALLENGE_FAIL_6032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 6011, 6015, 6016, 6023, 6024 },
		gadgets = { 6026, 6034 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6031", "CHALLENGE_FAIL_6032", "ANY_MONSTER_DIE_6033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 6017, 6018, 6019, 6020, 6021, 6025 },
		gadgets = { 6026, 6034 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6031", "CHALLENGE_FAIL_6032" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 6026 },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231703006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6028(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231703006, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231703006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6029(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231703006, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231703006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6030(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231703006, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6031(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 231703001) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231703006, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231703004, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 231703001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组231703002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231703002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 231703002, 2001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组231703005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231703005, 5001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231703005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231703005, 5002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6032(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231703006, suite = 1 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_6033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231703006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为4
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6033(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231703006, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6035(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6035(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 231703006, 25, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 改变指定group组231703006中， configid为6034的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231703006, 6034, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end