-- 基础信息
local base_info = {
	group_id = 233711003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 25070101, pos = { x = 4.897, y = 0.053, z = -4.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 25060101, pos = { x = -4.891, y = 0.053, z = -4.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 25020201, pos = { x = 2.433, y = 0.053, z = -7.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3004, monster_id = 25020201, pos = { x = -2.429, y = 0.053, z = -7.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3005, monster_id = 25070101, pos = { x = 7.272, y = 0.053, z = -4.823 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3010, monster_id = 25060101, pos = { x = 7.305, y = 0.053, z = 4.888 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3011, monster_id = 25030301, pos = { x = 4.873, y = 0.053, z = -4.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3012, monster_id = 25010301, pos = { x = 2.430, y = 0.053, z = -7.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, monster_id = 25010501, pos = { x = -2.418, y = 0.053, z = -7.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, monster_id = 25010701, pos = { x = 4.873, y = 0.053, z = 4.886 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3019, monster_id = 25010401, pos = { x = 2.430, y = 0.053, z = 7.350 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, monster_id = 25010601, pos = { x = -2.418, y = 0.053, z = 7.359 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, monster_id = 25020201, pos = { x = 9.782, y = 0.053, z = -2.381 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, monster_id = 25010701, pos = { x = -4.861, y = 0.053, z = 4.872 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3023, monster_id = 25020201, pos = { x = 9.782, y = 0.045, z = 2.454 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, monster_id = 25020201, pos = { x = -9.778, y = 0.045, z = 2.454 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3027, monster_id = 25060101, pos = { x = -7.250, y = 0.053, z = 4.888 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3028, monster_id = 25020201, pos = { x = -9.778, y = 0.053, z = -2.381 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3029, monster_id = 25070101, pos = { x = -7.284, y = 0.053, z = -4.823 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3030, monster_id = 25070101, pos = { x = 4.897, y = 0.053, z = 7.375 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3031, monster_id = 25060101, pos = { x = -4.891, y = 0.053, z = 7.338 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3032, monster_id = 25020201, pos = { x = 2.433, y = 0.053, z = 9.785 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 3033, monster_id = 25020201, pos = { x = -2.429, y = 0.053, z = 9.806 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3034, monster_id = 25030201, pos = { x = -4.861, y = 0.053, z = -4.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3006, gadget_id = 70900205, pos = { x = 6.220, y = -1.157, z = 3.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70350035, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
	{ config_id = 1003025, name = "DUNGEON_SETTLE_3025", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_3025" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false },
	{ config_id = 2, name = "stage", value = 0, no_refresh = false }
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
		gadgets = { 3006, 3024 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3007", "CHALLENGE_SUCCESS_3008", "CHALLENGE_FAIL_3009", "DUNGEON_SETTLE_3025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3011, 3012, 3013, 3034 },
		gadgets = { 3006, 3024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3014", "ANY_MONSTER_LIVE_3015", "CHALLENGE_SUCCESS_3016", "CHALLENGE_FAIL_3017", "DUNGEON_SETTLE_3025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3018, 3019, 3020, 3022 },
		gadgets = { 3006, 3024 },
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
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3007(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 233711003, 16, 3024, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3008(context, evt)
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233711001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组233711002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233711002, 2001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组233711001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711002, 2002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233711003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	-- 改变指定group组233711002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711002, 2002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711002, 2001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 233711003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233711003, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
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
	-- 创建编号为2（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 188, 233711003, 8, 3024, 0) then
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
	-- 改变指定group组233711002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711002, 2001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 233711001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组233711002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711002, 2002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233711003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组233711002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711002, 2001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	-- 改变指定group组233711002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711002, 2002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233711009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233711009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_3025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end