-- 基础信息
local base_info = {
	group_id = 250007004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010101, pos = { x = -46.738, y = -11.000, z = -125.346 }, rot = { x = 0.000, y = 223.679, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 4002, monster_id = 21010101, pos = { x = -54.903, y = -11.000, z = -130.114 }, rot = { x = 0.000, y = 98.766, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 4003, monster_id = 21010601, pos = { x = -53.956, y = -3.999, z = -121.329 }, rot = { x = 0.000, y = 132.263, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 4004, monster_id = 21010601, pos = { x = -55.275, y = -3.999, z = -137.608 }, rot = { x = 0.000, y = 29.746, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 4005, monster_id = 21010601, pos = { x = -42.350, y = -3.999, z = -131.140 }, rot = { x = 0.000, y = 274.443, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 4006, monster_id = 21030201, pos = { x = -55.516, y = -11.000, z = -130.809 }, rot = { x = 0.000, y = 76.414, z = 0.000 }, level = 10 },
	{ config_id = 4007, monster_id = 21030201, pos = { x = -46.435, y = -11.000, z = -130.028 }, rot = { x = 0.000, y = 257.968, z = 0.000 }, level = 10 },
	{ config_id = 4008, monster_id = 21010101, pos = { x = -47.538, y = -11.000, z = -136.907 }, rot = { x = 0.000, y = 322.397, z = 0.000 }, level = 10, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4009, gadget_id = 70360002, pos = { x = -50.296, y = -11.000, z = -130.292 }, rot = { x = 0.000, y = 270.052, z = 0.000 }, level = 1 },
	{ config_id = 4010, gadget_id = 70211001, pos = { x = -44.356, y = -11.000, z = -130.336 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 4011, gadget_id = 70900299, pos = { x = -50.726, y = -10.668, z = -130.452 }, rot = { x = 0.000, y = 274.660, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000009, name = "GADGET_CREATE_9", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9", action = "action_EVENT_GADGET_CREATE_9", trigger_count = 0 },
	{ config_id = 1000010, name = "SELECT_OPTION_10", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10", action = "action_EVENT_SELECT_OPTION_10", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000011, name = "ANY_MONSTER_LIVE_11", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_11", action = "action_EVENT_ANY_MONSTER_LIVE_11", trigger_count = 0 },
	{ config_id = 1000012, name = "CHALLENGE_FAIL_12", event = EventType.EVENT_CHALLENGE_FAIL, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_FAIL_12", trigger_count = 0 },
	{ config_id = 1000013, name = "CHALLENGE_SUCCESS_13", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_13" },
	{ config_id = 1000014, name = "VARIABLE_CHANGE_14", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_14", action = "action_EVENT_VARIABLE_CHANGE_14", trigger_count = 0 },
	{ config_id = 1000015, name = "VARIABLE_CHANGE_15", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_15", action = "action_EVENT_VARIABLE_CHANGE_15", trigger_count = 0 },
	{ config_id = 1000016, name = "ANY_MONSTER_DIE_16", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_16", action = "action_EVENT_ANY_MONSTER_DIE_16", trigger_count = 0 },
	{ config_id = 1000017, name = "ANY_MONSTER_DIE_17", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17", action = "action_EVENT_ANY_MONSTER_DIE_17", trigger_count = 0 },
	{ config_id = 1000018, name = "ANY_MONSTER_DIE_18", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18", action = "action_EVENT_ANY_MONSTER_DIE_18", trigger_count = 0 },
	{ config_id = 1000019, name = "ANY_MONSTER_DIE_19", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19", action = "action_EVENT_ANY_MONSTER_DIE_19", trigger_count = 0 },
	{ config_id = 1000020, name = "ANY_MONSTER_DIE_20", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20", action = "action_EVENT_ANY_MONSTER_DIE_20", trigger_count = 0 },
	{ config_id = 1000021, name = "ANY_MONSTER_DIE_21", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21", action = "action_EVENT_ANY_MONSTER_DIE_21", trigger_count = 0 },
	{ config_id = 1000022, name = "ANY_MONSTER_DIE_22", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22", action = "action_EVENT_ANY_MONSTER_DIE_22", trigger_count = 0 },
	{ config_id = 1000023, name = "VARIABLE_CHANGE_23", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_23", action = "action_EVENT_VARIABLE_CHANGE_23", trigger_count = 0 },
	{ config_id = 1000024, name = "VARIABLE_CHANGE_24", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_24", action = "action_EVENT_VARIABLE_CHANGE_24", trigger_count = 0 },
	{ config_id = 1000025, name = "VARIABLE_CHANGE_25", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_25", action = "action_EVENT_VARIABLE_CHANGE_25", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadmonstercount", value = 0, no_refresh = false }
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
		gadgets = { 4009 },
		regions = { },
		triggers = { "GADGET_CREATE_9", "SELECT_OPTION_10", "ANY_MONSTER_LIVE_11", "CHALLENGE_FAIL_12", "CHALLENGE_SUCCESS_13", "VARIABLE_CHANGE_14", "VARIABLE_CHANGE_15", "ANY_MONSTER_DIE_16", "ANY_MONSTER_DIE_17", "ANY_MONSTER_DIE_18", "ANY_MONSTER_DIE_19", "ANY_MONSTER_DIE_20", "ANY_MONSTER_DIE_21", "ANY_MONSTER_DIE_22", "VARIABLE_CHANGE_23", "VARIABLE_CHANGE_24", "VARIABLE_CHANGE_25" },
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
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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
function condition_EVENT_GADGET_CREATE_9(context, evt)
	if 4009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {105}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_10(context, evt)
	if 4009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_10(context, evt)
	-- 将configid为 4009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为4011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_11(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_11(context, evt)
	-- 创建编号为1003（该挑战的识别id),挑战内容为159的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 159, 60, 250007004, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_12(context, evt)
	-- 创建id为4009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250007004, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_13(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为4010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_14(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为2
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_14(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_15(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为3
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_15(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_16(context, evt)
	if 4002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_16(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_18(context, evt)
	if 4003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19(context, evt)
	if 4004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_20(context, evt)
	if 4005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21(context, evt)
	if 4006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22(context, evt)
	if 4007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_23(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为2
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_23(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_24(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为4
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_24(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_25(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为5
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_25(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end