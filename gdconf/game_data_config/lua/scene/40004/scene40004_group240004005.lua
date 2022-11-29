-- 基础信息
local base_info = {
	group_id = 240004005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5002, monster_id = 21010101, pos = { x = 348.322, y = -28.850, z = 425.942 }, rot = { x = 0.000, y = 337.029, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 21010101, pos = { x = 338.302, y = -28.850, z = 425.839 }, rot = { x = 0.000, y = 22.456, z = 0.000 }, level = 1 },
	{ config_id = 5004, monster_id = 21010201, pos = { x = 350.170, y = -29.033, z = 426.626 }, rot = { x = 0.000, y = 328.587, z = 0.000 }, level = 1 },
	{ config_id = 5005, monster_id = 21010201, pos = { x = 335.992, y = -29.033, z = 426.273 }, rot = { x = 0.000, y = 39.943, z = 0.000 }, level = 1 },
	{ config_id = 5006, monster_id = 21010301, pos = { x = 340.133, y = -29.033, z = 423.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, monster_id = 21010301, pos = { x = 347.166, y = -29.033, z = 423.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5008, monster_id = 21010301, pos = { x = 346.171, y = -29.033, z = 420.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, monster_id = 21010301, pos = { x = 338.184, y = -29.033, z = 419.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5010, monster_id = 21010301, pos = { x = 348.578, y = -29.062, z = 420.388 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, monster_id = 21010301, pos = { x = 335.971, y = -29.033, z = 420.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5012, gadget_id = 70900205, pos = { x = 344.079, y = -30.355, z = 425.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000027, name = "ANY_MONSTER_LIVE_27", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_27", action = "action_EVENT_ANY_MONSTER_LIVE_27", trigger_count = 0 },
	{ config_id = 1000028, name = "CHALLENGE_FAIL_28", event = EventType.EVENT_CHALLENGE_FAIL, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_FAIL_28" },
	{ config_id = 1000029, name = "CHALLENGE_SUCCESS_29", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_29" },
	{ config_id = 1000030, name = "ANY_MONSTER_DIE_30", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30", action = "action_EVENT_ANY_MONSTER_DIE_30" },
	{ config_id = 1000031, name = "ANY_MONSTER_DIE_31", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31", action = "action_EVENT_ANY_MONSTER_DIE_31" },
	{ config_id = 1000032, name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32" },
	{ config_id = 1000033, name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33" },
	{ config_id = 1000034, name = "ANY_MONSTER_DIE_34", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34", action = "action_EVENT_ANY_MONSTER_DIE_34" },
	{ config_id = 1000035, name = "ANY_MONSTER_DIE_35", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35", action = "action_EVENT_ANY_MONSTER_DIE_35" },
	{ config_id = 1000036, name = "ANY_MONSTER_DIE_36", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36", action = "action_EVENT_ANY_MONSTER_DIE_36" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 5002, 5003 },
		gadgets = { 5012 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_27", "CHALLENGE_FAIL_28", "CHALLENGE_SUCCESS_29", "ANY_MONSTER_DIE_30", "ANY_MONSTER_DIE_31", "ANY_MONSTER_DIE_32", "ANY_MONSTER_DIE_33", "ANY_MONSTER_DIE_34", "ANY_MONSTER_DIE_35", "ANY_MONSTER_DIE_36" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 5012 },
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
function condition_EVENT_ANY_MONSTER_LIVE_27(context, evt)
	if 5002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_27(context, evt)
	-- 创建编号为1001（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1001, 5, 15, 240004005, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_28(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240004005, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240004003, 11, {10}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240004003中， configid为11的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240004003, 11, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_29(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240004006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240004002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240004002, 2002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30(context, evt)
	if 5002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31(context, evt)
	if 5003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32(context, evt)
	if 5005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 5004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34(context, evt)
	if 5005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35(context, evt)
	if 5007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36(context, evt)
	if 5006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end