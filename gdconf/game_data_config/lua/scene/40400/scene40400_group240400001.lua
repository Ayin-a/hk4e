-- 基础信息
local base_info = {
	group_id = 240400001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010501, pos = { x = 6.803, y = 0.002, z = -5.667 }, rot = { x = 0.000, y = 207.205, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20010501, pos = { x = -9.715, y = 0.002, z = -5.232 }, rot = { x = 0.000, y = 75.092, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20010701, pos = { x = 7.358, y = 0.183, z = -9.316 }, rot = { x = 0.000, y = 91.062, z = 0.000 }, level = 1, affix = { 1006, 1009 }, isElite = true },
	{ config_id = 1006, monster_id = 20010601, pos = { x = -7.527, y = 0.002, z = -9.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, monster_id = 20010501, pos = { x = -0.817, y = 0.302, z = -8.558 }, rot = { x = 0.000, y = 153.612, z = 0.000 }, level = 1 },
	{ config_id = 1014, monster_id = 20010501, pos = { x = 8.140, y = 0.302, z = 5.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, monster_id = 20010501, pos = { x = -7.123, y = 0.302, z = 4.966 }, rot = { x = 0.000, y = 297.011, z = 0.000 }, level = 1 },
	{ config_id = 1017, monster_id = 20010501, pos = { x = 8.875, y = 0.302, z = 2.878 }, rot = { x = 0.000, y = 95.739, z = 0.000 }, level = 1 },
	{ config_id = 1018, monster_id = 20010501, pos = { x = 0.061, y = 0.302, z = 6.530 }, rot = { x = 0.000, y = 162.083, z = 0.000 }, level = 1 },
	{ config_id = 1020, monster_id = 20010501, pos = { x = -11.043, y = 0.002, z = 1.657 }, rot = { x = 0.000, y = 207.205, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1007, gadget_id = 70900205, pos = { x = 9.883, y = -0.940, z = -3.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ANY_MONSTER_LIVE_3", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3", action = "action_EVENT_ANY_MONSTER_LIVE_3" },
	{ config_id = 1000004, name = "MONSTER_TIDE_DIE_4", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "", condition = "condition_EVENT_MONSTER_TIDE_DIE_4", action = "action_EVENT_MONSTER_TIDE_DIE_4" },
	{ config_id = 1000010, name = "CHALLENGE_SUCCESS_10", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10" },
	{ config_id = 1000011, name = "CHALLENGE_FAIL_11", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Total", value = 0, no_refresh = false },
	{ config_id = 2, name = "Key", value = 0, no_refresh = false },
	{ config_id = 3, name = "C1", value = 0, no_refresh = false }
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
		gadgets = { 1007 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3", "MONSTER_TIDE_DIE_4", "CHALLENGE_SUCCESS_10", "CHALLENGE_FAIL_11" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1007 },
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
function condition_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240400001, 20, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240400002 ；指定config：5；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240400002, 5, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240400002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240400002, 5, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_4(context, evt)
	if 15 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1006, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1017, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1018, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1020, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10(context, evt)
	-- 改变指定group组240400007中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240400007, 14, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240400002, 5, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240400002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240400002, 5, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240400008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240400007中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240400007, 14, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240400001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end