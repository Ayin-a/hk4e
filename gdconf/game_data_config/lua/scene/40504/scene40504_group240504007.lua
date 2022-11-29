-- 基础信息
local base_info = {
	group_id = 240504007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 21030103, pos = { x = 4.198, y = 0.159, z = 13.763 }, rot = { x = 0.000, y = 207.279, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 7002, monster_id = 20011001, pos = { x = -11.752, y = 0.159, z = -3.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7003, monster_id = 20011001, pos = { x = -5.827, y = 0.159, z = -11.092 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7004, monster_id = 20011103, pos = { x = 0.707, y = 0.159, z = -12.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 7005, monster_id = 20011001, pos = { x = 8.388, y = 0.159, z = -10.595 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7006, monster_id = 20011103, pos = { x = -9.972, y = 0.159, z = 1.737 }, rot = { x = 0.000, y = 176.690, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 7007, monster_id = 20011001, pos = { x = 1.034, y = 0.159, z = -7.451 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7009, monster_id = 20011103, pos = { x = -5.663, y = 0.159, z = -6.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	-- 水debuff
	{ config_id = 7010, monster_id = 20011101, pos = { x = -9.220, y = 0.159, z = -10.333 }, rot = { x = 0.000, y = 43.470, z = 0.000 }, level = 1, affix = { 1006, 1026 } },
	{ config_id = 7013, monster_id = 20011001, pos = { x = 0.272, y = 0.159, z = -11.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7016, monster_id = 22010302, pos = { x = -2.519, y = 0.159, z = 15.476 }, rot = { x = 0.000, y = 180.632, z = 0.000 }, level = 1, affix = { 1006, 6106 }, isElite = true },
	{ config_id = 7017, monster_id = 20011001, pos = { x = 0.750, y = 0.159, z = 9.199 }, rot = { x = 0.000, y = 203.110, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7019, monster_id = 20011001, pos = { x = -7.575, y = 0.159, z = 9.933 }, rot = { x = 0.000, y = 167.200, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7020, monster_id = 20011001, pos = { x = 9.512, y = 0.159, z = 8.677 }, rot = { x = 0.000, y = 203.110, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 7021, monster_id = 20011103, pos = { x = -10.203, y = 0.159, z = -6.523 }, rot = { x = 0.000, y = 176.690, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7022, gadget_id = 70900205, pos = { x = 7.027, y = -1.301, z = 2.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007008, name = "ANY_MONSTER_DIE_7008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7008", action = "action_EVENT_ANY_MONSTER_DIE_7008" },
	{ config_id = 1007011, name = "VARIABLE_CHANGE_7011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7011", action = "action_EVENT_VARIABLE_CHANGE_7011" },
	{ config_id = 1007012, name = "ANY_MONSTER_DIE_7012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7012", action = "action_EVENT_ANY_MONSTER_DIE_7012" },
	{ config_id = 1007014, name = "ANY_MONSTER_DIE_7014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7014", action = "action_EVENT_ANY_MONSTER_DIE_7014" },
	{ config_id = 1007015, name = "ANY_MONSTER_DIE_7015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7015", action = "action_EVENT_ANY_MONSTER_DIE_7015" },
	{ config_id = 1007018, name = "ANY_MONSTER_DIE_7018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7018", action = "action_EVENT_ANY_MONSTER_DIE_7018" },
	{ config_id = 1007023, name = "ANY_MONSTER_LIVE_7023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7023", action = "action_EVENT_ANY_MONSTER_LIVE_7023" },
	{ config_id = 1007024, name = "ANY_MONSTER_DIE_7024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7024", action = "action_EVENT_ANY_MONSTER_DIE_7024" },
	{ config_id = 1007025, name = "ANY_MONSTER_DIE_7025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7025", action = "action_EVENT_ANY_MONSTER_DIE_7025" },
	{ config_id = 1007027, name = "CHALLENGE_SUCCESS_7027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7027" },
	{ config_id = 1007028, name = "CHALLENGE_FAIL_7028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7028" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false },
	{ config_id = 2, name = "key3", value = 0, no_refresh = false }
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
		gadgets = { 7022 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_7028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 7003, 7004, 7005, 7007 },
		gadgets = { 7022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_7023", "ANY_MONSTER_DIE_7024", "CHALLENGE_SUCCESS_7027", "CHALLENGE_FAIL_7028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 7002, 7010, 7013 },
		gadgets = { 7022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7008", "VARIABLE_CHANGE_7011", "ANY_MONSTER_DIE_7012", "ANY_MONSTER_DIE_7014", "ANY_MONSTER_DIE_7015", "ANY_MONSTER_DIE_7018", "ANY_MONSTER_DIE_7025", "CHALLENGE_SUCCESS_7027", "CHALLENGE_FAIL_7028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 7022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_7027", "CHALLENGE_FAIL_7028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 7001, 7016, 7017, 7019, 7020 },
		gadgets = { 7022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_7027", "CHALLENGE_FAIL_7028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7008(context, evt)
	if 7002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7008(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7006, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key3"为3
	if ScriptLib.GetGroupVariableValue(context, "key3") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7011(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240504007, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7012(context, evt)
	if 7013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7012(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7009, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7014(context, evt)
	if 7010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7014(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7021, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7015(context, evt)
	if 7009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7015(context, evt)
	-- 针对当前group内变量名为 "key3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7018(context, evt)
	if 7006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7018(context, evt)
	-- 针对当前group内变量名为 "key3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7023(context, evt)
	if 7004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240504007, 15, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240504007) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240504007, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7025(context, evt)
	if 7021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7025(context, evt)
	-- 针对当前group内变量名为 "key3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7027(context, evt)
	-- 改变指定group组240504001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240504001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240504001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240504001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7028(context, evt)
	-- 改变指定group组240504002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240504002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240504002, 2001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240504001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240504001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240504001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240504001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240504007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end