-- 基础信息
local base_info = {
	group_id = 230802005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20011401, pos = { x = 0.129, y = -0.001, z = 9.847 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, monster_id = 20011401, pos = { x = 4.905, y = -0.001, z = 9.854 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 21011201, pos = { x = 2.550, y = -0.001, z = -10.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5004, monster_id = 21010501, pos = { x = 9.568, y = -0.001, z = -9.129 }, rot = { x = 0.000, y = 323.678, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5005, monster_id = 21011201, pos = { x = 0.099, y = -0.001, z = -11.914 }, rot = { x = 0.000, y = 358.677, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5006, monster_id = 21011001, pos = { x = -9.579, y = -0.001, z = -9.420 }, rot = { x = 0.000, y = 52.031, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 5007, monster_id = 20011501, pos = { x = -0.034, y = -0.001, z = -11.275 }, rot = { x = 0.000, y = 358.677, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5008, monster_id = 21010501, pos = { x = 0.133, y = -0.001, z = 11.588 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 5009, monster_id = 21011001, pos = { x = -0.067, y = -0.001, z = -13.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 5011, monster_id = 20011401, pos = { x = 11.822, y = -0.001, z = 0.183 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5012, monster_id = 20011401, pos = { x = -11.719, y = -0.001, z = 0.248 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5016, monster_id = 20011502, pos = { x = 0.009, y = -0.001, z = 13.143 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5017, monster_id = 21020301, pos = { x = -0.067, y = -0.001, z = -13.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5018, monster_id = 21010501, pos = { x = 9.691, y = -0.001, z = 10.439 }, rot = { x = 0.000, y = 209.253, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 5027, monster_id = 20011502, pos = { x = 0.005, y = -0.001, z = -10.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5028, monster_id = 20011502, pos = { x = 11.822, y = -0.001, z = 0.183 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5029, monster_id = 20011502, pos = { x = -11.719, y = -0.001, z = 0.248 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5031, monster_id = 21010401, pos = { x = 1.217, y = -0.001, z = 9.813 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5032, monster_id = 20011401, pos = { x = -4.526, y = -0.001, z = 9.895 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5033, monster_id = 21010502, pos = { x = 9.691, y = -0.001, z = 10.439 }, rot = { x = 0.000, y = 209.253, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5034, monster_id = 21010902, pos = { x = -9.757, y = -0.001, z = 10.258 }, rot = { x = 0.000, y = 138.242, z = 0.000 }, level = 1 },
	{ config_id = 5035, monster_id = 21011201, pos = { x = -3.510, y = -0.001, z = -11.871 }, rot = { x = 0.000, y = 358.677, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5036, monster_id = 21011201, pos = { x = 3.608, y = -0.001, z = -11.890 }, rot = { x = 0.000, y = 358.677, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5037, monster_id = 21010401, pos = { x = -1.267, y = -0.001, z = 9.799 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5038, monster_id = 21011201, pos = { x = 4.905, y = -0.001, z = 9.854 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5039, monster_id = 21011201, pos = { x = -4.526, y = -0.001, z = 9.895 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5040, monster_id = 20011401, pos = { x = 3.608, y = -0.001, z = -11.890 }, rot = { x = 0.000, y = 358.677, z = 0.000 }, level = 1 },
	{ config_id = 5041, monster_id = 20011401, pos = { x = -3.510, y = -0.001, z = -11.871 }, rot = { x = 0.000, y = 358.677, z = 0.000 }, level = 1 },
	{ config_id = 5043, monster_id = 21010901, pos = { x = -9.757, y = -0.001, z = 10.258 }, rot = { x = 0.000, y = 138.242, z = 0.000 }, level = 1 },
	{ config_id = 5044, monster_id = 21011201, pos = { x = -2.155, y = -0.001, z = -10.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5046, monster_id = 21011002, pos = { x = 16.578, y = -0.001, z = 0.356 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 5047, monster_id = 21010502, pos = { x = -11.719, y = -0.001, z = 0.248 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5019, gadget_id = 70350035, pos = { x = 0.012, y = 0.350, z = 0.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25 },
	{ config_id = 5020, gadget_id = 70900205, pos = { x = 7.126, y = -1.027, z = 4.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005010, name = "ANY_MONSTER_LIVE_5010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5010", action = "action_EVENT_ANY_MONSTER_LIVE_5010" },
	{ config_id = 1005013, name = "ANY_MONSTER_DIE_5013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5013", action = "action_EVENT_ANY_MONSTER_DIE_5013", trigger_count = 0 },
	{ config_id = 1005014, name = "CHALLENGE_SUCCESS_5014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5014" },
	{ config_id = 1005015, name = "CHALLENGE_FAIL_5015", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5015" },
	{ config_id = 1005021, name = "ANY_MONSTER_LIVE_5021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5021", action = "action_EVENT_ANY_MONSTER_LIVE_5021" },
	{ config_id = 1005022, name = "ANY_MONSTER_DIE_5022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5022", action = "action_EVENT_ANY_MONSTER_DIE_5022", trigger_count = 0 },
	{ config_id = 1005023, name = "ANY_MONSTER_DIE_5023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5023", action = "action_EVENT_ANY_MONSTER_DIE_5023", trigger_count = 0 },
	{ config_id = 1005024, name = "ANY_MONSTER_DIE_5024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5024", action = "action_EVENT_ANY_MONSTER_DIE_5024", trigger_count = 0 },
	{ config_id = 1005025, name = "CHALLENGE_SUCCESS_5025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5025" },
	{ config_id = 1005026, name = "CHALLENGE_FAIL_5026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5026" },
	{ config_id = 1005030, name = "ANY_MONSTER_DIE_5030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5030", action = "action_EVENT_ANY_MONSTER_DIE_5030", trigger_count = 0 },
	{ config_id = 1005042, name = "ANY_MONSTER_DIE_5042", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5042", action = "action_EVENT_ANY_MONSTER_DIE_5042", trigger_count = 0 },
	{ config_id = 1005045, name = "DUNGEON_SETTLE_5045", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_5045" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster1_wave", value = 0, no_refresh = false },
	{ config_id = 2, name = "monster2_wave", value = 0, no_refresh = false },
	{ config_id = 3, name = "monster1_round", value = 0, no_refresh = false },
	{ config_id = 4, name = "monster2_round", value = 0, no_refresh = false },
	{ config_id = 5, name = "level_status", value = 0, no_refresh = false }
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
		gadgets = { 5019, 5020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5001, 5002, 5005, 5032, 5035, 5036 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5021", "ANY_MONSTER_DIE_5022", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5003, 5011, 5012, 5031, 5037, 5044 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5023", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 5008, 5009, 5038, 5039, 5040, 5041 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026", "ANY_MONSTER_DIE_5042" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 5004, 5006, 5007, 5018, 5043 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5024", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 5027, 5028, 5029, 5033, 5034 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5010", "ANY_MONSTER_DIE_5013", "CHALLENGE_SUCCESS_5014", "CHALLENGE_FAIL_5015", "DUNGEON_SETTLE_5045" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 5016, 5017, 5046, 5047 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5014", "CHALLENGE_FAIL_5015", "ANY_MONSTER_DIE_5030", "DUNGEON_SETTLE_5045" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5010(context, evt)
	if 5027 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"monster2_round"为0
	if ScriptLib.GetGroupVariableValue(context, "monster2_round") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5010(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 188, 230802005, 9, 5019, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "level_status" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level_status", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster2_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster2_wave") ~= 0 then
			return false
	end
	
	-- 判断变量"level_status"为1
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5013(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230802005, 7)
	
	-- 将本组内变量名为 "monster2_wave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster2_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5014(context, evt)
	-- 将本组内变量名为 "level_status" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level_status", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 230802004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5015(context, evt)
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230802005, suite = 1 }) then
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
function condition_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"monster1_round"为0
	if ScriptLib.GetGroupVariableValue(context, "monster1_round") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 230802005, 23, 5019, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5022(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 0 then
			return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230802005, 3)
	
	-- 将本组内变量名为 "monster1_wave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 1 then
			return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230802005, 4)
	
	-- 将本组内变量名为 "monster1_wave" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster1_wave", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 3 then
			return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5024(context, evt)
	-- 针对当前group内变量名为 "monster1_round" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_round", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5025(context, evt)
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 230802004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "level_status" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "level_status", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 230802007, 7001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组230802008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组230802008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5026(context, evt)
	-- 改变指定group组230802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230802007, 7001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230802005, suite = 1 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_5030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster2_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster2_wave") ~= 1 then
			return false
	end
	
	-- 判断变量"level_status"为1
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5030(context, evt)
	-- 针对当前group内变量名为 "monster2_round" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster2_round", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5042(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230802005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 2 then
			return false
	end
	
	-- 判断变量"level_status"为0
	if ScriptLib.GetGroupVariableValue(context, "level_status") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5042(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230802005, 5)
	
	-- 将本组内变量名为 "monster1_wave" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster1_wave", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_5045(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end