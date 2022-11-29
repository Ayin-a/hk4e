-- 基础信息
local base_info = {
	group_id = 250019002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20011401, pos = { x = 11.159, y = 0.002, z = -6.787 }, rot = { x = 0.000, y = 324.818, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2002, monster_id = 20011401, pos = { x = 8.866, y = 0.002, z = 9.073 }, rot = { x = 0.000, y = 231.117, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2003, monster_id = 20011401, pos = { x = -10.074, y = 0.002, z = 9.334 }, rot = { x = 0.000, y = 129.715, z = 0.000 }, level = 15 },
	{ config_id = 2004, monster_id = 20011401, pos = { x = -13.405, y = 0.002, z = -6.754 }, rot = { x = 0.000, y = 58.664, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2005, monster_id = 20011401, pos = { x = 0.022, y = 0.002, z = -11.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2007, monster_id = 20011401, pos = { x = -0.102, y = 0.002, z = 11.078 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2008, monster_id = 20011401, pos = { x = 12.498, y = -0.064, z = -7.972 }, rot = { x = 0.000, y = 324.818, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2009, monster_id = 20011401, pos = { x = 10.201, y = 0.104, z = 10.096 }, rot = { x = 0.000, y = 233.123, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2010, monster_id = 20011401, pos = { x = -11.300, y = 0.171, z = 10.374 }, rot = { x = 0.000, y = 127.912, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2011, monster_id = 20011401, pos = { x = -14.518, y = 0.334, z = -7.241 }, rot = { x = 0.000, y = 58.664, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2012, monster_id = 20011501, pos = { x = 0.006, y = 0.118, z = -12.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2014, monster_id = 20011401, pos = { x = -0.102, y = 0.002, z = 11.078 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2015, monster_id = 20011501, pos = { x = -0.026, y = 0.002, z = -13.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, affix = { 1012 } },
	{ config_id = 2016, monster_id = 20011501, pos = { x = 10.275, y = 0.002, z = -0.279 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 15, affix = { 1012 } },
	{ config_id = 2017, monster_id = 20011501, pos = { x = -12.171, y = 0.002, z = 0.138 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 15, affix = { 1012 } },
	{ config_id = 2021, monster_id = 20011401, pos = { x = 12.498, y = -0.064, z = -7.972 }, rot = { x = 0.000, y = 324.818, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2023, monster_id = 20011401, pos = { x = 10.201, y = 0.104, z = 10.096 }, rot = { x = 0.000, y = 233.123, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2024, monster_id = 20011401, pos = { x = -11.300, y = 0.171, z = 10.374 }, rot = { x = 0.000, y = 127.912, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2025, monster_id = 20011401, pos = { x = -14.518, y = 0.334, z = -7.241 }, rot = { x = 0.000, y = 58.664, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2026, monster_id = 20011501, pos = { x = 0.006, y = 0.118, z = -12.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, affix = { 1006 } },
	{ config_id = 2027, monster_id = 20011501, pos = { x = -0.102, y = 0.002, z = 11.078 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 15, affix = { 1006 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2019, gadget_id = 70900205, pos = { x = 5.727, y = -1.831, z = 6.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002006, name = "ANY_MONSTER_LIVE_2006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2006", action = "action_EVENT_ANY_MONSTER_LIVE_2006" },
	{ config_id = 1002013, name = "CHALLENGE_SUCCESS_2013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "101", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2013" },
	{ config_id = 1002018, name = "CHALLENGE_FAIL_2018", event = EventType.EVENT_CHALLENGE_FAIL, source = "101", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2018" },
	{ config_id = 1002020, name = "ANY_MONSTER_DIE_2020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2020", action = "action_EVENT_ANY_MONSTER_DIE_2020", trigger_count = 15 },
	{ config_id = 1002022, name = "ANY_MONSTER_DIE_2022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2022", action = "action_EVENT_ANY_MONSTER_DIE_2022", trigger_count = 15 },
	{ config_id = 1002028, name = "ANY_MONSTER_DIE_2028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2028", action = "action_EVENT_ANY_MONSTER_DIE_2028", trigger_count = 15 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_count", value = 0, no_refresh = false },
	{ config_id = 2, name = "monster_die", value = 0, no_refresh = false }
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
		gadgets = { 2019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2007 },
		gadgets = { 2019 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2006", "CHALLENGE_SUCCESS_2013", "CHALLENGE_FAIL_2018", "ANY_MONSTER_DIE_2022" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 2008, 2009, 2010, 2011, 2012, 2014 },
		gadgets = { 2019 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2013", "CHALLENGE_FAIL_2018", "ANY_MONSTER_DIE_2020" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 2021, 2023, 2024, 2025, 2026, 2027 },
		gadgets = { 2019 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2013", "CHALLENGE_FAIL_2018", "ANY_MONSTER_DIE_2028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 2015, 2016, 2017 },
		gadgets = { 2019 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2013", "CHALLENGE_FAIL_2018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2006(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2006(context, evt)
	-- 创建编号为101（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 101, 2, 180, 250019002, 21, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2013(context, evt)
	-- 改变指定group组250019001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250019001, 1003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250019003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250019001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250019001, 1002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2020(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250019002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250019002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2022(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250019002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2022(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250019002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250019002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250019002, 4)
	
	return 0
end