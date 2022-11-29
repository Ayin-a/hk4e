-- 基础信息
local base_info = {
	group_id = 240201001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010801, pos = { x = 3.530, y = -0.097, z = -5.714 }, rot = { x = 0.000, y = 63.458, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20010801, pos = { x = 2.915, y = -0.097, z = -11.348 }, rot = { x = 0.000, y = 325.832, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 21010201, pos = { x = -7.830, y = 0.002, z = -7.120 }, rot = { x = 0.000, y = 51.979, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 21010201, pos = { x = 5.819, y = 0.002, z = -7.485 }, rot = { x = 0.000, y = 324.603, z = 0.000 }, level = 1 },
	-- 冰伤害
	{ config_id = 1007, monster_id = 22010202, pos = { x = 0.341, y = 0.002, z = 12.547 }, rot = { x = 0.000, y = 171.873, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1012, monster_id = 20010801, pos = { x = 8.458, y = -0.097, z = -2.408 }, rot = { x = 0.000, y = 282.568, z = 0.000 }, level = 1 },
	{ config_id = 1013, monster_id = 20010801, pos = { x = -8.456, y = -0.097, z = 1.023 }, rot = { x = 0.000, y = 81.229, z = 0.000 }, level = 1 },
	{ config_id = 1014, monster_id = 21010201, pos = { x = -6.109, y = 0.002, z = 4.830 }, rot = { x = 0.000, y = 121.402, z = 0.000 }, level = 1 },
	{ config_id = 1015, monster_id = 21010201, pos = { x = 6.614, y = 0.002, z = 3.413 }, rot = { x = 0.000, y = 255.389, z = 0.000 }, level = 1 },
	{ config_id = 1017, monster_id = 20010901, pos = { x = 10.000, y = 0.002, z = -1.333 }, rot = { x = 0.000, y = 186.709, z = 0.000 }, level = 1 },
	{ config_id = 1018, monster_id = 20010901, pos = { x = -10.472, y = 0.002, z = -0.648 }, rot = { x = 0.000, y = 186.709, z = 0.000 }, level = 1 },
	{ config_id = 1019, monster_id = 20010801, pos = { x = -6.669, y = -0.097, z = -4.024 }, rot = { x = 0.000, y = 81.229, z = 0.000 }, level = 1 },
	{ config_id = 1020, monster_id = 21010201, pos = { x = -0.011, y = 0.002, z = 5.977 }, rot = { x = 0.000, y = 182.177, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1008, gadget_id = 70900205, pos = { x = 8.069, y = -1.215, z = 7.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000012, name = "ANY_MONSTER_LIVE_12", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_12", action = "action_EVENT_ANY_MONSTER_LIVE_12" },
	{ config_id = 1000014, name = "CHALLENGE_FAIL_14", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_14" },
	{ config_id = 1001009, name = "MONSTER_TIDE_DIE_1009", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_1009", action = "action_EVENT_MONSTER_TIDE_DIE_1009" },
	{ config_id = 1001010, name = "MONSTER_TIDE_DIE_1010", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_1010", action = "action_EVENT_MONSTER_TIDE_DIE_1010" },
	{ config_id = 1001011, name = "MONSTER_TIDE_DIE_1011", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_1011", action = "action_EVENT_MONSTER_TIDE_DIE_1011" }
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
		gadgets = { 1008 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_12", "CHALLENGE_FAIL_14", "MONSTER_TIDE_DIE_1009", "MONSTER_TIDE_DIE_1010", "MONSTER_TIDE_DIE_1011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240201001, 20, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240201002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240201002, 1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240201002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240201002, 1, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14(context, evt)
	-- 改变指定group组240201002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240201002, 1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240201002, 1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240201007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240201008中， configid为9的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240201008, 9, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240201001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1009(context, evt)
	if 10 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1009(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1007, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1010(context, evt)
	if 7 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1010(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1017, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1011(context, evt)
	if 7 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1011(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1018, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end