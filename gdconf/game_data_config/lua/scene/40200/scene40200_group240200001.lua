-- 基础信息
local base_info = {
	group_id = 240200001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010801, pos = { x = -10.282, y = 0.002, z = -5.938 }, rot = { x = 0.000, y = 37.768, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20010801, pos = { x = 9.971, y = 0.002, z = -10.891 }, rot = { x = 0.000, y = 294.539, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20010901, pos = { x = -0.165, y = 0.040, z = -8.873 }, rot = { x = 0.000, y = 358.639, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 20010801, pos = { x = 4.508, y = 0.040, z = -12.824 }, rot = { x = 0.000, y = 330.350, z = 0.000 }, level = 1 },
	{ config_id = 1005, monster_id = 20010801, pos = { x = -4.167, y = 0.040, z = -11.116 }, rot = { x = 0.000, y = 34.040, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 20010801, pos = { x = 7.859, y = 0.002, z = -2.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 22010201, pos = { x = -0.165, y = 0.040, z = -8.873 }, rot = { x = 0.000, y = 358.639, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1011, monster_id = 20010801, pos = { x = -7.744, y = 0.040, z = -2.499 }, rot = { x = 0.000, y = 51.979, z = 0.000 }, level = 1 },
	{ config_id = 1013, monster_id = 20010801, pos = { x = 2.542, y = 0.040, z = -6.345 }, rot = { x = 0.000, y = 311.076, z = 0.000 }, level = 1 },
	{ config_id = 1015, monster_id = 20010901, pos = { x = -0.165, y = 0.040, z = -8.873 }, rot = { x = 0.000, y = 358.639, z = 0.000 }, level = 1 },
	{ config_id = 1018, monster_id = 20010801, pos = { x = 7.316, y = 0.040, z = -8.319 }, rot = { x = 0.000, y = 330.350, z = 0.000 }, level = 1 },
	{ config_id = 1020, monster_id = 20010801, pos = { x = -6.569, y = 0.040, z = -5.922 }, rot = { x = 0.000, y = 34.040, z = 0.000 }, level = 1 },
	{ config_id = 1021, monster_id = 20010801, pos = { x = -3.035, y = 0.002, z = -5.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1009, gadget_id = 70900205, pos = { x = 8.527, y = -1.633, z = 4.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000004, name = "MONSTER_TIDE_DIE_4", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_4", action = "action_EVENT_MONSTER_TIDE_DIE_4" },
	{ config_id = 1000012, name = "ANY_MONSTER_LIVE_12", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_12", action = "action_EVENT_ANY_MONSTER_LIVE_12" },
	{ config_id = 1000014, name = "CHALLENGE_FAIL_14", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_14" },
	{ config_id = 1001008, name = "MONSTER_TIDE_DIE_1008", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_1008", action = "action_EVENT_MONSTER_TIDE_DIE_1008" },
	{ config_id = 1001010, name = "MONSTER_TIDE_DIE_1010", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_1010", action = "action_EVENT_MONSTER_TIDE_DIE_1010" }
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
		gadgets = { 1009 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_4", "ANY_MONSTER_LIVE_12", "CHALLENGE_FAIL_14", "MONSTER_TIDE_DIE_1008", "MONSTER_TIDE_DIE_1010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1009 },
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
function condition_EVENT_MONSTER_TIDE_DIE_4(context, evt)
	if 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_4(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1015, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240200001, 18, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240200002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240200002, 1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240200002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240200002, 1, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14(context, evt)
	-- 改变指定group组240200002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240200002, 1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240200002, 1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240200007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240200008中， configid为9的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240200008, 9, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240200001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1008(context, evt)
	if 10 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1008(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1010(context, evt)
	if 15 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1010(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1007, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end