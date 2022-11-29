-- 基础信息
local base_info = {
	group_id = 240405010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 20010501, pos = { x = -10.551, y = 0.168, z = -7.435 }, rot = { x = 0.000, y = 50.400, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10002, monster_id = 20010501, pos = { x = -6.651, y = 0.283, z = 8.565 }, rot = { x = 0.000, y = 112.800, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10003, monster_id = 20010601, pos = { x = 6.649, y = 0.283, z = -7.535 }, rot = { x = 0.000, y = 325.600, z = 0.000 }, level = 1, affix = { 1007, 1009 }, isElite = true },
	{ config_id = 10004, monster_id = 20010701, pos = { x = 7.849, y = 0.283, z = 6.765 }, rot = { x = 0.000, y = 213.700, z = 0.000 }, level = 1, affix = { 1007, 1009 }, isElite = true },
	{ config_id = 10005, monster_id = 20010501, pos = { x = -1.551, y = 0.283, z = -10.535 }, rot = { x = 0.000, y = 358.300, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10006, monster_id = 20010501, pos = { x = 0.549, y = 0.283, z = 8.865 }, rot = { x = 0.000, y = 153.600, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10007, monster_id = 20010501, pos = { x = 1.049, y = 0.283, z = -6.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10008, monster_id = 20010501, pos = { x = 5.949, y = 0.283, z = -2.735 }, rot = { x = 0.000, y = 297.000, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10009, monster_id = 20010701, pos = { x = 6.849, y = 0.283, z = 6.065 }, rot = { x = 0.000, y = 249.100, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 10010, monster_id = 20010501, pos = { x = -5.451, y = 0.283, z = 2.765 }, rot = { x = 0.000, y = 95.700, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10011, monster_id = 20010501, pos = { x = 8.449, y = 0.283, z = 6.965 }, rot = { x = 0.000, y = 228.800, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10012, monster_id = 20010501, pos = { x = 10.249, y = 0.018, z = -3.135 }, rot = { x = 0.000, y = 299.800, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10013, monster_id = 20010501, pos = { x = -9.551, y = -0.017, z = 2.665 }, rot = { x = 0.000, y = 95.700, z = 0.000 }, level = 1, affix = { 1007, 1010 }, isElite = true },
	{ config_id = 10014, monster_id = 20010601, pos = { x = -1.851, y = -0.017, z = -7.435 }, rot = { x = 0.000, y = 325.600, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 10015, monster_id = 20010701, pos = { x = -0.551, y = -0.017, z = 10.265 }, rot = { x = 0.000, y = 183.300, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 10016, monster_id = 23030101, pos = { x = -0.351, y = 0.183, z = -9.435 }, rot = { x = 0.000, y = 4.100, z = 0.000 }, level = 1, affix = { 1007, 9002 }, isElite = true },
	{ config_id = 10017, monster_id = 21010901, pos = { x = 12.949, y = -0.017, z = -5.535 }, rot = { x = 0.000, y = 311.500, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 10018, monster_id = 21010901, pos = { x = -11.551, y = 0.168, z = -5.135 }, rot = { x = 0.000, y = 41.900, z = 0.000 }, level = 1, isElite = true, pose_id = 32 },
	{ config_id = 10019, monster_id = 21010901, pos = { x = 0.549, y = -0.017, z = 13.165 }, rot = { x = 0.000, y = 174.500, z = 0.000 }, level = 1, isElite = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10020, gadget_id = 70900205, pos = { x = 9.949, y = -1.464, z = -3.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010021, name = "ANY_MONSTER_LIVE_10021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_10021", action = "action_EVENT_ANY_MONSTER_LIVE_10021" },
	{ config_id = 1010022, name = "ANY_MONSTER_DIE_10022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10022", action = "action_EVENT_ANY_MONSTER_DIE_10022" },
	{ config_id = 1010023, name = "ANY_MONSTER_DIE_10023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10023", action = "action_EVENT_ANY_MONSTER_DIE_10023" },
	{ config_id = 1010024, name = "ANY_MONSTER_DIE_10024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10024", action = "action_EVENT_ANY_MONSTER_DIE_10024" },
	{ config_id = 1010025, name = "ANY_MONSTER_DIE_10025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10025", action = "action_EVENT_ANY_MONSTER_DIE_10025" },
	{ config_id = 1010026, name = "ANY_MONSTER_DIE_10026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10026", action = "action_EVENT_ANY_MONSTER_DIE_10026" },
	{ config_id = 1010027, name = "CHALLENGE_SUCCESS_10027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10027" },
	{ config_id = 1010028, name = "CHALLENGE_FAIL_10028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10028" },
	{ config_id = 1010029, name = "ANY_MONSTER_DIE_10029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10029", action = "action_EVENT_ANY_MONSTER_DIE_10029" },
	{ config_id = 1010030, name = "ANY_MONSTER_DIE_10030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10030", action = "action_EVENT_ANY_MONSTER_DIE_10030" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Total", value = 0, no_refresh = false },
	{ config_id = 2, name = "Key", value = 0, no_refresh = false },
	{ config_id = 3, name = "C1", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { 10001, 10002, 10003, 10004, 10005 },
		gadgets = { 10020 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_10021", "ANY_MONSTER_DIE_10022", "ANY_MONSTER_DIE_10023", "ANY_MONSTER_DIE_10024", "ANY_MONSTER_DIE_10025", "ANY_MONSTER_DIE_10026", "CHALLENGE_SUCCESS_10027", "CHALLENGE_FAIL_10028", "ANY_MONSTER_DIE_10029", "ANY_MONSTER_DIE_10030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 10020 },
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
function condition_EVENT_ANY_MONSTER_LIVE_10021(context, evt)
	if 10001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_10021(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为160的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 160, 240405010, 19, 70, 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240405011 ；指定config：11001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240405011, 11001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240405011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240405011, 11001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10022(context, evt)
	--判断死亡怪物的configid是否为 10001
	if evt.param1 ~= 10001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10022(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10006, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10023(context, evt)
	--判断死亡怪物的configid是否为 10002
	if evt.param1 ~= 10002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10023(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10007, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10024(context, evt)
	--判断死亡怪物的configid是否为 10003
	if evt.param1 ~= 10003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10024(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10008, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10025(context, evt)
	--判断死亡怪物的configid是否为 10004
	if evt.param1 ~= 10004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10025(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10009, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10026(context, evt)
	--判断死亡怪物的configid是否为 10005
	if evt.param1 ~= 10005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10026(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10010, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "C1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "C1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10027(context, evt)
	-- 改变指定group组240405015中， configid为15001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240405015, 15001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240405010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240405011, 11001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240405011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240405011, 11001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240405010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	-- 判断变量"C1"为5
	if ScriptLib.GetGroupVariableValue(context, "C1") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10029(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10013, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10015, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10030(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240405010) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10030(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10016, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10017, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10018, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10019, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end