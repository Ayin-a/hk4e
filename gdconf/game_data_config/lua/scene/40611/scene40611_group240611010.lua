-- 基础信息
local base_info = {
	group_id = 240611010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 21010501, pos = { x = 13.153, y = 0.087, z = -10.566 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 10002, monster_id = 21010501, pos = { x = -10.051, y = 0.087, z = -9.428 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 },
	{ config_id = 10003, monster_id = 21010301, pos = { x = -7.701, y = 0.087, z = -5.951 }, rot = { x = 0.000, y = 43.619, z = 0.000 }, level = 1 },
	{ config_id = 10004, monster_id = 21010301, pos = { x = 0.612, y = 0.087, z = -11.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10005, monster_id = 21010301, pos = { x = 7.474, y = 0.087, z = -9.164 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1 },
	{ config_id = 10006, monster_id = 21010301, pos = { x = -10.592, y = 0.087, z = -1.274 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 10007, monster_id = 21010301, pos = { x = 12.486, y = 0.087, z = -0.976 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 10008, monster_id = 21010301, pos = { x = 0.896, y = 0.087, z = 7.376 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 10009, monster_id = 21010701, pos = { x = 5.087, y = 0.087, z = -7.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10010, monster_id = 21010701, pos = { x = -5.177, y = 0.087, z = -7.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10011, monster_id = 21010201, pos = { x = 12.721, y = 0.087, z = 1.455 }, rot = { x = 0.000, y = 315.283, z = 0.000 }, level = 1 },
	{ config_id = 10012, monster_id = 21010201, pos = { x = 12.210, y = 0.087, z = -8.274 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1 },
	{ config_id = 10013, monster_id = 21020201, pos = { x = 0.177, y = 0.087, z = -13.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10014, monster_id = 21010201, pos = { x = -12.288, y = 0.087, z = -5.339 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1 },
	{ config_id = 10015, monster_id = 21010201, pos = { x = -13.837, y = 0.087, z = 2.242 }, rot = { x = 0.000, y = 76.240, z = 0.000 }, level = 1 },
	{ config_id = 10016, monster_id = 22010104, pos = { x = -2.960, y = 0.087, z = -12.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10017, monster_id = 21010201, pos = { x = -10.844, y = 0.087, z = 1.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10018, monster_id = 21010201, pos = { x = 10.176, y = 0.087, z = -0.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10019, monster_id = 21010201, pos = { x = -1.016, y = 0.087, z = 9.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10020, monster_id = 21010201, pos = { x = 5.211, y = 0.087, z = 7.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10021, monster_id = 21020201, pos = { x = 13.456, y = -0.014, z = -3.988 }, rot = { x = 0.000, y = 274.763, z = 0.000 }, level = 1 },
	{ config_id = 10022, monster_id = 21010201, pos = { x = -13.413, y = -0.014, z = -1.510 }, rot = { x = 0.000, y = 93.517, z = 0.000 }, level = 1 },
	{ config_id = 10023, monster_id = 21010502, pos = { x = 2.739, y = -0.014, z = -11.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10024, monster_id = 21010201, pos = { x = -6.897, y = -0.014, z = 5.545 }, rot = { x = 0.000, y = 178.635, z = 0.000 }, level = 1 },
	{ config_id = 10025, monster_id = 21010201, pos = { x = 6.299, y = -0.014, z = 5.472 }, rot = { x = 0.000, y = 178.635, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10026, gadget_id = 70900205, pos = { x = 6.932, y = -1.372, z = 3.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10027, gadget_id = 70350033, pos = { x = 0.012, y = 0.035, z = -7.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010028, name = "ANY_MONSTER_LIVE_10028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_10028", action = "action_EVENT_ANY_MONSTER_LIVE_10028" },
	{ config_id = 1010029, name = "ANY_MONSTER_DIE_10029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10029", action = "action_EVENT_ANY_MONSTER_DIE_10029" },
	{ config_id = 1010030, name = "ANY_MONSTER_DIE_10030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10030", action = "action_EVENT_ANY_MONSTER_DIE_10030" },
	{ config_id = 1010031, name = "ANY_MONSTER_DIE_10031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10031", action = "action_EVENT_ANY_MONSTER_DIE_10031" },
	{ config_id = 1010032, name = "CHALLENGE_SUCCESS_10032", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10032" },
	{ config_id = 1010033, name = "CHALLENGE_FAIL_10033", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10033" },
	{ config_id = 1010034, name = "ANY_MONSTER_DIE_10034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10034", action = "action_EVENT_ANY_MONSTER_DIE_10034" }
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
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 10001, 10002, 10003, 10004, 10005 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_10028", "ANY_MONSTER_DIE_10029", "CHALLENGE_SUCCESS_10032", "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 10006, 10007, 10008, 10009, 10010 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10030", "CHALLENGE_SUCCESS_10032", "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 10011, 10012, 10013, 10014, 10015 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10031", "CHALLENGE_SUCCESS_10032", "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 10016, 10017, 10018, 10019, 10020 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_10032", "CHALLENGE_FAIL_10033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 10021, 10022, 10023, 10024, 10025 },
		gadgets = { 10026, 10027 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_10028(context, evt)
	if 10001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_10028(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 2, 360, 240611010, 25, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240611010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240611010, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240611010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10030(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240611010, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240611010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10031(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240611010, 6)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10032(context, evt)
	-- 改变指定group组240611008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611008, 8002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240611010中， configid为10027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611010, 10027, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10033(context, evt)
	-- 改变指定group组240611009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240611009, 9001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240611010中， configid为10027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611010, 10027, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240611008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611008, 8001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240611008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240611008, 8002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240611010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240611010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为3
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240611010, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end