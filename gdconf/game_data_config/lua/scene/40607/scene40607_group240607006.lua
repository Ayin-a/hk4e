-- 基础信息
local base_info = {
	group_id = 240607006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20011103, pos = { x = 7.644, y = 0.188, z = -0.774 }, rot = { x = 0.000, y = 327.634, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 6002, monster_id = 20011001, pos = { x = -0.308, y = 0.188, z = -1.770 }, rot = { x = 0.000, y = 27.701, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6003, monster_id = 20011001, pos = { x = -7.646, y = 0.188, z = -0.814 }, rot = { x = 0.000, y = 24.075, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6004, monster_id = 20011001, pos = { x = -12.857, y = 0.188, z = -1.171 }, rot = { x = 0.000, y = 33.839, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6005, monster_id = 20011001, pos = { x = 13.171, y = 0.188, z = -0.162 }, rot = { x = 0.000, y = 306.568, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6006, monster_id = 20011103, pos = { x = -14.991, y = 0.188, z = -1.674 }, rot = { x = 0.000, y = 51.797, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 6007, monster_id = 20011001, pos = { x = 9.570, y = 0.188, z = -3.265 }, rot = { x = 0.000, y = 342.747, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6008, monster_id = 20011001, pos = { x = 0.104, y = 0.188, z = -5.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6009, monster_id = 20011001, pos = { x = -8.392, y = 0.188, z = -4.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6010, monster_id = 20011103, pos = { x = 6.118, y = 0.188, z = -2.053 }, rot = { x = 0.000, y = 344.915, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 6011, monster_id = 20011103, pos = { x = -6.117, y = 0.188, z = -1.562 }, rot = { x = 0.000, y = 60.623, z = 0.000 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 6012, monster_id = 20011103, pos = { x = 7.183, y = 0.188, z = 1.097 }, rot = { x = 0.000, y = 333.948, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 6013, monster_id = 20010601, pos = { x = -0.679, y = 0.188, z = -2.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6014, monster_id = 20010701, pos = { x = -7.948, y = 0.188, z = 0.363 }, rot = { x = 0.000, y = 21.059, z = 0.000 }, level = 1 },
	{ config_id = 6015, monster_id = 20010601, pos = { x = 3.861, y = 0.188, z = -2.491 }, rot = { x = 0.000, y = 356.000, z = 0.000 }, level = 1 },
	{ config_id = 6016, monster_id = 20010701, pos = { x = -5.164, y = 0.188, z = -2.197 }, rot = { x = 0.000, y = 20.073, z = 0.000 }, level = 1 },
	{ config_id = 6017, monster_id = 20010601, pos = { x = 8.121, y = 0.188, z = 1.658 }, rot = { x = 0.000, y = 324.425, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 6018, monster_id = 20011001, pos = { x = -8.123, y = 0.019, z = 2.465 }, rot = { x = 0.000, y = 54.568, z = 0.000 }, level = 1 },
	{ config_id = 6019, monster_id = 20010702, pos = { x = -3.723, y = 0.019, z = -0.799 }, rot = { x = 0.000, y = 25.327, z = 0.000 }, level = 1, affix = { 1031 }, isElite = true },
	{ config_id = 6020, monster_id = 20010604, pos = { x = 1.224, y = 0.019, z = -2.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6021, gadget_id = 70900205, pos = { x = 7.107, y = -1.188, z = 6.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6022, gadget_id = 70350035, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006023, name = "DUNGEON_SETTLE_6023", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_6023" },
	{ config_id = 1006024, name = "ANY_MONSTER_LIVE_6024", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6024", action = "action_EVENT_ANY_MONSTER_LIVE_6024" },
	{ config_id = 1006025, name = "CHALLENGE_FAIL_6025", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6025" },
	{ config_id = 1006026, name = "CHALLENGE_SUCCESS_6026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6026" },
	{ config_id = 1006027, name = "MONSTER_TIDE_DIE_6027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_6027", action = "action_EVENT_MONSTER_TIDE_DIE_6027" }
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
		gadgets = { 6021, 6022 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_6023", "ANY_MONSTER_LIVE_6024", "CHALLENGE_FAIL_6025", "CHALLENGE_SUCCESS_6026", "MONSTER_TIDE_DIE_6027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_6023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6022 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6024(context, evt)
	if 6002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6024(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1023的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1023, 240607006, 20, 6022, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6025(context, evt)
	-- 改变指定group组240607007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240607007, 7001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240607007, 7001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240607005中， configid为5002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240607005, 5002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240607005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240607005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240607006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6026(context, evt)
	-- 改变指定group组240607007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240607007, 7001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_6027(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_6027(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为7，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 240607006, {6001,6006,6010,6011,6012,6019,6020}, 7, 3, 3) then
		return -1
	end
	
	return 0
end