-- 基础信息
local base_info = {
	group_id = 230801005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20011001, pos = { x = 9.196, y = 0.080, z = -8.932 }, rot = { x = 0.000, y = 323.678, z = 0.000 }, level = 1 },
	{ config_id = 5002, monster_id = 20011001, pos = { x = -9.007, y = 0.080, z = -9.335 }, rot = { x = 0.000, y = 48.200, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 21010501, pos = { x = -8.773, y = 0.080, z = 9.128 }, rot = { x = 0.000, y = 141.500, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 5004, monster_id = 21010501, pos = { x = 9.019, y = 0.080, z = 8.914 }, rot = { x = 0.000, y = 213.100, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 5005, monster_id = 20011001, pos = { x = -0.051, y = 0.080, z = -11.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, monster_id = 20011401, pos = { x = -11.331, y = 0.080, z = -3.994 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 5007, monster_id = 20011103, pos = { x = 12.279, y = 0.080, z = -0.063 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5008, monster_id = 21010401, pos = { x = 10.064, y = 0.080, z = 8.687 }, rot = { x = 0.000, y = 212.200, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5009, monster_id = 20011401, pos = { x = 10.377, y = 0.080, z = -3.760 }, rot = { x = 0.000, y = 296.100, z = 0.000 }, level = 1 },
	{ config_id = 5010, monster_id = 20011401, pos = { x = -0.062, y = 0.080, z = -9.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, monster_id = 20011101, pos = { x = 2.642, y = 0.080, z = -8.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5012, monster_id = 20011101, pos = { x = -4.765, y = 0.080, z = -8.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5014, monster_id = 20011001, pos = { x = -10.350, y = 0.080, z = -6.237 }, rot = { x = 0.000, y = 59.600, z = 0.000 }, level = 1 },
	{ config_id = 5015, monster_id = 20011001, pos = { x = 10.720, y = 0.080, z = -7.161 }, rot = { x = 0.000, y = 305.400, z = 0.000 }, level = 1 },
	{ config_id = 5016, monster_id = 20011401, pos = { x = -11.225, y = 0.080, z = 7.729 }, rot = { x = 0.000, y = 139.840, z = 0.000 }, level = 1 },
	{ config_id = 5017, monster_id = 20011401, pos = { x = 11.171, y = 0.080, z = 7.577 }, rot = { x = 0.000, y = 230.100, z = 0.000 }, level = 1 },
	{ config_id = 5028, monster_id = 21010401, pos = { x = -10.409, y = 0.080, z = 7.840 }, rot = { x = 0.000, y = 144.300, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5029, monster_id = 20011501, pos = { x = -0.002, y = 0.080, z = 9.047 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5030, monster_id = 20011101, pos = { x = 0.054, y = 0.080, z = -10.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5031, monster_id = 20011501, pos = { x = 2.616, y = 0.080, z = 9.732 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5032, monster_id = 20011501, pos = { x = -2.440, y = 0.080, z = 9.693 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5035, monster_id = 20011502, pos = { x = 9.196, y = 0.080, z = -8.932 }, rot = { x = 0.000, y = 323.678, z = 0.000 }, level = 1 },
	{ config_id = 5036, monster_id = 20011502, pos = { x = -9.007, y = 0.080, z = -9.335 }, rot = { x = 0.000, y = 48.200, z = 0.000 }, level = 1 },
	{ config_id = 5037, monster_id = 21010502, pos = { x = -0.133, y = 0.080, z = -9.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 5046, monster_id = 21010902, pos = { x = -16.743, y = 0.080, z = -0.117 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 5052, monster_id = 20011103, pos = { x = -12.212, y = 0.080, z = -0.034 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5059, monster_id = 21010902, pos = { x = 17.065, y = 0.080, z = -0.004 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5063, monster_id = 22010304, pos = { x = 0.067, y = 0.080, z = -12.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1026, 1031 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5019, gadget_id = 70350035, pos = { x = -0.005, y = 0.024, z = 0.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25 },
	{ config_id = 5020, gadget_id = 70900205, pos = { x = 7.110, y = -1.379, z = 4.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005013, name = "DUNGEON_SETTLE_5013", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_5013" },
	{ config_id = 1005021, name = "ANY_MONSTER_LIVE_5021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5021", action = "action_EVENT_ANY_MONSTER_LIVE_5021" },
	{ config_id = 1005022, name = "ANY_MONSTER_DIE_5022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5022", action = "action_EVENT_ANY_MONSTER_DIE_5022" },
	{ config_id = 1005023, name = "ANY_MONSTER_DIE_5023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5023", action = "action_EVENT_ANY_MONSTER_DIE_5023" },
	{ config_id = 1005024, name = "ANY_MONSTER_DIE_5024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5024", action = "action_EVENT_ANY_MONSTER_DIE_5024" },
	{ config_id = 1005025, name = "CHALLENGE_SUCCESS_5025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5025" },
	{ config_id = 1005026, name = "CHALLENGE_FAIL_5026", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5026" },
	{ config_id = 1005041, name = "ANY_MONSTER_DIE_5041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5041", action = "action_EVENT_ANY_MONSTER_DIE_5041" },
	{ config_id = 1005042, name = "ANY_MONSTER_LIVE_5042", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5042", action = "action_EVENT_ANY_MONSTER_LIVE_5042" },
	{ config_id = 1005043, name = "CHALLENGE_SUCCESS_5043", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5043" },
	{ config_id = 1005044, name = "CHALLENGE_FAIL_5044", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5044" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster1_wave", value = 0, no_refresh = false },
	{ config_id = 2, name = "monster2_wave", value = 0, no_refresh = false }
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
		monsters = { 5001, 5002, 5003, 5004, 5005 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5021", "ANY_MONSTER_DIE_5022", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5006, 5008, 5009, 5010, 5028 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5023", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 5014, 5015, 5016, 5017, 5029, 5030 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5024", "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 5011, 5012, 5031, 5032 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5025", "CHALLENGE_FAIL_5026" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 5020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 5007, 5035, 5036, 5037, 5052 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_5013", "ANY_MONSTER_DIE_5041", "ANY_MONSTER_LIVE_5042", "CHALLENGE_SUCCESS_5043", "CHALLENGE_FAIL_5044" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { 5046, 5059, 5063 },
		gadgets = { 5020 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_5013", "CHALLENGE_SUCCESS_5043", "CHALLENGE_FAIL_5044" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_5013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5021(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 230801005, 20, 5019, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5022(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230801005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230801005, 3)
	
	-- 针对当前group内变量名为 "monster1_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230801005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230801005, 4)
	
	-- 针对当前group内变量名为 "monster1_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230801005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5024(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230801005, 5)
	
	-- 针对当前group内变量名为 "monster1_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5025(context, evt)
	-- 改变指定group组230801007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230801007, 7001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 230801004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组230801007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230801007, 7001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 230801007, 7001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组230801005中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230801005, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组230801005中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230801005, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5026(context, evt)
	-- 改变指定group组230801007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230801007, 7001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230801005, suite = 1 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_5041(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 230801005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster2_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster2_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5041(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230801005, 8)
	
	-- 针对当前group内变量名为 "monster2_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster2_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5042(context, evt)
	if 5035 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5042(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 188, 230801005, 8, 5019, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5043(context, evt)
	-- 改变指定group组230801007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230801007, 7001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 230801004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5044(context, evt)
	-- 改变指定group组230801007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230801007, 7001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230801005, suite = 1 }) then
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