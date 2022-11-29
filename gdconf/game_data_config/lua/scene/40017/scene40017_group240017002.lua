-- 基础信息
local base_info = {
	group_id = 240017002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 1
	{ config_id = 2004, monster_id = 21010501, pos = { x = -38.919, y = 246.150, z = 31.275 }, rot = { x = 0.000, y = 52.996, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2005, monster_id = 21010501, pos = { x = -43.632, y = 246.150, z = 42.365 }, rot = { x = 0.000, y = 109.727, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2006, monster_id = 21011001, pos = { x = -28.710, y = 246.150, z = 26.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2007, monster_id = 21011001, pos = { x = -19.553, y = 246.150, z = 35.544 }, rot = { x = 0.000, y = 307.146, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2008, monster_id = 21010701, pos = { x = -29.483, y = 246.150, z = 48.925 }, rot = { x = 0.000, y = 195.535, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 2
	{ config_id = 2009, monster_id = 21010701, pos = { x = -34.807, y = 246.150, z = 48.092 }, rot = { x = 0.000, y = 156.337, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 1
	{ config_id = 2010, monster_id = 21011201, pos = { x = -26.234, y = 246.150, z = 48.875 }, rot = { x = 0.000, y = 210.566, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2011, monster_id = 21011201, pos = { x = -31.875, y = 246.150, z = 49.337 }, rot = { x = 0.000, y = 172.967, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2012, monster_id = 21011201, pos = { x = -21.294, y = 246.150, z = 44.328 }, rot = { x = 0.000, y = 244.754, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2013, monster_id = 21011201, pos = { x = -35.074, y = 246.150, z = 45.225 }, rot = { x = 0.000, y = 136.355, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2014, monster_id = 21010901, pos = { x = -24.681, y = 246.150, z = 54.225 }, rot = { x = 0.000, y = 192.178, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2015, monster_id = 21011001, pos = { x = -29.457, y = 246.150, z = 54.671 }, rot = { x = 0.000, y = 165.464, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2016, monster_id = 20010701, pos = { x = -29.457, y = 246.150, z = 33.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2017, monster_id = 20011301, pos = { x = -29.513, y = 246.150, z = 50.658 }, rot = { x = 0.000, y = 180.264, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2018, monster_id = 20010901, pos = { x = -21.415, y = 246.150, z = 41.586 }, rot = { x = 0.000, y = 234.965, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 1
	{ config_id = 2019, monster_id = 20011101, pos = { x = -36.847, y = 246.150, z = 41.811 }, rot = { x = 0.000, y = 82.956, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 1
	{ config_id = 2020, monster_id = 20011401, pos = { x = -24.137, y = 246.150, z = 37.287 }, rot = { x = 0.000, y = 300.124, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 2
	{ config_id = 2021, monster_id = 20011401, pos = { x = -34.116, y = 246.150, z = 46.281 }, rot = { x = 0.000, y = 133.487, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 2
	{ config_id = 2022, monster_id = 21010901, pos = { x = -19.681, y = 246.150, z = 37.938 }, rot = { x = 0.000, y = 279.513, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 2
	{ config_id = 2023, monster_id = 21011001, pos = { x = -19.127, y = 246.150, z = 44.734 }, rot = { x = 0.000, y = 268.755, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 1
	{ config_id = 2024, monster_id = 21030401, pos = { x = -20.848, y = 246.150, z = 41.531 }, rot = { x = 0.000, y = 268.678, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2025, monster_id = 21010501, pos = { x = -39.986, y = 246.150, z = 45.051 }, rot = { x = 0.000, y = 104.364, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2026, monster_id = 21010901, pos = { x = -40.004, y = 246.150, z = 39.623 }, rot = { x = 0.000, y = 68.106, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2027, monster_id = 21030201, pos = { x = -40.236, y = 246.150, z = 42.549 }, rot = { x = 0.000, y = 107.145, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2028, monster_id = 21010601, pos = { x = -26.014, y = 246.150, z = 50.631 }, rot = { x = 0.000, y = 189.198, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2029, monster_id = 21010601, pos = { x = -34.079, y = 246.150, z = 50.631 }, rot = { x = 0.000, y = 171.829, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2030, monster_id = 21010601, pos = { x = -25.601, y = 246.150, z = 32.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2031, monster_id = 21010601, pos = { x = -32.723, y = 246.150, z = 32.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2032, monster_id = 21020301, pos = { x = -29.457, y = 246.150, z = 31.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2033, monster_id = 21020201, pos = { x = -29.457, y = 246.150, z = 51.171 }, rot = { x = 0.000, y = 176.134, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2034, monster_id = 22010101, pos = { x = -38.962, y = 246.150, z = 31.719 }, rot = { x = 0.000, y = 38.702, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2035, monster_id = 21011001, pos = { x = -21.128, y = 246.150, z = 53.051 }, rot = { x = 0.000, y = 215.302, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2036, monster_id = 21011001, pos = { x = -16.309, y = 246.150, z = 43.361 }, rot = { x = 0.000, y = 253.911, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2037, monster_id = 21011201, pos = { x = -41.988, y = 246.150, z = 34.727 }, rot = { x = 0.000, y = 60.782, z = 0.000 }, level = 1 },
	-- 2
	{ config_id = 2038, monster_id = 21011001, pos = { x = -17.968, y = 246.150, z = 48.968 }, rot = { x = 0.000, y = 236.729, z = 0.000 }, level = 1 },
	-- 1
	{ config_id = 2039, monster_id = 21011201, pos = { x = -33.864, y = 246.150, z = 29.729 }, rot = { x = 0.000, y = 27.518, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2059, gadget_id = 70350035, pos = { x = -29.400, y = 246.150, z = 41.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "GADGET_CREATE_2001", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2001", action = "action_EVENT_GADGET_CREATE_2001", trigger_count = 0 },
	{ config_id = 1002002, name = "CHALLENGE_SUCCESS_2002", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2002", trigger_count = 0 },
	{ config_id = 1002003, name = "CHALLENGE_FAIL_2003", event = EventType.EVENT_CHALLENGE_FAIL, source = "100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2003", trigger_count = 0 },
	{ config_id = 1002040, name = "VARIABLE_CHANGE_2040", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_2040", action = "action_EVENT_VARIABLE_CHANGE_2040" },
	{ config_id = 1002054, name = "ANY_MONSTER_DIE_2054", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2054", action = "action_EVENT_ANY_MONSTER_DIE_2054", trigger_count = 0 },
	{ config_id = 1002055, name = "VARIABLE_CHANGE_2055", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_2055", action = "action_EVENT_VARIABLE_CHANGE_2055" },
	{ config_id = 1002056, name = "VARIABLE_CHANGE_2056", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_2056", action = "action_EVENT_VARIABLE_CHANGE_2056" },
	{ config_id = 1002057, name = "VARIABLE_CHANGE_2057", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_2057", action = "action_EVENT_VARIABLE_CHANGE_2057" },
	{ config_id = 1002058, name = "VARIABLE_CHANGE_2058", event = EventType.EVENT_VARIABLE_CHANGE, source = "wave", condition = "condition_EVENT_VARIABLE_CHANGE_2058", action = "action_EVENT_VARIABLE_CHANGE_2058" },
	{ config_id = 1002061, name = "ANY_GADGET_DIE_2061", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2061", action = "action_EVENT_ANY_GADGET_DIE_2061" },
	{ config_id = 1002062, name = "ANY_GADGET_DIE_2062", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_2062", action = "action_EVENT_ANY_GADGET_DIE_2062" }
}

-- 变量
variables = {
	{ config_id = 1, name = "wave", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "GADGET_CREATE_2001", "CHALLENGE_SUCCESS_2002", "CHALLENGE_FAIL_2003", "VARIABLE_CHANGE_2040", "ANY_MONSTER_DIE_2054", "VARIABLE_CHANGE_2055", "VARIABLE_CHANGE_2056", "VARIABLE_CHANGE_2057", "VARIABLE_CHANGE_2058", "ANY_GADGET_DIE_2061", "ANY_GADGET_DIE_2062" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2004, 2005, 2006, 2007, 2008, 2009 },
		gadgets = { 2059 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2010, 2011, 2012, 2013, 2014, 2015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 2016, 2017, 2018, 2019, 2020, 2021 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 2022, 2023, 2024, 2025, 2026, 2027 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 2028, 2029, 2030, 2031, 2032, 2033 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 2034, 2035, 2036, 2037, 2038, 2039 },
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
function condition_EVENT_GADGET_CREATE_2001(context, evt)
	if 2059 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2001(context, evt)
	-- 创建编号为100（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 100, 188, 240017002, 36, 2059, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240017003, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 240017002, EntityType.GADGET, 2059 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 改变指定group组240017001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240017001, 1001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240017004, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240017001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240017002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240017004, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为5
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2040(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240017002, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2054(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240017002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2054(context, evt)
	-- 针对当前group内变量名为 "wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "wave", 1, 240017002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2055(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为1
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2055(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240017002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2056(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为2
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2056(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240017002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2057(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为3
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2057(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240017002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2058(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave"为4
	if ScriptLib.GetGroupVariableValue(context, "wave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2058(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240017002, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2061(context, evt)
	if 2059 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2061(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_2062(context, evt)
	if 2060 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_2062(context, evt)
	-- 终止识别id为100的挑战，并判定失败
		ScriptLib.StopChallenge(context, 100, 0)
	
	return 0
end