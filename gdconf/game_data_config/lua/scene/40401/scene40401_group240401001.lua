-- 基础信息
local base_info = {
	group_id = 240401001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010501, pos = { x = 5.657, y = 0.002, z = -8.597 }, rot = { x = 0.000, y = 313.195, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20010501, pos = { x = 10.362, y = 0.002, z = 2.573 }, rot = { x = 0.000, y = 62.379, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20010501, pos = { x = -14.827, y = 0.002, z = 0.478 }, rot = { x = 0.000, y = 95.120, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 20010501, pos = { x = -8.594, y = 0.002, z = -8.141 }, rot = { x = 0.000, y = 45.355, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 20010702, pos = { x = -0.554, y = 0.002, z = -9.578 }, rot = { x = 0.000, y = 0.804, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1007, monster_id = 20010501, pos = { x = -6.761, y = 0.302, z = -8.615 }, rot = { x = 0.000, y = 50.385, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 20010501, pos = { x = -6.032, y = 0.302, z = 8.314 }, rot = { x = 0.000, y = 112.818, z = 0.000 }, level = 1 },
	{ config_id = 1009, monster_id = 20010501, pos = { x = 8.371, y = 0.302, z = -5.244 }, rot = { x = 0.000, y = 306.889, z = 0.000 }, level = 1 },
	{ config_id = 1010, monster_id = 20010702, pos = { x = 8.901, y = 0.302, z = 5.652 }, rot = { x = 0.000, y = 230.105, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1011, monster_id = 20010604, pos = { x = 0.056, y = 0.302, z = -10.160 }, rot = { x = 0.000, y = 357.908, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1013, monster_id = 20010604, pos = { x = -0.406, y = 0.002, z = 15.605 }, rot = { x = 0.000, y = 176.125, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1014, monster_id = 20010702, pos = { x = -10.454, y = 0.002, z = 8.203 }, rot = { x = 0.000, y = 176.125, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1015, monster_id = 20010604, pos = { x = 11.688, y = 0.002, z = 7.325 }, rot = { x = 0.000, y = 176.125, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1016, monster_id = 20010604, pos = { x = -8.185, y = 0.002, z = -5.634 }, rot = { x = 0.000, y = 45.645, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1017, monster_id = 20010604, pos = { x = 7.945, y = 0.002, z = -3.947 }, rot = { x = 0.000, y = 305.087, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1019, monster_id = 20010702, pos = { x = -0.698, y = 0.002, z = -8.943 }, rot = { x = 0.000, y = 353.696, z = 0.000 }, level = 1, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1004, gadget_id = 70900205, pos = { x = 11.741, y = -1.280, z = -3.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ANY_MONSTER_LIVE_3", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3", action = "action_EVENT_ANY_MONSTER_LIVE_3" },
	{ config_id = 1000010, name = "CHALLENGE_SUCCESS_10", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10" },
	{ config_id = 1000011, name = "CHALLENGE_FAIL_11", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11" },
	{ config_id = 1001012, name = "MONSTER_TIDE_DIE_1012", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_1012", action = "action_EVENT_MONSTER_TIDE_DIE_1012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Total", value = 0, no_refresh = false },
	{ config_id = 2, name = "Key", value = 0, no_refresh = false },
	{ config_id = 3, name = "C1", value = 0, no_refresh = false },
	{ config_id = 4, name = "monster_wave", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { 1004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1004 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3", "CHALLENGE_SUCCESS_10", "CHALLENGE_FAIL_11", "MONSTER_TIDE_DIE_1012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240401001, 16, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240401002 ；指定config：5；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240401002, 5, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240401002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240401002, 5, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10(context, evt)
	-- 改变指定group组240401007中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240401007, 14, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240401002, 5, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240401002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240401002, 5, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240401007中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240401007, 14, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240401008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240401001, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1012(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1019, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end