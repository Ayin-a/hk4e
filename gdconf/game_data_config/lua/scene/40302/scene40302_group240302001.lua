-- 基础信息
local base_info = {
	group_id = 240302001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011101, pos = { x = 6.325, y = 0.002, z = 10.658 }, rot = { x = 0.000, y = 215.565, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20011001, pos = { x = -3.208, y = 0.002, z = -10.738 }, rot = { x = 0.000, y = 356.040, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20011001, pos = { x = -7.208, y = 0.002, z = -5.912 }, rot = { x = 0.000, y = 64.980, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 20011001, pos = { x = 2.702, y = 0.002, z = 9.260 }, rot = { x = 0.000, y = 201.214, z = 0.000 }, level = 1 },
	-- 水球
	{ config_id = 1005, monster_id = 22010303, pos = { x = -7.421, y = 0.002, z = 11.677 }, rot = { x = 0.000, y = 150.379, z = 0.000 }, level = 1, affix = { 6106 }, isElite = true },
	{ config_id = 1006, monster_id = 22010304, pos = { x = 10.914, y = 0.002, z = -0.968 }, rot = { x = 0.000, y = 312.435, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1008, monster_id = 21030101, pos = { x = 1.568, y = 0.217, z = -5.686 }, rot = { x = 0.000, y = 349.757, z = 0.000 }, level = 1 },
	{ config_id = 1011, monster_id = 20011001, pos = { x = -10.847, y = 0.002, z = -3.391 }, rot = { x = 0.000, y = 356.040, z = 0.000 }, level = 1 },
	{ config_id = 1012, monster_id = 20011001, pos = { x = 8.708, y = 0.002, z = 4.195 }, rot = { x = 0.000, y = 356.040, z = 0.000 }, level = 1 },
	{ config_id = 1013, monster_id = 20011001, pos = { x = -6.412, y = 0.002, z = 5.293 }, rot = { x = 0.000, y = 356.040, z = 0.000 }, level = 1 },
	{ config_id = 1014, monster_id = 20011001, pos = { x = -9.581, y = 0.002, z = 1.561 }, rot = { x = 0.000, y = 64.980, z = 0.000 }, level = 1 },
	{ config_id = 1015, monster_id = 20011101, pos = { x = -8.755, y = 0.002, z = 8.677 }, rot = { x = 0.000, y = 64.980, z = 0.000 }, level = 1 },
	{ config_id = 1016, monster_id = 20011001, pos = { x = 7.419, y = 0.002, z = -5.303 }, rot = { x = 0.000, y = 64.980, z = 0.000 }, level = 1 },
	{ config_id = 1017, monster_id = 21030101, pos = { x = 6.625, y = 0.217, z = 6.744 }, rot = { x = 0.000, y = 223.877, z = 0.000 }, level = 1 },
	{ config_id = 1018, monster_id = 21030101, pos = { x = -3.266, y = 0.217, z = 8.651 }, rot = { x = 0.000, y = 143.494, z = 0.000 }, level = 1 },
	{ config_id = 1019, monster_id = 20011103, pos = { x = 12.035, y = 0.002, z = -5.681 }, rot = { x = 0.000, y = 201.214, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 1020, monster_id = 20011103, pos = { x = -10.984, y = 0.002, z = 3.552 }, rot = { x = 0.000, y = 64.980, z = 0.000 }, level = 1, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1010, gadget_id = 70900205, pos = { x = 10.591, y = -1.091, z = -0.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_LIVE_1", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1", action = "action_EVENT_ANY_MONSTER_LIVE_1" },
	{ config_id = 1000017, name = "CHALLENGE_FAIL_17", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_17" },
	{ config_id = 1001007, name = "MONSTER_TIDE_DIE_1007", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_1007", action = "action_EVENT_MONSTER_TIDE_DIE_1007" },
	{ config_id = 1001009, name = "MONSTER_TIDE_DIE_1009", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_1009", action = "action_EVENT_MONSTER_TIDE_DIE_1009" },
	{ config_id = 1001021, name = "MONSTER_TIDE_DIE_1021", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_1021", action = "action_EVENT_MONSTER_TIDE_DIE_1021" }
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
		gadgets = { 1010 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1", "CHALLENGE_FAIL_17", "MONSTER_TIDE_DIE_1007", "MONSTER_TIDE_DIE_1009", "MONSTER_TIDE_DIE_1021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 5, 50, 240302001, 22, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240302002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240302002, 1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240302002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240302002, 1, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_17(context, evt)
	-- 改变指定group组240302002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240302002, 1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240302002, 1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240302007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240302008中， configid为8的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240302008, 8, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240302001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1007(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1007(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1019, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1009(context, evt)
	if 7 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1009(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1020, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1021(context, evt)
	if 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1021(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1005, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end