-- 基础信息
local base_info = {
	group_id = 231802006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 21011201, pos = { x = 9.207, y = 0.082, z = -8.957 }, rot = { x = 0.000, y = 323.678, z = 0.000 }, level = 1 },
	{ config_id = 6002, monster_id = 21011201, pos = { x = -8.996, y = 0.082, z = -9.360 }, rot = { x = 0.000, y = 48.200, z = 0.000 }, level = 1 },
	{ config_id = 6003, monster_id = 21010701, pos = { x = -8.762, y = 0.082, z = 9.104 }, rot = { x = 0.000, y = 141.500, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6004, monster_id = 21010701, pos = { x = 9.030, y = 0.082, z = 8.889 }, rot = { x = 0.000, y = 213.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6005, monster_id = 21011201, pos = { x = -0.040, y = 0.082, z = -11.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6006, monster_id = 21010701, pos = { x = -11.321, y = 0.082, z = -4.019 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6007, monster_id = 21010402, pos = { x = 5.055, y = 0.082, z = -12.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6008, monster_id = 21011201, pos = { x = 10.074, y = 0.082, z = 8.662 }, rot = { x = 0.000, y = 212.200, z = 0.000 }, level = 1 },
	{ config_id = 6009, monster_id = 21010701, pos = { x = 10.387, y = 0.082, z = -3.784 }, rot = { x = 0.000, y = 296.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6010, monster_id = 21010701, pos = { x = -0.052, y = 0.082, z = -9.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6011, monster_id = 21010701, pos = { x = 5.031, y = 0.082, z = -12.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6012, monster_id = 21010701, pos = { x = -4.758, y = 0.082, z = -12.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6013, monster_id = 21011201, pos = { x = -10.339, y = 0.082, z = -6.262 }, rot = { x = 0.000, y = 59.600, z = 0.000 }, level = 1 },
	{ config_id = 6014, monster_id = 21011201, pos = { x = 10.730, y = 0.082, z = -7.186 }, rot = { x = 0.000, y = 305.400, z = 0.000 }, level = 1 },
	{ config_id = 6015, monster_id = 21010701, pos = { x = -11.215, y = 0.082, z = 7.704 }, rot = { x = 0.000, y = 139.840, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6016, monster_id = 21010701, pos = { x = 11.181, y = 0.082, z = 7.553 }, rot = { x = 0.000, y = 230.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6017, monster_id = 21011201, pos = { x = -10.398, y = 0.082, z = 7.815 }, rot = { x = 0.000, y = 144.300, z = 0.000 }, level = 1 },
	{ config_id = 6018, monster_id = 21010701, pos = { x = 0.083, y = 0.082, z = -13.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6019, monster_id = 21011201, pos = { x = 0.065, y = 0.082, z = -10.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6020, monster_id = 21011201, pos = { x = 2.626, y = 0.082, z = 9.708 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6021, monster_id = 21011201, pos = { x = -2.430, y = 0.082, z = 9.668 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6022, monster_id = 21020301, pos = { x = -3.451, y = 0.082, z = -15.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6024, monster_id = 21020202, pos = { x = 3.803, y = 0.082, z = -15.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6025, monster_id = 21030304, pos = { x = -2.260, y = 0.082, z = -14.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6027, monster_id = 21030103, pos = { x = 2.605, y = 0.082, z = -14.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6028, monster_id = 21010402, pos = { x = -4.701, y = 0.082, z = -12.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6029, monster_id = 21030402, pos = { x = 0.077, y = 0.082, z = -12.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6043, monster_id = 21010501, pos = { x = 2.338, y = 1.178, z = -13.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 6044, monster_id = 21010901, pos = { x = -2.295, y = 0.082, z = -14.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 6045, monster_id = 21030402, pos = { x = 0.062, y = 0.082, z = -13.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6046, monster_id = 21010501, pos = { x = 5.007, y = 0.082, z = -12.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 },
	{ config_id = 6047, monster_id = 21010901, pos = { x = -4.699, y = 0.082, z = -12.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6030, gadget_id = 70350035, pos = { x = 0.005, y = -0.001, z = 0.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25 },
	{ config_id = 6031, gadget_id = 70900205, pos = { x = 7.120, y = -1.377, z = 4.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006023, name = "DUNGEON_SETTLE_6023", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_6023" },
	{ config_id = 1006032, name = "ANY_MONSTER_LIVE_6032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6032", action = "action_EVENT_ANY_MONSTER_LIVE_6032" },
	{ config_id = 1006033, name = "ANY_MONSTER_DIE_6033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6033", action = "action_EVENT_ANY_MONSTER_DIE_6033" },
	{ config_id = 1006034, name = "ANY_MONSTER_DIE_6034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6034", action = "action_EVENT_ANY_MONSTER_DIE_6034" },
	{ config_id = 1006035, name = "ANY_MONSTER_DIE_6035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6035", action = "action_EVENT_ANY_MONSTER_DIE_6035" },
	{ config_id = 1006036, name = "CHALLENGE_SUCCESS_6036", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6036" },
	{ config_id = 1006037, name = "CHALLENGE_FAIL_6037", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6037" },
	{ config_id = 1006038, name = "ANY_MONSTER_DIE_6038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6038", action = "action_EVENT_ANY_MONSTER_DIE_6038" },
	{ config_id = 1006039, name = "ANY_MONSTER_LIVE_6039", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6039", action = "action_EVENT_ANY_MONSTER_LIVE_6039" },
	{ config_id = 1006040, name = "CHALLENGE_SUCCESS_6040", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6040" },
	{ config_id = 1006041, name = "CHALLENGE_FAIL_6041", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6041" },
	{ config_id = 1006042, name = "ANY_MONSTER_DIE_6042", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6042", action = "action_EVENT_ANY_MONSTER_DIE_6042" }
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
		gadgets = { 6030, 6031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6001, 6002, 6003, 6004, 6005 },
		gadgets = { 6031 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6032", "ANY_MONSTER_DIE_6033", "CHALLENGE_SUCCESS_6036", "CHALLENGE_FAIL_6037" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 6006, 6008, 6009, 6010, 6017 },
		gadgets = { 6031 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6034", "CHALLENGE_SUCCESS_6036", "CHALLENGE_FAIL_6037" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 6013, 6014, 6015, 6016, 6019 },
		gadgets = { 6031 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6035", "CHALLENGE_SUCCESS_6036", "CHALLENGE_FAIL_6037" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 6011, 6012, 6018, 6020, 6021 },
		gadgets = { 6031 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6036", "CHALLENGE_FAIL_6037", "ANY_MONSTER_DIE_6042" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 6043, 6044, 6045, 6046, 6047 },
		gadgets = { 6031 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6036", "CHALLENGE_FAIL_6037" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { 6022, 6024 },
		gadgets = { 6031 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_6023", "ANY_MONSTER_DIE_6038", "ANY_MONSTER_LIVE_6039", "CHALLENGE_SUCCESS_6040", "CHALLENGE_FAIL_6041" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = suite_8,
		monsters = { 6007, 6025, 6027, 6028, 6029 },
		gadgets = { 6031 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_6023", "CHALLENGE_SUCCESS_6040", "CHALLENGE_FAIL_6041" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_6023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6032(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6032(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 231802006, 25, 6030, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231802006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6033(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231802006, 3)
	
	-- 针对当前group内变量名为 "monster1_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231802006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6034(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231802006, 4)
	
	-- 针对当前group内变量名为 "monster1_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6035(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231802006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6035(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231802006, 5)
	
	-- 针对当前group内变量名为 "monster1_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6036(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 231802005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组231802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231802007, 7001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 231802007, 7001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组231802005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231802005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231802008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231802008, 8001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组231802008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231802008, 8002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6037(context, evt)
	-- 改变指定group组231802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231802007, 7001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231802006, suite = 1 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_6038(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231802006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster2_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster2_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6038(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231802006, 8)
	
	-- 针对当前group内变量名为 "monster2_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster2_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6039(context, evt)
	if 6022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6039(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 188, 231802006, 7, 6030, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6040(context, evt)
	-- 改变指定group组231802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231802007, 7001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 231802005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6041(context, evt)
	-- 改变指定group组231802007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 231802007, 7001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 231802006, suite = 1 }) then
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
function condition_EVENT_ANY_MONSTER_DIE_6042(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 231802006) ~= 0 then
		return false
	end
	
	-- 判断变量"monster1_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster1_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6042(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 231802006, 6)
	
	-- 针对当前group内变量名为 "monster1_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster1_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end