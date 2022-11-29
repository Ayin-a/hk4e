-- 基础信息
local base_info = {
	group_id = 240100003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011201, pos = { x = 5.047, y = 0.002, z = 8.520 }, rot = { x = 0.000, y = 226.120, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 20011201, pos = { x = -6.434, y = 0.002, z = 7.903 }, rot = { x = 0.000, y = 135.416, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 20011301, pos = { x = -8.392, y = 0.002, z = -1.953 }, rot = { x = 0.000, y = 42.087, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 20011201, pos = { x = -3.275, y = 0.002, z = -8.613 }, rot = { x = 0.000, y = 31.145, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 20011301, pos = { x = 6.688, y = 0.002, z = -1.990 }, rot = { x = 0.000, y = 300.196, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 22010102, pos = { x = -0.193, y = 0.246, z = -4.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 4, isElite = true },
	{ config_id = 3014, monster_id = 20011201, pos = { x = -12.740, y = 0.078, z = -1.934 }, rot = { x = 0.000, y = 55.317, z = 0.000 }, level = 1 },
	{ config_id = 3015, monster_id = 20011201, pos = { x = 10.260, y = 0.439, z = -4.869 }, rot = { x = 0.000, y = 284.899, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 20011201, pos = { x = -10.822, y = 0.078, z = 7.134 }, rot = { x = 0.000, y = 123.775, z = 0.000 }, level = 1 },
	{ config_id = 3020, monster_id = 20011201, pos = { x = 10.430, y = 0.078, z = 7.030 }, rot = { x = 0.000, y = 229.461, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3017, gadget_id = 70900205, pos = { x = -0.782, y = -0.669, z = 8.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ANY_MONSTER_LIVE_3", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3", action = "action_EVENT_ANY_MONSTER_LIVE_3" },
	{ config_id = 1000004, name = "CHALLENGE_FAIL_4", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4" },
	{ config_id = 1000009, name = "MONSTER_TIDE_DIE_9", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "", condition = "condition_EVENT_MONSTER_TIDE_DIE_9", action = "action_EVENT_MONSTER_TIDE_DIE_9" }
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
	suite = 1,
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
		-- description = suite_2,
		monsters = { },
		gadgets = { 3017 },
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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240100003, 20, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240100001 ；指定config：1002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240100001, 1002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240100001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240100001, 1002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240100001, 1002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240100001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240100001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240100009, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240100010中， configid为12的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240100010, 12, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240100003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_9(context, evt)
	if 15 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_9(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3006, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3014, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3015, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3019, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3020, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end