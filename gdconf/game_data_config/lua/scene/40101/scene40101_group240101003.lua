-- 基础信息
local base_info = {
	group_id = 240101003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011202, pos = { x = 9.411, y = 0.002, z = -4.703 }, rot = { x = 0.000, y = 324.759, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 20011202, pos = { x = -11.592, y = 0.002, z = -4.689 }, rot = { x = 0.000, y = 47.991, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 20011202, pos = { x = -12.544, y = 0.002, z = -0.415 }, rot = { x = 0.000, y = 57.558, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 20011301, pos = { x = -2.419, y = 0.002, z = -10.601 }, rot = { x = 0.000, y = 324.854, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 3005, monster_id = 20011301, pos = { x = 4.305, y = 0.002, z = -10.206 }, rot = { x = 0.000, y = 341.801, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 20011202, pos = { x = -9.954, y = 0.002, z = -5.342 }, rot = { x = 0.000, y = 36.408, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 20011202, pos = { x = 6.773, y = 0.002, z = -6.460 }, rot = { x = 0.000, y = 337.846, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 20011202, pos = { x = -0.150, y = 0.002, z = -6.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, monster_id = 20011301, pos = { x = -0.398, y = 0.002, z = -11.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6105 }, isElite = true },
	{ config_id = 3020, monster_id = 20011301, pos = { x = 9.635, y = 0.078, z = -8.994 }, rot = { x = 0.000, y = 293.114, z = 0.000 }, level = 1 },
	{ config_id = 3021, monster_id = 20011301, pos = { x = 0.220, y = 0.107, z = -8.676 }, rot = { x = 0.039, y = 0.048, z = 0.107 }, level = 1, affix = { 6105 }, isElite = true },
	{ config_id = 3022, monster_id = 22010102, pos = { x = -4.637, y = 0.012, z = -8.473 }, rot = { x = 0.000, y = 31.976, z = 0.000 }, level = 1, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3009, gadget_id = 70900205, pos = { x = 8.387, y = -1.569, z = 1.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ANY_MONSTER_LIVE_3", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3", action = "action_EVENT_ANY_MONSTER_LIVE_3" },
	{ config_id = 1000004, name = "CHALLENGE_FAIL_4", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4" },
	{ config_id = 1000009, name = "MONSTER_TIDE_DIE_9", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_9", action = "action_EVENT_MONSTER_TIDE_DIE_9" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false },
	{ config_id = 2, name = "C1", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		gadgets = { 3009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3009 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3", "CHALLENGE_FAIL_4", "MONSTER_TIDE_DIE_9" },
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
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240101003, 12, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240101001 ；指定config：1002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240101001, 1002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240101001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240101001, 1002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4(context, evt)
	-- 改变指定group组240101001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240101001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240101001, 1002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240101009, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240101010中， configid为12的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240101010, 12, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240101003, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_9(context, evt)
	if 10 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_9(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3021, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3022, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end