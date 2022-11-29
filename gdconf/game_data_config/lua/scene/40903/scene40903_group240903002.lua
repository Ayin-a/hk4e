-- 基础信息
local base_info = {
	group_id = 240903002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21011601, pos = { x = 7.093, y = 0.002, z = -6.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 2002, monster_id = 21011601, pos = { x = -0.163, y = 0.002, z = -11.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 2003, monster_id = 21011601, pos = { x = -6.994, y = 0.002, z = -7.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 2004, monster_id = 20010604, pos = { x = 5.893, y = 0.002, z = -2.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 2005, monster_id = 20010604, pos = { x = -6.108, y = 0.002, z = -2.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 2006, monster_id = 20010702, pos = { x = -0.083, y = 0.002, z = -6.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007, 6104 } },
	{ config_id = 2007, monster_id = 20010604, pos = { x = 9.177, y = 0.002, z = -1.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 2008, monster_id = 20010604, pos = { x = 0.072, y = 0.002, z = -4.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 2009, monster_id = 20010604, pos = { x = -8.511, y = 0.002, z = -0.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 2010, monster_id = 21020701, pos = { x = 0.045, y = 0.002, z = -8.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008, 6104 } },
	{ config_id = 2011, monster_id = 21020701, pos = { x = 8.811, y = 0.002, z = 3.645 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 2012, monster_id = 21020701, pos = { x = -7.630, y = 0.002, z = 4.077 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, affix = { 1008, 6104 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2021, gadget_id = 70900205, pos = { x = 5.699, y = -2.021, z = 6.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		triggers = { "CHALLENGE_SUCCESS_2023", "CHALLENGE_FAIL_2024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2022", "CHALLENGE_SUCCESS_2023", "CHALLENGE_FAIL_2024", "ANY_MONSTER_DIE_2026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2010, 2011, 2012 },
		gadgets = { 2021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2023", "CHALLENGE_FAIL_2024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240903002, 12, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240903003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240903001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240903001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240903001中， configid为1005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240903001, 1005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2024(context, evt)
	-- 改变指定group组240903001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240903001, 1001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240903001, 1001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240903003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240903002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2026(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240903002, 3)
	
	return 0
end