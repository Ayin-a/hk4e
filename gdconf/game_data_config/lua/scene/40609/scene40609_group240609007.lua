-- 基础信息
local base_info = {
	group_id = 240609007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 20010601, pos = { x = 6.143, y = 0.432, z = -4.278 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7002, monster_id = 20010701, pos = { x = -7.132, y = 0.432, z = -4.291 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7003, monster_id = 20010601, pos = { x = -6.713, y = 0.432, z = -9.201 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7004, monster_id = 21010201, pos = { x = -0.179, y = 0.432, z = -10.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7005, monster_id = 21010201, pos = { x = 7.702, y = 0.432, z = -10.996 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7006, monster_id = 20010601, pos = { x = -11.382, y = 0.432, z = -0.395 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7007, monster_id = 20010701, pos = { x = 11.696, y = 0.432, z = -0.098 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 电三角
	{ config_id = 7008, monster_id = 20010701, pos = { x = 1.285, y = 0.432, z = 10.588 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1, affix = { 1007, 6104 }, isElite = true },
	{ config_id = 7009, monster_id = 21010201, pos = { x = 4.296, y = 0.432, z = -6.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7010, monster_id = 21010201, pos = { x = -5.968, y = 0.432, z = -6.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7016, monster_id = 20010604, pos = { x = 4.899, y = 0.432, z = 9.912 }, rot = { x = 0.000, y = 203.110, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7017, monster_id = 20010701, pos = { x = -11.635, y = 0.432, z = 2.436 }, rot = { x = 0.000, y = 101.360, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 电三角
	{ config_id = 7018, monster_id = 20010701, pos = { x = 9.385, y = 0.432, z = -0.070 }, rot = { x = 0.000, y = 274.510, z = 0.000 }, level = 1, affix = { 1007, 6104 }, isElite = true },
	{ config_id = 7019, monster_id = 20010701, pos = { x = -8.210, y = 0.432, z = 7.043 }, rot = { x = 0.000, y = 133.400, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7020, monster_id = 20010701, pos = { x = 0.013, y = 0.432, z = -5.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 7022, monster_id = 23030101, pos = { x = 0.032, y = 0.432, z = -7.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007, 6104, 9002 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7030, gadget_id = 70900205, pos = { x = 6.141, y = -1.027, z = 3.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007031, name = "ANY_MONSTER_LIVE_7031", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7031", action = "action_EVENT_ANY_MONSTER_LIVE_7031" },
	{ config_id = 1007032, name = "ANY_MONSTER_DIE_7032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7032", action = "action_EVENT_ANY_MONSTER_DIE_7032" },
	{ config_id = 1007033, name = "ANY_MONSTER_DIE_7033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7033", action = "action_EVENT_ANY_MONSTER_DIE_7033" },
	{ config_id = 1007034, name = "ANY_MONSTER_DIE_7034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7034", action = "action_EVENT_ANY_MONSTER_DIE_7034" },
	{ config_id = 1007035, name = "CHALLENGE_SUCCESS_7035", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7035" },
	{ config_id = 1007036, name = "CHALLENGE_FAIL_7036", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7036" },
	{ config_id = 1007037, name = "ANY_MONSTER_DIE_7037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7037", action = "action_EVENT_ANY_MONSTER_DIE_7037" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 7030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 7001, 7002, 7003, 7004, 7005 },
		gadgets = { 7030 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_7031", "ANY_MONSTER_DIE_7032", "CHALLENGE_SUCCESS_7035", "CHALLENGE_FAIL_7036" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 7006, 7007, 7008, 7009, 7010 },
		gadgets = { 7030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7033", "CHALLENGE_SUCCESS_7035", "CHALLENGE_FAIL_7036" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 7030 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7034", "CHALLENGE_SUCCESS_7035", "CHALLENGE_FAIL_7036" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 7016, 7017, 7018, 7019, 7020 },
		gadgets = { 7030 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_7035", "CHALLENGE_FAIL_7036", "ANY_MONSTER_DIE_7037" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 7022 },
		gadgets = { 7030 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_7035", "CHALLENGE_FAIL_7036" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7031(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7031(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1000的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1000, 360, 240609007, 16, 0) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7032(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240609007) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7032(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240609007, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240609007) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7033(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240609007, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7034(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240609007) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7034(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240609007, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7035(context, evt)
	-- 改变指定group组240609005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609005, 5002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240609005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240609005中， configid为5003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609005, 5003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7036(context, evt)
	-- 改变指定group组240609006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240609006, 6001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240609005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240609005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609005, 5002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240609005中， configid为5003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240609005, 5003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240609007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7037(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240609007) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7037(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240609007, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end