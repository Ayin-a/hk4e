-- 基础信息
local base_info = {
	group_id = 250011001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011301, pos = { x = 4.249, y = -0.014, z = 4.383 }, rot = { x = 0.000, y = 219.737, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1002, monster_id = 20011401, pos = { x = 1.130, y = -0.014, z = 6.685 }, rot = { x = 0.000, y = 132.852, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 1003, monster_id = 20011401, pos = { x = 4.850, y = -0.014, z = 1.133 }, rot = { x = 0.000, y = 333.963, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 1004, monster_id = 20011301, pos = { x = -9.507, y = -0.014, z = -4.757 }, rot = { x = 0.000, y = 124.497, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1005, monster_id = 21010101, pos = { x = -13.969, y = -0.014, z = -2.816 }, rot = { x = 0.000, y = 115.735, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1006, monster_id = 21010101, pos = { x = -7.550, y = -0.014, z = -10.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1007, monster_id = 21010101, pos = { x = -5.039, y = -0.014, z = -1.942 }, rot = { x = 0.000, y = 257.710, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1008, monster_id = 20011401, pos = { x = 7.148, y = -0.014, z = 7.217 }, rot = { x = 0.000, y = 215.571, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1009, monster_id = 20010601, pos = { x = -3.860, y = -0.014, z = 4.275 }, rot = { x = 0.000, y = 219.737, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1010, monster_id = 20011401, pos = { x = -8.600, y = -0.014, z = 4.948 }, rot = { x = 0.000, y = 132.852, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1011, monster_id = 20011401, pos = { x = -2.180, y = -0.014, z = 0.729 }, rot = { x = 0.000, y = 333.963, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1012, monster_id = 20011401, pos = { x = -0.637, y = -0.014, z = 8.216 }, rot = { x = 0.000, y = 186.046, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1013, monster_id = 20010501, pos = { x = 3.170, y = -0.014, z = -1.848 }, rot = { x = 0.000, y = 219.737, z = 0.000 }, level = 6, ban_excel_drop = true },
	{ config_id = 1014, monster_id = 22010101, pos = { x = 2.824, y = -0.014, z = -3.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, ban_excel_drop = true },
	{ config_id = 1015, monster_id = 20010501, pos = { x = 1.648, y = -0.014, z = -5.536 }, rot = { x = 0.000, y = 219.737, z = 0.000 }, level = 1, ban_excel_drop = true },
	{ config_id = 1016, monster_id = 20010501, pos = { x = 5.463, y = -0.014, z = -4.935 }, rot = { x = 0.000, y = 219.737, z = 0.000 }, level = 1, ban_excel_drop = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1017, gadget_id = 70360002, pos = { x = 0.059, y = -0.014, z = 0.916 }, rot = { x = 0.000, y = 357.273, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70211001, pos = { x = 0.105, y = -0.014, z = 5.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "GADGET_CREATE_1", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1", action = "action_EVENT_GADGET_CREATE_1", trigger_count = 0 },
	{ config_id = 1000002, name = "SELECT_OPTION_2", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2", action = "action_EVENT_SELECT_OPTION_2", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000003, name = "ANY_MONSTER_DIE_3", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_3", trigger_count = 0 },
	{ config_id = 1000005, name = "VARIABLE_CHANGE_5", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5", action = "action_EVENT_VARIABLE_CHANGE_5", trigger_count = 0 },
	{ config_id = 1000006, name = "VARIABLE_CHANGE_6", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6", action = "action_EVENT_VARIABLE_CHANGE_6", trigger_count = 0 },
	{ config_id = 1000007, name = "CHALLENGE_SUCCESS_7", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "3007", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7", trigger_count = 0 },
	{ config_id = 1000008, name = "CHALLENGE_FAIL_8", event = EventType.EVENT_CHALLENGE_FAIL, source = "3007", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8", trigger_count = 0 },
	{ config_id = 1000009, name = "VARIABLE_CHANGE_9", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_9", action = "action_EVENT_VARIABLE_CHANGE_9", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "DeadMonster", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { 1017 },
		regions = { },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_2", "ANY_MONSTER_DIE_3", "VARIABLE_CHANGE_5", "VARIABLE_CHANGE_6", "CHALLENGE_SUCCESS_7", "CHALLENGE_FAIL_8", "VARIABLE_CHANGE_9" },
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
function condition_EVENT_GADGET_CREATE_1(context, evt)
	if 1017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {104}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2(context, evt)
	if 1017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2(context, evt)
	-- 将configid为 1017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 1017 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建编号为3007（该挑战的识别id),挑战内容为174的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 3007, 174, 120, 250011001, 12, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3(context, evt)
	-- 针对当前group内变量名为 "DeadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "DeadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"DeadMonster"为3
	if ScriptLib.GetGroupVariableValue(context, "DeadMonster") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_6(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"DeadMonster"为7
	if ScriptLib.GetGroupVariableValue(context, "DeadMonster") ~= 7 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7(context, evt)
	-- 创建id为1018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "DeadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "DeadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为2013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 250011001, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 创建id为1017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "DeadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "DeadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建id为2013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为5的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_9(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"DeadMonster"为10
	if ScriptLib.GetGroupVariableValue(context, "DeadMonster") ~= 10 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_9(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end