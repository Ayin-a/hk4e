-- 基础信息
local base_info = {
	group_id = 240702002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20011401, pos = { x = 11.171, y = -0.097, z = -6.830 }, rot = { x = 0.000, y = 324.818, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 20011401, pos = { x = 8.878, y = -0.097, z = 9.030 }, rot = { x = 0.000, y = 231.117, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 20011401, pos = { x = -10.062, y = -0.097, z = 9.291 }, rot = { x = 0.000, y = 129.715, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 20011401, pos = { x = -13.394, y = -0.097, z = -6.798 }, rot = { x = 0.000, y = 58.664, z = 0.000 }, level = 1 },
	{ config_id = 2005, monster_id = 20011401, pos = { x = 0.033, y = -0.097, z = -11.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, monster_id = 20011401, pos = { x = -0.090, y = -0.097, z = 11.035 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 20011401, pos = { x = 12.509, y = -0.163, z = -8.016 }, rot = { x = 0.000, y = 324.818, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 21011201, pos = { x = 10.213, y = 0.006, z = 10.053 }, rot = { x = 0.000, y = 233.123, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 21011201, pos = { x = -11.289, y = 0.072, z = 10.331 }, rot = { x = 0.000, y = 127.912, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 20011401, pos = { x = -14.506, y = 0.236, z = -7.284 }, rot = { x = 0.000, y = 58.664, z = 0.000 }, level = 1 },
	{ config_id = 2011, monster_id = 21010402, pos = { x = -2.011, y = -0.008, z = 11.367 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, monster_id = 21011201, pos = { x = -0.090, y = -0.097, z = 11.035 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, monster_id = 21020301, pos = { x = -0.015, y = -0.097, z = -13.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, monster_id = 21011201, pos = { x = 12.509, y = -0.163, z = -8.016 }, rot = { x = 0.000, y = 324.818, z = 0.000 }, level = 1 },
	{ config_id = 2017, monster_id = 21011201, pos = { x = 10.213, y = 0.006, z = 10.053 }, rot = { x = 0.000, y = 233.123, z = 0.000 }, level = 1 },
	{ config_id = 2018, monster_id = 21011201, pos = { x = -11.289, y = 0.072, z = 10.331 }, rot = { x = 0.000, y = 127.912, z = 0.000 }, level = 1 },
	{ config_id = 2019, monster_id = 21011201, pos = { x = -14.506, y = 0.236, z = -7.284 }, rot = { x = 0.000, y = 58.664, z = 0.000 }, level = 1 },
	{ config_id = 2020, monster_id = 21011201, pos = { x = 0.018, y = 0.020, z = -12.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2021, monster_id = 21011201, pos = { x = -0.090, y = -0.097, z = 11.035 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2029, monster_id = 20011401, pos = { x = 11.482, y = 0.236, z = -7.085 }, rot = { x = 0.000, y = 319.600, z = 0.000 }, level = 1 },
	{ config_id = 2030, monster_id = 21010402, pos = { x = 2.142, y = -0.008, z = 11.135 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2032, monster_id = 21030401, pos = { x = -0.053, y = -0.097, z = 11.359 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2022, gadget_id = 70900205, pos = { x = 5.738, y = -1.929, z = 6.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002023, name = "ANY_MONSTER_LIVE_2023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2023", action = "action_EVENT_ANY_MONSTER_LIVE_2023" },
	{ config_id = 1002024, name = "CHALLENGE_SUCCESS_2024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2024" },
	{ config_id = 1002025, name = "CHALLENGE_FAIL_2025", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2025" },
	{ config_id = 1002026, name = "ANY_MONSTER_DIE_2026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2026", action = "action_EVENT_ANY_MONSTER_DIE_2026", trigger_count = 15 },
	{ config_id = 1002027, name = "ANY_MONSTER_DIE_2027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2027", action = "action_EVENT_ANY_MONSTER_DIE_2027", trigger_count = 15 },
	{ config_id = 1002028, name = "ANY_MONSTER_DIE_2028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2028", action = "action_EVENT_ANY_MONSTER_DIE_2028", trigger_count = 15 }
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
		gadgets = { 2022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006 },
		gadgets = { 2022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2023", "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025", "ANY_MONSTER_DIE_2027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 2007, 2008, 2009, 2010, 2012, 2029 },
		gadgets = { 2022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025", "ANY_MONSTER_DIE_2026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 2016, 2017, 2018, 2019, 2020, 2021 },
		gadgets = { 2022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025", "ANY_MONSTER_DIE_2028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 2011, 2013, 2030, 2032 },
		gadgets = { 2022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2024", "CHALLENGE_FAIL_2025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2023(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 2, 360, 240702002, 22, 0) then
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
function action_EVENT_CHALLENGE_SUCCESS_2024(context, evt)
	-- 改变指定group组240702001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240702001, 1002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240702003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240702002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2025(context, evt)
	-- 改变指定group组240702001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240702001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240702001, 1001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240702003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240702002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240702002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2026(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240702002, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240702002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240702002, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240702002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2028(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240702002, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end