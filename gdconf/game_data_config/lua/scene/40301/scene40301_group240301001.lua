-- 基础信息
local base_info = {
	group_id = 240301001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 跳跃强化 水伤害
	{ config_id = 1001, monster_id = 20011103, pos = { x = -0.228, y = 0.002, z = -14.653 }, rot = { x = 0.000, y = 9.184, z = 0.000 }, level = 1, affix = { 6106 }, isElite = true },
	{ config_id = 1003, monster_id = 20011101, pos = { x = 9.719, y = 0.002, z = -9.777 }, rot = { x = 0.000, y = 206.476, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 20011101, pos = { x = -9.435, y = 0.002, z = -8.735 }, rot = { x = 0.000, y = 54.353, z = 0.000 }, level = 1 },
	{ config_id = 1006, monster_id = 20011001, pos = { x = 4.786, y = 0.133, z = -4.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, monster_id = 20011001, pos = { x = -7.748, y = 0.133, z = -5.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, monster_id = 20011001, pos = { x = 1.394, y = 0.002, z = 6.829 }, rot = { x = 0.000, y = 155.540, z = 0.000 }, level = 1 },
	{ config_id = 1010, monster_id = 21010301, pos = { x = 11.197, y = 0.133, z = 7.698 }, rot = { x = 0.000, y = 266.866, z = 0.000 }, level = 1 },
	{ config_id = 1011, monster_id = 21010301, pos = { x = -8.968, y = 0.133, z = 7.356 }, rot = { x = 0.000, y = 130.481, z = 0.000 }, level = 1 },
	{ config_id = 1022, monster_id = 21010301, pos = { x = 9.873, y = 0.133, z = -5.294 }, rot = { x = 0.000, y = 344.552, z = 0.000 }, level = 1 },
	{ config_id = 1024, monster_id = 21010301, pos = { x = -13.163, y = 0.133, z = -3.998 }, rot = { x = 0.000, y = 70.375, z = 0.000 }, level = 1 },
	{ config_id = 1027, monster_id = 20011001, pos = { x = 9.213, y = 0.133, z = 2.806 }, rot = { x = 0.000, y = 248.102, z = 0.000 }, level = 1 },
	{ config_id = 1028, monster_id = 20011001, pos = { x = -2.485, y = 0.133, z = -7.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, monster_id = 20011001, pos = { x = -5.426, y = 0.002, z = 9.301 }, rot = { x = 0.000, y = 155.540, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1009, gadget_id = 70900205, pos = { x = 10.834, y = -0.836, z = -0.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_LIVE_1", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1", action = "action_EVENT_ANY_MONSTER_LIVE_1" },
	{ config_id = 1000017, name = "CHALLENGE_FAIL_17", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_17" },
	{ config_id = 1001002, name = "MONSTER_TIDE_DIE_1002", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_1002", action = "action_EVENT_MONSTER_TIDE_DIE_1002" },
	{ config_id = 1001005, name = "MONSTER_TIDE_DIE_1005", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_1005", action = "action_EVENT_MONSTER_TIDE_DIE_1005" }
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
		triggers = { "ANY_MONSTER_LIVE_1", "CHALLENGE_FAIL_17", "MONSTER_TIDE_DIE_1002", "MONSTER_TIDE_DIE_1005" },
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
	if 1027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 5, 25, 240301001, 23, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240301002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240301002, 1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240301002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240301002, 1, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_17(context, evt)
	-- 改变指定group组240301002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240301002, 1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240301002, 1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240301008中， configid为8的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240301008, 8, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240301007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240301001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1002(context, evt)
	if 12 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1002(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_1005(context, evt)
	if 8 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_1005(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1001, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end