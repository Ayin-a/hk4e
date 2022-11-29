-- 基础信息
local base_info = {
	group_id = 240902002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20011304, pos = { x = -0.096, y = 0.006, z = -9.240 }, rot = { x = 0.000, y = 324.818, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 20011304, pos = { x = 8.866, y = 0.006, z = 9.113 }, rot = { x = 0.000, y = 231.117, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 20011304, pos = { x = -10.074, y = 0.006, z = 9.374 }, rot = { x = 0.000, y = 129.715, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 20011103, pos = { x = 12.497, y = -0.060, z = -7.932 }, rot = { x = 0.000, y = 324.818, z = 0.000 }, level = 1, affix = { 6106 } },
	{ config_id = 2008, monster_id = 20011101, pos = { x = 10.200, y = 0.109, z = 10.136 }, rot = { x = 0.000, y = 233.123, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 20011101, pos = { x = -11.301, y = 0.175, z = 10.414 }, rot = { x = 0.000, y = 127.912, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 22010304, pos = { x = -7.853, y = 0.002, z = -6.934 }, rot = { x = 0.000, y = 58.664, z = 0.000 }, level = 1, affix = { 6106, 1007 } },
	{ config_id = 2011, monster_id = 22010104, pos = { x = 6.647, y = 0.002, z = -7.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007, 6105 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2021, gadget_id = 70900205, pos = { x = 5.726, y = -1.827, z = 6.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002004, name = "ANY_MONSTER_DIE_2004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2004", action = "action_EVENT_ANY_MONSTER_DIE_2004" },
	{ config_id = 1002005, name = "ANY_MONSTER_DIE_2005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2005", action = "action_EVENT_ANY_MONSTER_DIE_2005" },
	{ config_id = 1002006, name = "ANY_MONSTER_DIE_2006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2006", action = "action_EVENT_ANY_MONSTER_DIE_2006" },
	{ config_id = 1002012, name = "ANY_MONSTER_DIE_2012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2012", action = "action_EVENT_ANY_MONSTER_DIE_2012" },
	{ config_id = 1002013, name = "ANY_MONSTER_DIE_2013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "" },
	{ config_id = 1002014, name = "ANY_MONSTER_DIE_2014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "" },
	{ config_id = 1002022, name = "ANY_MONSTER_LIVE_2022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2022", action = "action_EVENT_ANY_MONSTER_LIVE_2022" },
	{ config_id = 1002023, name = "CHALLENGE_SUCCESS_2023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2023" },
	{ config_id = 1002024, name = "CHALLENGE_FAIL_2024", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2024" },
	{ config_id = 1002026, name = "ANY_MONSTER_DIE_2026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2026", action = "action_EVENT_ANY_MONSTER_DIE_2026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 2021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2003 },
		gadgets = { 2021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2004", "ANY_MONSTER_DIE_2005", "ANY_MONSTER_DIE_2006", "ANY_MONSTER_DIE_2012", "ANY_MONSTER_LIVE_2022", "CHALLENGE_SUCCESS_2023", "CHALLENGE_FAIL_2024", "ANY_MONSTER_DIE_2026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2008, delay_time = 0.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2009, delay_time = 0.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	-- 判断变量"monster_wave"为4
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2010, delay_time = 0.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2012(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	-- 判断变量"monster_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2012(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2011, delay_time = 0.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2022(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240902002, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240902003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2024(context, evt)
	-- 改变指定group组240902001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240902001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240902001, 1001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240902003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240902002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2026(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2026(context, evt)
	-- 延迟0.5秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 2007, delay_time = 0.5 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end