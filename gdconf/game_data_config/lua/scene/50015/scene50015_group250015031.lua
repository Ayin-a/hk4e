-- 基础信息
local base_info = {
	group_id = 250015031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31002, monster_id = 21010201, pos = { x = 1386.307, y = 205.914, z = 527.077 }, rot = { x = 0.000, y = 142.813, z = 0.000 }, level = 1 },
	{ config_id = 31003, monster_id = 21010301, pos = { x = 1388.060, y = 207.002, z = 522.519 }, rot = { x = 0.000, y = 130.995, z = 0.000 }, level = 1 },
	{ config_id = 31004, monster_id = 21010301, pos = { x = 1389.357, y = 206.921, z = 524.295 }, rot = { x = 0.000, y = 130.995, z = 0.000 }, level = 1 },
	{ config_id = 31009, monster_id = 21020301, pos = { x = 1385.085, y = 207.780, z = 494.067 }, rot = { x = 0.000, y = 48.202, z = 0.000 }, level = 1 },
	{ config_id = 31010, monster_id = 21011201, pos = { x = 1388.333, y = 208.161, z = 494.470 }, rot = { x = 0.000, y = 9.766, z = 0.000 }, level = 1 },
	{ config_id = 31011, monster_id = 21011201, pos = { x = 1387.651, y = 208.391, z = 497.697 }, rot = { x = 0.000, y = 63.855, z = 0.000 }, level = 1 },
	{ config_id = 31012, monster_id = 21011201, pos = { x = 1389.452, y = 208.449, z = 496.293 }, rot = { x = 0.000, y = 39.664, z = 0.000 }, level = 1 },
	{ config_id = 31013, monster_id = 21010501, pos = { x = 1386.077, y = 213.210, z = 509.160 }, rot = { x = 0.000, y = 84.619, z = 0.000 }, level = 1 },
	{ config_id = 31014, monster_id = 26060201, pos = { x = 1393.444, y = 211.277, z = 500.408 }, rot = { x = 0.000, y = 36.947, z = 0.000 }, level = 1 },
	{ config_id = 31015, monster_id = 21010501, pos = { x = 1400.129, y = 213.053, z = 492.523 }, rot = { x = 0.000, y = 19.287, z = 0.000 }, level = 1 },
	{ config_id = 31016, monster_id = 21020101, pos = { x = 1387.750, y = 206.499, z = 524.808 }, rot = { x = 0.000, y = 137.797, z = 0.000 }, level = 1 },
	{ config_id = 31017, monster_id = 21020201, pos = { x = 1388.882, y = 208.461, z = 497.677 }, rot = { x = 0.000, y = 47.363, z = 0.000 }, level = 1 },
	{ config_id = 31018, monster_id = 26060201, pos = { x = 1396.212, y = 211.277, z = 498.833 }, rot = { x = 0.000, y = 36.947, z = 0.000 }, level = 1 },
	{ config_id = 31019, monster_id = 26060201, pos = { x = 1391.301, y = 211.277, z = 501.754 }, rot = { x = 0.000, y = 36.947, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31001, gadget_id = 70350023, pos = { x = 1401.355, y = 209.559, z = 510.041 }, rot = { x = 0.000, y = 100.296, z = 0.000 }, level = 1 },
	{ config_id = 31005, gadget_id = 70220004, pos = { x = 1393.415, y = 208.936, z = 497.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31006, gadget_id = 70220004, pos = { x = 1384.512, y = 208.202, z = 497.827 }, rot = { x = 352.010, y = 359.750, z = 3.577 }, level = 1 },
	{ config_id = 31007, gadget_id = 70220005, pos = { x = 1390.935, y = 208.032, z = 518.070 }, rot = { x = 6.182, y = 359.567, z = 351.995 }, level = 1 },
	{ config_id = 31008, gadget_id = 70220005, pos = { x = 1388.677, y = 206.948, z = 523.442 }, rot = { x = 10.715, y = 0.880, z = 11.337 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1031020, name = "SELECT_OPTION_31020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_31020", action = "action_EVENT_SELECT_OPTION_31020" },
	{ config_id = 1031021, name = "CHALLENGE_SUCCESS_31021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_31021", trigger_count = 0 },
	{ config_id = 1031022, name = "CHALLENGE_FAIL_31022", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_31022", trigger_count = 0 },
	{ config_id = 1031023, name = "ANY_MONSTER_LIVE_31023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_31023", action = "action_EVENT_ANY_MONSTER_LIVE_31023" },
	{ config_id = 1031024, name = "ANY_MONSTER_DIE_31024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31024", action = "action_EVENT_ANY_MONSTER_DIE_31024" },
	{ config_id = 1031025, name = "ANY_MONSTER_DIE_31025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31025", action = "action_EVENT_ANY_MONSTER_DIE_31025" },
	{ config_id = 1031026, name = "ANY_MONSTER_DIE_31026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31026", action = "action_EVENT_ANY_MONSTER_DIE_31026" },
	{ config_id = 1031027, name = "GADGET_CREATE_31027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_31027", action = "action_EVENT_GADGET_CREATE_31027" }
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
		gadgets = { 31001 },
		regions = { },
		triggers = { "SELECT_OPTION_31020", "CHALLENGE_SUCCESS_31021", "CHALLENGE_FAIL_31022", "ANY_MONSTER_LIVE_31023", "ANY_MONSTER_DIE_31024", "ANY_MONSTER_DIE_31025", "ANY_MONSTER_DIE_31026", "GADGET_CREATE_31027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 31005, 31006, 31007, 31008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 31002, 31003, 31004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 31013, 31014, 31015, 31018, 31019 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 31009, 31010, 31011, 31012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 31016, 31017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = suite_7,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_31020(context, evt)
	if 31001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_31020(context, evt)
	-- 删除指定group： 250015031 ；指定config：31001；物件身上指定option：2；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250015031, 31001, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 3)
	
	-- 将configid为 31001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_31021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250015031, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 31001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_31022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250015031, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 31001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015031, 31001, {2902}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_31023(context, evt)
	if 31002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_31023(context, evt)
	-- 创建编号为101（该挑战的识别id),挑战内容为10的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 10, 250015031, 14, 31001, 0) then
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
function condition_EVENT_ANY_MONSTER_DIE_31024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250015031) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250015031) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31025(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250015031) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31026(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015031, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_31027(context, evt)
	if 31001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_31027(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015031, 31001, {2902}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end