-- 基础信息
local base_info = {
	group_id = 240501004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20010801, pos = { x = 7.040, y = 0.202, z = -5.942 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 4002, monster_id = 20010801, pos = { x = -6.235, y = 0.202, z = -5.955 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 },
	{ config_id = 4003, monster_id = 21010301, pos = { x = -5.816, y = 0.202, z = -10.865 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 4004, monster_id = 21010301, pos = { x = 0.718, y = 0.202, z = -12.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, monster_id = 21010301, pos = { x = 8.600, y = 0.202, z = -12.660 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1 },
	{ config_id = 4006, monster_id = 20010801, pos = { x = -10.485, y = 0.202, z = -2.059 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 4007, monster_id = 20010801, pos = { x = 12.593, y = 0.202, z = -1.762 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 4008, monster_id = 20010801, pos = { x = 1.003, y = 0.202, z = 6.591 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 4009, monster_id = 20011101, pos = { x = 5.193, y = 0.202, z = -8.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4010, monster_id = 20011101, pos = { x = -5.071, y = 0.202, z = -8.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4011, monster_id = 21010301, pos = { x = 12.828, y = 0.202, z = 0.669 }, rot = { x = 0.000, y = 315.283, z = 0.000 }, level = 1 },
	{ config_id = 4012, monster_id = 21010301, pos = { x = 12.317, y = 0.202, z = -9.060 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1 },
	{ config_id = 4013, monster_id = 21010301, pos = { x = 0.283, y = 0.202, z = -10.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4014, monster_id = 21010301, pos = { x = -12.181, y = 0.202, z = -6.125 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1 },
	{ config_id = 4015, monster_id = 21010301, pos = { x = -13.730, y = 0.202, z = 1.456 }, rot = { x = 0.000, y = 76.240, z = 0.000 }, level = 1 },
	{ config_id = 4016, monster_id = 22010201, pos = { x = 0.910, y = 0.202, z = -7.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4017, monster_id = 21010301, pos = { x = -10.738, y = 0.202, z = 0.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, monster_id = 21010301, pos = { x = 10.282, y = 0.202, z = -1.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4019, monster_id = 21010301, pos = { x = -0.909, y = 0.202, z = 8.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4020, monster_id = 21010301, pos = { x = 5.317, y = 0.202, z = 6.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4028, monster_id = 20010904, pos = { x = 1.084, y = 0.019, z = -11.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 4029, monster_id = 20010801, pos = { x = 8.146, y = 0.202, z = -10.332 }, rot = { x = 0.000, y = 345.883, z = 0.000 }, level = 1 },
	{ config_id = 4030, monster_id = 20010801, pos = { x = -6.051, y = 0.202, z = -10.457 }, rot = { x = 0.000, y = 42.483, z = 0.000 }, level = 1 },
	{ config_id = 4031, monster_id = 21010301, pos = { x = 8.616, y = 0.202, z = -1.029 }, rot = { x = 0.000, y = 290.266, z = 0.000 }, level = 1 },
	{ config_id = 4032, monster_id = 21010301, pos = { x = -9.395, y = 0.202, z = -0.370 }, rot = { x = 0.000, y = 97.945, z = 0.000 }, level = 1 },
	{ config_id = 4033, monster_id = 21010301, pos = { x = -0.646, y = 0.202, z = 8.979 }, rot = { x = 0.000, y = 188.529, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4021, gadget_id = 70900205, pos = { x = 7.038, y = -1.257, z = 2.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004022, name = "ANY_MONSTER_LIVE_4022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4022", action = "action_EVENT_ANY_MONSTER_LIVE_4022" },
	{ config_id = 1004023, name = "ANY_MONSTER_DIE_4023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4023", action = "action_EVENT_ANY_MONSTER_DIE_4023" },
	{ config_id = 1004024, name = "ANY_MONSTER_DIE_4024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4024", action = "action_EVENT_ANY_MONSTER_DIE_4024" },
	{ config_id = 1004025, name = "ANY_MONSTER_DIE_4025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4025", action = "action_EVENT_ANY_MONSTER_DIE_4025" },
	{ config_id = 1004026, name = "CHALLENGE_SUCCESS_4026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4026" },
	{ config_id = 1004027, name = "CHALLENGE_FAIL_4027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4027" },
	{ config_id = 1004034, name = "ANY_MONSTER_DIE_4034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4034", action = "action_EVENT_ANY_MONSTER_DIE_4034" }
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
		triggers = { "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4001, 4002, 4003, 4004, 4005 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4022", "ANY_MONSTER_DIE_4023", "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 4006, 4007, 4008, 4009, 4010 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4024", "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 4011, 4012, 4013, 4014, 4015 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4025", "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 4016, 4017, 4018, 4019, 4020 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 4028, 4029, 4030, 4031, 4032, 4033 },
		gadgets = { 4021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4026", "CHALLENGE_FAIL_4027", "ANY_MONSTER_DIE_4034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4022(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 300, 240501004, 26, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240501004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240501004, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240501004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240501004, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240501004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4025(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240501004, 6)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4026(context, evt)
	-- 改变指定group组240501002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240501002, 2002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240501002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240501002, 2001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4027(context, evt)
	-- 改变指定group组240501003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240501003, 3001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240501003, 3001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240501002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240501002, 2001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240501002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240501002, 2002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240501004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240501004) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240501004, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end