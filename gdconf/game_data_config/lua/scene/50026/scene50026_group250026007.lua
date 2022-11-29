-- 基础信息
local base_info = {
	group_id = 250026007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 20011201, pos = { x = 7.841, y = -0.060, z = -6.570 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 7002, monster_id = 20011201, pos = { x = -5.434, y = -0.060, z = -6.583 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 },
	{ config_id = 7003, monster_id = 21010201, pos = { x = -5.015, y = -0.060, z = -11.493 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 7004, monster_id = 21010201, pos = { x = 1.519, y = -0.060, z = -13.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7005, monster_id = 21010201, pos = { x = 9.400, y = -0.060, z = -13.288 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1 },
	{ config_id = 7006, monster_id = 20011201, pos = { x = -9.685, y = -0.060, z = -2.687 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 7007, monster_id = 20011201, pos = { x = 13.393, y = -0.060, z = -2.390 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 7008, monster_id = 20011301, pos = { x = 1.803, y = -0.060, z = 5.963 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 7009, monster_id = 20011301, pos = { x = 5.994, y = -0.060, z = -8.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7010, monster_id = 20011301, pos = { x = -4.270, y = -0.060, z = -9.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, monster_id = 20011301, pos = { x = 13.628, y = -0.060, z = 0.041 }, rot = { x = 0.000, y = 315.283, z = 0.000 }, level = 1 },
	{ config_id = 7012, monster_id = 20011301, pos = { x = 13.117, y = -0.060, z = -9.688 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1 },
	{ config_id = 7013, monster_id = 20011301, pos = { x = 5.824, y = -0.060, z = -12.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7014, monster_id = 21010501, pos = { x = -11.381, y = -0.060, z = -6.753 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 7015, monster_id = 21010501, pos = { x = -12.930, y = -0.060, z = 0.828 }, rot = { x = 0.000, y = 76.240, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 7016, monster_id = 22010102, pos = { x = -1.480, y = -0.060, z = -14.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7017, monster_id = 21010201, pos = { x = -9.938, y = -0.060, z = 0.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7018, monster_id = 21010201, pos = { x = 11.083, y = -0.060, z = -2.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7019, monster_id = 21010201, pos = { x = -0.109, y = -0.060, z = 7.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7020, monster_id = 21010201, pos = { x = 6.117, y = -0.060, z = 6.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7021, monster_id = 21010201, pos = { x = 14.363, y = -0.161, z = -5.401 }, rot = { x = 0.000, y = 274.763, z = 0.000 }, level = 1 },
	{ config_id = 7022, monster_id = 21010201, pos = { x = -12.507, y = -0.161, z = -2.923 }, rot = { x = 0.000, y = 93.517, z = 0.000 }, level = 1 },
	{ config_id = 7023, monster_id = 21010201, pos = { x = 3.646, y = -0.161, z = -13.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7024, monster_id = 21010201, pos = { x = -5.990, y = -0.161, z = 4.131 }, rot = { x = 0.000, y = 178.635, z = 0.000 }, level = 1 },
	{ config_id = 7025, monster_id = 21010201, pos = { x = 7.205, y = -0.161, z = 4.058 }, rot = { x = 0.000, y = 178.635, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7026, gadget_id = 70900205, pos = { x = 7.838, y = -1.519, z = 1.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7027, gadget_id = 70350033, pos = { x = 0.919, y = 0.020, z = -9.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007028, name = "ANY_MONSTER_LIVE_7028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7028", action = "action_EVENT_ANY_MONSTER_LIVE_7028" },
	{ config_id = 1007029, name = "ANY_MONSTER_DIE_7029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7029", action = "action_EVENT_ANY_MONSTER_DIE_7029" },
	{ config_id = 1007030, name = "ANY_MONSTER_DIE_7030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7030", action = "action_EVENT_ANY_MONSTER_DIE_7030" },
	{ config_id = 1007031, name = "ANY_MONSTER_DIE_7031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7031", action = "action_EVENT_ANY_MONSTER_DIE_7031" },
	{ config_id = 1007032, name = "CHALLENGE_SUCCESS_7032", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7032" },
	{ config_id = 1007033, name = "CHALLENGE_FAIL_7033", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7033" },
	{ config_id = 1007034, name = "ANY_MONSTER_DIE_7034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7034", action = "action_EVENT_ANY_MONSTER_DIE_7034" }
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
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 7001, 7002, 7003, 7004, 7005 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_7028", "ANY_MONSTER_DIE_7029", "CHALLENGE_SUCCESS_7032", "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 7006, 7007, 7008, 7009, 7010 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7030", "CHALLENGE_SUCCESS_7032", "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 7011, 7012, 7013, 7014, 7015 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7031", "CHALLENGE_SUCCESS_7032", "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 7016, 7017, 7018, 7019, 7020 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_7032", "CHALLENGE_FAIL_7033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 7021, 7022, 7023, 7024, 7025 },
		gadgets = { 7026, 7027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7028(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7028(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 250026007, 25, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250026007) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250026007, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250026007) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250026007, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250026007) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7031(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250026007, 6)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7032(context, evt)
	-- 改变指定group组250026005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250026005, 5002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250026007中， configid为7027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250026007, 7027, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7033(context, evt)
	-- 改变指定group组250026006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250026006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250026006, 6001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组250026005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250026005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250026005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250026005, 5002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250026007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250026007) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250026007, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end