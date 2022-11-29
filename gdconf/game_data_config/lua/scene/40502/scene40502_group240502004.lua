-- 基础信息
local base_info = {
	group_id = 240502004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4004, monster_id = 20010501, pos = { x = -6.692, y = -0.259, z = -11.563 }, rot = { x = 0.000, y = 257.966, z = 0.000 }, level = 1 },
	{ config_id = 4005, monster_id = 20010501, pos = { x = 0.597, y = -0.259, z = -8.253 }, rot = { x = 0.000, y = 257.966, z = 0.000 }, level = 1 },
	{ config_id = 4024, monster_id = 20010501, pos = { x = 6.498, y = -0.139, z = -8.857 }, rot = { x = 0.000, y = 323.156, z = 0.000 }, level = 1 },
	{ config_id = 4025, monster_id = 20010501, pos = { x = -9.289, y = -0.139, z = -10.006 }, rot = { x = 0.000, y = 267.622, z = 0.000 }, level = 1 },
	{ config_id = 4038, monster_id = 20010604, pos = { x = -0.851, y = -0.139, z = -10.713 }, rot = { x = 0.000, y = 311.975, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 4039, monster_id = 20010501, pos = { x = 7.757, y = -0.139, z = 7.818 }, rot = { x = 0.000, y = 223.260, z = 0.000 }, level = 1 },
	{ config_id = 4040, monster_id = 20010501, pos = { x = -9.763, y = -0.139, z = 8.223 }, rot = { x = 0.000, y = 141.053, z = 0.000 }, level = 1 },
	{ config_id = 4041, monster_id = 20010702, pos = { x = 0.593, y = -0.139, z = 10.934 }, rot = { x = 0.000, y = 185.674, z = 0.000 }, level = 1, isElite = true },
	-- 雷debuff
	{ config_id = 4042, monster_id = 20010604, pos = { x = 11.564, y = -0.139, z = -5.752 }, rot = { x = 0.000, y = 96.459, z = 0.000 }, level = 1, affix = { 1027 }, isElite = true },
	{ config_id = 4043, monster_id = 20010702, pos = { x = 5.157, y = -0.139, z = -11.139 }, rot = { x = 0.000, y = 134.789, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 4044, monster_id = 20010501, pos = { x = 7.822, y = -0.259, z = -11.241 }, rot = { x = 0.000, y = 257.966, z = 0.000 }, level = 1 },
	-- 电伤害
	{ config_id = 4045, monster_id = 23030102, pos = { x = 0.773, y = -0.259, z = -12.195 }, rot = { x = 0.000, y = 7.069, z = 0.000 }, level = 1, affix = { 6104, 9002 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4021, gadget_id = 70900205, pos = { x = 0.827, y = -1.459, z = 2.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004001, name = "ANY_MONSTER_DIE_4001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4001", action = "action_EVENT_ANY_MONSTER_DIE_4001" },
	{ config_id = 1004002, name = "ANY_MONSTER_DIE_4002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4002", action = "action_EVENT_ANY_MONSTER_DIE_4002" },
	{ config_id = 1004003, name = "ANY_MONSTER_DIE_4003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4003", action = "action_EVENT_ANY_MONSTER_DIE_4003" },
	{ config_id = 1004022, name = "ANY_MONSTER_LIVE_4022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4022", action = "action_EVENT_ANY_MONSTER_LIVE_4022" },
	{ config_id = 1004026, name = "CHALLENGE_SUCCESS_4026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4026" },
	{ config_id = 1004027, name = "CHALLENGE_FAIL_4027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4027" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 4021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4024, 4025, 4038 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4001", "ANY_MONSTER_LIVE_4022", "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 4039, 4040, 4041 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4002", "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 4042, 4043 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4003", "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 4004, 4005, 4044, 4045 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4001(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240502004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4001(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240502004, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4002(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240502004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4002(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240502004, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240502004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240502004, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4022(context, evt)
	if 4024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 300, 240502004, 12, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4026(context, evt)
	-- 改变指定group组240502002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240502002, 2002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240502002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240502002, 2001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4027(context, evt)
	-- 改变指定group组240502003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240502003, 3001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240502003, 3001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240502002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240502002, 2001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240502002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240502002, 2002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240502004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end