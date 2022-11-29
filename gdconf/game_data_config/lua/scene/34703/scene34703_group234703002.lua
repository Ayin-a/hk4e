-- 基础信息
local base_info = {
	group_id = 234703002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21020201, pos = { x = 4.039, y = -0.110, z = -10.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 21020301, pos = { x = -4.014, y = -0.110, z = -9.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2003, monster_id = 21011201, pos = { x = -8.719, y = -0.110, z = 9.101 }, rot = { x = 0.000, y = 141.500, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2004, monster_id = 21011201, pos = { x = 9.073, y = -0.110, z = 8.886 }, rot = { x = 0.000, y = 213.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2005, monster_id = 21011201, pos = { x = 0.014, y = -0.110, z = 9.926 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2006, monster_id = 21010603, pos = { x = 10.037, y = -0.110, z = 0.015 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 21010603, pos = { x = -9.974, y = -0.110, z = 0.009 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 21010902, pos = { x = 0.021, y = -0.199, z = 13.065 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 21020202, pos = { x = 0.021, y = -0.110, z = -9.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031, 6105 }, isElite = true },
	{ config_id = 2010, monster_id = 21020301, pos = { x = 0.021, y = -0.110, z = 13.065 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, monster_id = 20010604, pos = { x = 3.069, y = -0.199, z = -11.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2012, monster_id = 20010702, pos = { x = -3.044, y = -0.199, z = -11.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2013, monster_id = 21020202, pos = { x = 0.021, y = -0.199, z = -9.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1028 }, isElite = true },
	{ config_id = 2014, monster_id = 21011002, pos = { x = -16.689, y = -0.110, z = -0.145 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, monster_id = 21010902, pos = { x = 17.119, y = -0.110, z = -0.032 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2016, gadget_id = 70350035, pos = { x = 0.049, y = -0.102, z = 0.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25 },
	{ config_id = 2017, gadget_id = 70900205, pos = { x = 7.164, y = -1.478, z = 4.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002018, name = "DUNGEON_SETTLE_2018", event = EventType.EVENT_DUNGEON_SETTLE, source = "2", condition = "", action = "action_EVENT_DUNGEON_SETTLE_2018" },
	{ config_id = 1002019, name = "ANY_MONSTER_LIVE_2019", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2019", action = "action_EVENT_ANY_MONSTER_LIVE_2019" },
	{ config_id = 1002020, name = "CHALLENGE_SUCCESS_2020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2020" },
	{ config_id = 1002021, name = "CHALLENGE_FAIL_2021", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2021" },
	{ config_id = 1002022, name = "ANY_MONSTER_DIE_2022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2022", action = "action_EVENT_ANY_MONSTER_DIE_2022" },
	{ config_id = 1002023, name = "ANY_MONSTER_LIVE_2023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2023", action = "action_EVENT_ANY_MONSTER_LIVE_2023" },
	{ config_id = 1002024, name = "CHALLENGE_SUCCESS_2024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2024" },
	{ config_id = 1002025, name = "CHALLENGE_FAIL_2025", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2025" },
	{ config_id = 1002026, name = "MONSTER_TIDE_DIE_2026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_2026", action = "action_EVENT_MONSTER_TIDE_DIE_2026" },
	{ config_id = 1002027, name = "MONSTER_TIDE_DIE_2027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_2027", action = "action_EVENT_MONSTER_TIDE_DIE_2027" }
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
		gadgets = { 2016, 2017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2017 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2019", "CHALLENGE_SUCCESS_2020", "CHALLENGE_FAIL_2021", "MONSTER_TIDE_DIE_2026", "MONSTER_TIDE_DIE_2027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_7,
		monsters = { 2008, 2011, 2012, 2013 },
		gadgets = { 2017 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_2018", "ANY_MONSTER_DIE_2022", "ANY_MONSTER_LIVE_2023", "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_8,
		monsters = { 2009, 2010, 2014, 2015 },
		gadgets = { 2017 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_2018", "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_2018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2019(context, evt)
	if 2003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2019(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 234703002, 17, 2016, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2020(context, evt)
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 234703001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组234703003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234703003, 3001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 234703003, 3001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组234703004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234703004, 4001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234703004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234703004, 4002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2021(context, evt)
	-- 改变指定group组234703003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234703003, 3001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234703002, suite = 1 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_2022(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234703002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster2_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster2_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234703002, 4)
	
	-- 针对当前group内变量名为 "monster2_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster2_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2023(context, evt)
	if 2011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2023(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 188, 234703002, 8, 2016, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2024(context, evt)
	-- 改变指定group组234703003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234703003, 3001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234703001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2025(context, evt)
	-- 改变指定group组234703003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234703003, 3001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234703002, suite = 1 }) then
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
function condition_EVENT_MONSTER_TIDE_DIE_2026(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_2026(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_2027(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_2027(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2002, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end