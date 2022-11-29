-- 基础信息
local base_info = {
	group_id = 234700002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010603, pos = { x = 9.187, y = -0.110, z = -9.022 }, rot = { x = 0.000, y = 323.678, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 21010603, pos = { x = -9.017, y = -0.110, z = -9.425 }, rot = { x = 0.000, y = 48.200, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 21010701, pos = { x = -8.783, y = -0.110, z = 9.039 }, rot = { x = 0.000, y = 141.500, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2004, monster_id = 21010701, pos = { x = 9.009, y = -0.110, z = 8.825 }, rot = { x = 0.000, y = 213.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2005, monster_id = 21010902, pos = { x = -0.060, y = -0.110, z = -11.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, monster_id = 21010603, pos = { x = -11.341, y = -0.110, z = -4.083 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2007, monster_id = 21010301, pos = { x = 10.054, y = -0.110, z = 8.597 }, rot = { x = 0.000, y = 212.200, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 21010603, pos = { x = 10.367, y = -0.110, z = -3.849 }, rot = { x = 0.000, y = 296.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2009, monster_id = 21010902, pos = { x = -0.072, y = -0.110, z = -9.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 21020201, pos = { x = 0.045, y = -0.110, z = -10.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6105 }, isElite = true },
	{ config_id = 2012, monster_id = 21010902, pos = { x = -10.359, y = -0.110, z = -6.327 }, rot = { x = 0.000, y = 59.600, z = 0.000 }, level = 1 },
	{ config_id = 2013, monster_id = 21010502, pos = { x = 10.710, y = -0.110, z = -7.250 }, rot = { x = 0.000, y = 305.400, z = 0.000 }, level = 1 },
	{ config_id = 2016, monster_id = 21010301, pos = { x = -10.419, y = -0.110, z = 7.750 }, rot = { x = 0.000, y = 144.300, z = 0.000 }, level = 1 },
	{ config_id = 2018, monster_id = 21020101, pos = { x = 0.045, y = -0.110, z = 10.005 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2021, monster_id = 21020201, pos = { x = 9.187, y = -0.110, z = -9.022 }, rot = { x = 0.000, y = 323.678, z = 0.000 }, level = 1 },
	{ config_id = 2022, monster_id = 21020201, pos = { x = -9.017, y = -0.110, z = -9.425 }, rot = { x = 0.000, y = 48.200, z = 0.000 }, level = 1 },
	{ config_id = 2023, monster_id = 21020202, pos = { x = -0.143, y = -0.110, z = -9.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031, 6105 }, isElite = true },
	{ config_id = 2024, monster_id = 22010104, pos = { x = -16.753, y = -0.110, z = -0.206 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2025, monster_id = 22010203, pos = { x = 17.055, y = -0.110, z = -0.093 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, affix = { 1031, 6101 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2031, gadget_id = 70350035, pos = { x = -0.015, y = -0.013, z = -0.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25 },
	{ config_id = 2032, gadget_id = 70900205, pos = { x = 7.100, y = -1.389, z = 4.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002033, name = "DUNGEON_SETTLE_2033", event = EventType.EVENT_DUNGEON_SETTLE, source = "2", condition = "", action = "action_EVENT_DUNGEON_SETTLE_2033" },
	{ config_id = 1002034, name = "ANY_MONSTER_LIVE_2034", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2034", action = "action_EVENT_ANY_MONSTER_LIVE_2034" },
	{ config_id = 1002035, name = "ANY_MONSTER_DIE_2035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2035", action = "action_EVENT_ANY_MONSTER_DIE_2035" },
	{ config_id = 1002036, name = "ANY_MONSTER_DIE_2036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2036", action = "action_EVENT_ANY_MONSTER_DIE_2036" },
	{ config_id = 1002038, name = "CHALLENGE_SUCCESS_2038", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2038" },
	{ config_id = 1002039, name = "CHALLENGE_FAIL_2039", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2039" },
	{ config_id = 1002040, name = "ANY_MONSTER_DIE_2040", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2040", action = "action_EVENT_ANY_MONSTER_DIE_2040" },
	{ config_id = 1002041, name = "ANY_MONSTER_LIVE_2041", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2041", action = "action_EVENT_ANY_MONSTER_LIVE_2041" },
	{ config_id = 1002042, name = "CHALLENGE_SUCCESS_2042", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2042" },
	{ config_id = 1002043, name = "CHALLENGE_FAIL_2043", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2043" }
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
		gadgets = { 2031, 2032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2003, 2004, 2005 },
		gadgets = { 2032 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2034", "ANY_MONSTER_DIE_2035", "CHALLENGE_SUCCESS_2038", "CHALLENGE_FAIL_2039" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 2006, 2007, 2008, 2009, 2016 },
		gadgets = { 2032 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2036", "CHALLENGE_SUCCESS_2038", "CHALLENGE_FAIL_2039" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 2010, 2012, 2013, 2018 },
		gadgets = { 2032 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2038", "CHALLENGE_FAIL_2039" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_7,
		monsters = { 2021, 2022, 2023 },
		gadgets = { 2032 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_2033", "ANY_MONSTER_DIE_2040", "ANY_MONSTER_LIVE_2041", "CHALLENGE_SUCCESS_2042", "CHALLENGE_FAIL_2043" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_8,
		monsters = { 2024, 2025 },
		gadgets = { 2032 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_2033", "CHALLENGE_SUCCESS_2042", "CHALLENGE_FAIL_2043" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_2033(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2034(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2034(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 234700002, 14, 2031, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2035(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234700002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2035(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234700002, 3)
	
	-- 针对当前group内变量名为 "monster1_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2036(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234700002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2036(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234700002, 4)
	
	-- 针对当前group内变量名为 "monster1_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2038(context, evt)
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 234700001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组234700003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234700003, 3001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 234700003, 3001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组234700004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234700004, 4001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234700004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234700004, 4002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2039(context, evt)
	-- 改变指定group组234700003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234700003, 3001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234700002, suite = 1 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_2040(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234700002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster2_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster2_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2040(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234700002, 6)
	
	-- 针对当前group内变量名为 "monster2_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster2_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2041(context, evt)
	if 2021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2041(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 188, 234700002, 5, 2031, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2042(context, evt)
	-- 改变指定group组234700003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234700003, 3001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234700001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2043(context, evt)
	-- 改变指定group组234700003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234700003, 3001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234700002, suite = 1 }) then
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