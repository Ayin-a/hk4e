-- 基础信息
local base_info = {
	group_id = 240508003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 25010701, pos = { x = 9.010, y = 0.222, z = -5.637 }, rot = { x = 0.000, y = 330.937, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 25010701, pos = { x = 3.571, y = 0.222, z = -5.973 }, rot = { x = 0.000, y = 343.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 25060101, pos = { x = -8.180, y = 0.222, z = -2.023 }, rot = { x = 0.000, y = 88.007, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 25010701, pos = { x = 9.161, y = 0.222, z = -0.941 }, rot = { x = 0.000, y = 282.468, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 25060101, pos = { x = -2.387, y = 0.222, z = -9.826 }, rot = { x = 0.000, y = 23.176, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 25060101, pos = { x = -6.335, y = 0.222, z = -5.730 }, rot = { x = 0.000, y = 76.759, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 25010601, pos = { x = 4.618, y = 0.222, z = -12.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 25010601, pos = { x = -4.611, y = 0.222, z = -12.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, monster_id = 25010601, pos = { x = 10.604, y = 0.222, z = -7.718 }, rot = { x = 0.000, y = 315.042, z = 0.000 }, level = 1 },
	{ config_id = 3013, monster_id = 25010601, pos = { x = -9.462, y = 0.222, z = -9.655 }, rot = { x = 0.000, y = 54.303, z = 0.000 }, level = 1 },
	{ config_id = 3014, monster_id = 25010601, pos = { x = -7.204, y = 0.222, z = 2.349 }, rot = { x = 0.000, y = 113.937, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 25010601, pos = { x = 8.073, y = 0.222, z = 3.332 }, rot = { x = 0.000, y = 223.051, z = 0.000 }, level = 1 },
	{ config_id = 3021, monster_id = 25030301, pos = { x = -0.351, y = 0.038, z = -12.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, monster_id = 25030201, pos = { x = 14.882, y = 0.222, z = -4.679 }, rot = { x = 0.000, y = 269.518, z = 0.000 }, level = 1 },
	{ config_id = 3023, monster_id = 25030201, pos = { x = -13.049, y = 0.222, z = -7.380 }, rot = { x = 0.000, y = 57.634, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3027, gadget_id = 70900205, pos = { x = 7.077, y = -1.238, z = 2.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003004, name = "MONSTER_TIDE_DIE_3004", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_3004", action = "action_EVENT_MONSTER_TIDE_DIE_3004" },
	{ config_id = 1003005, name = "MONSTER_TIDE_DIE_3005", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_3005", action = "action_EVENT_MONSTER_TIDE_DIE_3005" },
	{ config_id = 1003028, name = "ANY_MONSTER_LIVE_3028", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3028", action = "action_EVENT_ANY_MONSTER_LIVE_3028" },
	{ config_id = 1003030, name = "MONSTER_TIDE_DIE_3030", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_3030", action = "action_EVENT_MONSTER_TIDE_DIE_3030" },
	{ config_id = 1003032, name = "CHALLENGE_SUCCESS_3032", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3032" },
	{ config_id = 1003033, name = "CHALLENGE_FAIL_3033", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3033" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 3027 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_3004", "MONSTER_TIDE_DIE_3005", "ANY_MONSTER_LIVE_3028", "MONSTER_TIDE_DIE_3030", "CHALLENGE_SUCCESS_3032", "CHALLENGE_FAIL_3033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3027 },
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
function condition_EVENT_MONSTER_TIDE_DIE_3004(context, evt)
	if 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3004(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3023, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_3005(context, evt)
	if 7 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3005(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3021, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3028(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3028(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 300, 240508003, 23, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_3030(context, evt)
	if 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3030(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3022, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3032(context, evt)
	-- 改变指定group组240508001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240508001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3033(context, evt)
	-- 改变指定group组240508002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240508002, 2001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240508001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240508001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240508001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240508003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end