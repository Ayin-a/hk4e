-- 基础信息
local base_info = {
	group_id = 240402001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010601, pos = { x = 8.490, y = 0.002, z = -6.275 }, rot = { x = 0.000, y = 331.236, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20010601, pos = { x = -8.978, y = 0.120, z = -4.610 }, rot = { x = 0.000, y = 46.651, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1003, monster_id = 20010702, pos = { x = -0.369, y = 0.183, z = -8.472 }, rot = { x = 0.000, y = 268.593, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1004, monster_id = 20010601, pos = { x = 4.488, y = 0.002, z = -6.791 }, rot = { x = 0.000, y = 341.928, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1005, monster_id = 20010604, pos = { x = -6.373, y = 0.002, z = -8.935 }, rot = { x = 0.000, y = 32.659, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1010, monster_id = 20010701, pos = { x = -2.402, y = 0.002, z = -8.935 }, rot = { x = 0.000, y = 32.659, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1011, monster_id = 20010604, pos = { x = 7.396, y = 0.002, z = 6.093 }, rot = { x = 0.000, y = 226.412, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1012, monster_id = 20010601, pos = { x = -6.120, y = 0.002, z = 2.825 }, rot = { x = 0.000, y = 32.659, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1013, monster_id = 20010702, pos = { x = 0.160, y = 0.302, z = 8.345 }, rot = { x = 0.000, y = 156.497, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1018, monster_id = 23030102, pos = { x = -0.291, y = 0.002, z = -11.093 }, rot = { x = 0.000, y = 3.383, z = 0.000 }, level = 1, affix = { 9002 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1006, gadget_id = 70900205, pos = { x = 9.635, y = -1.361, z = -3.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ANY_MONSTER_LIVE_3", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3", action = "action_EVENT_ANY_MONSTER_LIVE_3" },
	{ config_id = 1000010, name = "CHALLENGE_SUCCESS_10", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10" },
	{ config_id = 1000011, name = "CHALLENGE_FAIL_11", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11" },
	{ config_id = 1001007, name = "MONSTER_TIDE_DIE_1007", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_1007", action = "action_EVENT_MONSTER_TIDE_DIE_1007" }
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
		gadgets = { 1006 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3", "CHALLENGE_SUCCESS_10", "CHALLENGE_FAIL_11", "MONSTER_TIDE_DIE_1007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1006 },
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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240402001, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240402002 ；指定config：5；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240402002, 5, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240402002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240402002, 5, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10(context, evt)
	-- 改变指定group组240402007中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240402007, 14, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240402002, 5, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240402002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240402002, 5, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240402008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240402007中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240402007, 14, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240402001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1007(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end