-- 基础信息
local base_info = {
	group_id = 240004007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7002, monster_id = 21010201, pos = { x = 347.315, y = -19.277, z = 336.133 }, rot = { x = 0.000, y = 342.966, z = 0.000 }, level = 1 },
	{ config_id = 7003, monster_id = 21010301, pos = { x = 343.320, y = -19.276, z = 336.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7004, monster_id = 21010201, pos = { x = 338.818, y = -19.276, z = 335.933 }, rot = { x = 0.000, y = 19.360, z = 0.000 }, level = 1 },
	{ config_id = 7005, monster_id = 20011001, pos = { x = 349.868, y = -19.277, z = 341.056 }, rot = { x = 0.000, y = 278.214, z = 0.000 }, level = 1 },
	{ config_id = 7006, monster_id = 20011001, pos = { x = 336.657, y = -19.277, z = 340.702 }, rot = { x = 0.000, y = 48.816, z = 0.000 }, level = 1 },
	{ config_id = 7007, monster_id = 20011101, pos = { x = 342.873, y = -19.277, z = 337.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7008, monster_id = 20011201, pos = { x = 350.369, y = -19.276, z = 342.906 }, rot = { x = 0.000, y = 262.391, z = 0.000 }, level = 1 },
	{ config_id = 7009, monster_id = 20011201, pos = { x = 336.746, y = -19.277, z = 342.933 }, rot = { x = 0.000, y = 76.646, z = 0.000 }, level = 1 },
	{ config_id = 7010, monster_id = 20011301, pos = { x = 343.182, y = -19.277, z = 340.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, monster_id = 20011201, pos = { x = 343.280, y = -19.277, z = 347.680 }, rot = { x = 0.000, y = 206.132, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7012, gadget_id = 70220010, pos = { x = 348.103, y = -19.221, z = 338.797 }, rot = { x = 0.000, y = 98.500, z = 0.000 }, level = 1 },
	{ config_id = 7013, gadget_id = 70220010, pos = { x = 338.376, y = -19.221, z = 338.953 }, rot = { x = 0.000, y = 174.292, z = 0.000 }, level = 1 },
	{ config_id = 7014, gadget_id = 70900205, pos = { x = 340.670, y = -20.190, z = 343.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000012, name = "ANY_MONSTER_LIVE_12", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_12", action = "action_EVENT_ANY_MONSTER_LIVE_12", trigger_count = 0 },
	{ config_id = 1000013, name = "CHALLENGE_FAIL_13", event = EventType.EVENT_CHALLENGE_FAIL, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_FAIL_13" },
	{ config_id = 1000014, name = "CHALLENGE_SUCCESS_14", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1002", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_14" },
	{ config_id = 1000017, name = "ANY_GADGET_DIE_17", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_17", action = "action_EVENT_ANY_GADGET_DIE_17", trigger_count = 0 },
	{ config_id = 1000018, name = "ANY_GADGET_DIE_18", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_18", action = "action_EVENT_ANY_GADGET_DIE_18", trigger_count = 0 },
	{ config_id = 1000019, name = "TIMER_EVENT_19", event = EventType.EVENT_TIMER_EVENT, source = "create14", condition = "", action = "action_EVENT_TIMER_EVENT_19", trigger_count = 0 },
	{ config_id = 1000020, name = "TIMER_EVENT_20", event = EventType.EVENT_TIMER_EVENT, source = "create15", condition = "", action = "action_EVENT_TIMER_EVENT_20", trigger_count = 0 },
	{ config_id = 1000038, name = "ANY_MONSTER_DIE_38", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38", action = "action_EVENT_ANY_MONSTER_DIE_38" },
	{ config_id = 1000039, name = "ANY_MONSTER_DIE_39", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39", action = "action_EVENT_ANY_MONSTER_DIE_39" }
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
		monsters = { 7002, 7003, 7004 },
		gadgets = { 7012, 7013, 7014 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_12", "CHALLENGE_FAIL_13", "CHALLENGE_SUCCESS_14", "ANY_GADGET_DIE_17", "ANY_GADGET_DIE_18", "TIMER_EVENT_19", "TIMER_EVENT_20", "ANY_MONSTER_DIE_38", "ANY_MONSTER_DIE_39" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 7014 },
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
	if 7003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	-- 创建编号为1002（该挑战的识别id),挑战内容为4的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1002, 4, 240004007, 10, 30, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为7012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为7013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_13(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240004004, 13, {12}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240004004中， configid为13的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240004004, 13, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240004007, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_14(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240004008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_17(context, evt)
	if 7012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_17(context, evt)
	-- 延迟20秒后,向groupId为：240004007的对象,请求一次调用,并将string参数："create14" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240004007, "create14", 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_18(context, evt)
	if 7013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_18(context, evt)
	-- 延迟20秒后,向groupId为：240004007的对象,请求一次调用,并将string参数："create15" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240004007, "create15", 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_19(context, evt)
	-- 创建id为7012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_20(context, evt)
	-- 创建id为7013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38(context, evt)
	if 7007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end