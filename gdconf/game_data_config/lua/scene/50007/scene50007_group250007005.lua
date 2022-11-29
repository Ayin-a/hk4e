-- 基础信息
local base_info = {
	group_id = 250007005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17, monster_id = 21010101, pos = { x = -65.030, y = -10.477, z = -218.940 }, rot = { x = 0.000, y = 322.177, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 18, monster_id = 21010101, pos = { x = -56.979, y = -7.159, z = -227.229 }, rot = { x = 0.000, y = 317.532, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 19, monster_id = 21010601, pos = { x = -48.640, y = -6.835, z = -218.522 }, rot = { x = 0.000, y = 263.773, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 20, monster_id = 21010601, pos = { x = -38.027, y = -6.645, z = -227.533 }, rot = { x = 0.000, y = 282.215, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 21, monster_id = 21010601, pos = { x = -49.474, y = -10.396, z = -208.829 }, rot = { x = 0.000, y = 249.078, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 22, monster_id = 21010601, pos = { x = -65.571, y = -10.396, z = -199.045 }, rot = { x = 0.000, y = 138.542, z = 0.000 }, level = 10 },
	{ config_id = 23, monster_id = 21010601, pos = { x = -38.766, y = -8.436, z = -208.837 }, rot = { x = 0.000, y = 257.968, z = 0.000 }, level = 10 },
	{ config_id = 24, monster_id = 21010101, pos = { x = -57.658, y = -8.436, z = -208.523 }, rot = { x = 0.000, y = 239.244, z = 0.000 }, level = 10, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13, gadget_id = 70360002, pos = { x = -78.504, y = -11.000, z = -213.546 }, rot = { x = 0.000, y = 270.052, z = 0.000 }, level = 1 },
	{ config_id = 14, gadget_id = 70211001, pos = { x = -75.881, y = -11.000, z = -213.479 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 15, gadget_id = 70900299, pos = { x = -53.997, y = 1.588, z = -214.839 }, rot = { x = 0.000, y = 274.660, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000026, name = "GADGET_CREATE_26", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_26", action = "action_EVENT_GADGET_CREATE_26", trigger_count = 0 },
	{ config_id = 1000027, name = "SELECT_OPTION_27", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_27", action = "action_EVENT_SELECT_OPTION_27", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000028, name = "ANY_MONSTER_LIVE_28", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_28", action = "action_EVENT_ANY_MONSTER_LIVE_28" },
	{ config_id = 1000029, name = "CHALLENGE_FAIL_29", event = EventType.EVENT_CHALLENGE_FAIL, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_FAIL_29", trigger_count = 0 },
	{ config_id = 1000030, name = "CHALLENGE_SUCCESS_30", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1003", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_30", trigger_count = 0 },
	{ config_id = 1000031, name = "VARIABLE_CHANGE_31", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_31", action = "action_EVENT_VARIABLE_CHANGE_31", trigger_count = 0 },
	{ config_id = 1000032, name = "VARIABLE_CHANGE_32", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_32", action = "action_EVENT_VARIABLE_CHANGE_32", trigger_count = 0 },
	{ config_id = 1000033, name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33" },
	{ config_id = 1000034, name = "ANY_MONSTER_DIE_34", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34", action = "action_EVENT_ANY_MONSTER_DIE_34", trigger_count = 0 },
	{ config_id = 1000035, name = "ANY_MONSTER_DIE_35", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35", action = "action_EVENT_ANY_MONSTER_DIE_35", trigger_count = 0 },
	{ config_id = 1000036, name = "ANY_MONSTER_DIE_36", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36", action = "action_EVENT_ANY_MONSTER_DIE_36", trigger_count = 0 },
	{ config_id = 1000037, name = "ANY_MONSTER_DIE_37", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37", action = "action_EVENT_ANY_MONSTER_DIE_37", trigger_count = 0 },
	{ config_id = 1000038, name = "ANY_MONSTER_DIE_38", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38", action = "action_EVENT_ANY_MONSTER_DIE_38", trigger_count = 0 },
	{ config_id = 1000039, name = "ANY_MONSTER_DIE_39", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_39", action = "action_EVENT_ANY_MONSTER_DIE_39", trigger_count = 0 },
	{ config_id = 1000040, name = "VARIABLE_CHANGE_40", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_40", action = "action_EVENT_VARIABLE_CHANGE_40", trigger_count = 0 },
	{ config_id = 1000041, name = "VARIABLE_CHANGE_41", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_41", action = "action_EVENT_VARIABLE_CHANGE_41", trigger_count = 0 },
	{ config_id = 1000042, name = "VARIABLE_CHANGE_42", event = EventType.EVENT_VARIABLE_CHANGE, source = "deadmonstercount", condition = "condition_EVENT_VARIABLE_CHANGE_42", action = "action_EVENT_VARIABLE_CHANGE_42", trigger_count = 0 },
	{ config_id = 1000043, name = "ANY_MONSTER_DIE_43", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_43", action = "action_EVENT_ANY_MONSTER_DIE_43" }
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
		gadgets = { 13 },
		regions = { },
		triggers = { "GADGET_CREATE_26", "SELECT_OPTION_27", "ANY_MONSTER_LIVE_28", "CHALLENGE_FAIL_29", "CHALLENGE_SUCCESS_30", "VARIABLE_CHANGE_31", "VARIABLE_CHANGE_32", "ANY_MONSTER_DIE_33", "ANY_MONSTER_DIE_34", "ANY_MONSTER_DIE_35", "ANY_MONSTER_DIE_36", "ANY_MONSTER_DIE_37", "ANY_MONSTER_DIE_38", "ANY_MONSTER_DIE_39", "VARIABLE_CHANGE_40", "VARIABLE_CHANGE_41", "VARIABLE_CHANGE_42" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_26(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_26(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {105}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_27(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_27(context, evt)
	-- 将configid为 13 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 17, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 18, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 24, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为15的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 15 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 13 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_28(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_28(context, evt)
	-- 创建编号为1003（该挑战的识别id),挑战内容为159的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1003, 159, 60, 250007005, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_29(context, evt)
	-- 创建id为13的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250007005, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_30(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 15 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为14的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_31(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为1
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 19, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_32(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为2
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_32(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 22, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34(context, evt)
	if 18 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35(context, evt)
	if 24 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36(context, evt)
	if 19 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37(context, evt)
	if 20 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38(context, evt)
	if 21 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_39(context, evt)
	if 22 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_39(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_40(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为3
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_40(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 21, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为4
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 23, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_42(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"deadmonstercount"为5
	if ScriptLib.GetGroupVariableValue(context, "deadmonstercount") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_42(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 20, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_43(context, evt)
	if 23 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_43(context, evt)
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadmonstercount", 1) then
	  return -1
	end
	
	return 0
end