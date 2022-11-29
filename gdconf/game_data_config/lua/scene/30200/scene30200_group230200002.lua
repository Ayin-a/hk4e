-- 基础信息
local base_info = {
	group_id = 230200002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20011001, pos = { x = 9.920, y = 0.350, z = -8.987 }, rot = { x = 0.000, y = 327.634, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 20011001, pos = { x = -8.719, y = 0.350, z = -8.643 }, rot = { x = 0.000, y = 27.701, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2003, monster_id = 20011001, pos = { x = 0.314, y = 0.350, z = -10.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 21010201, pos = { x = -12.965, y = 0.350, z = -5.529 }, rot = { x = 0.000, y = 33.839, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2005, monster_id = 21010201, pos = { x = 13.062, y = 0.350, z = -4.520 }, rot = { x = 0.000, y = 306.568, z = 0.000 }, level = 1 },
	{ config_id = 2006, monster_id = 21011001, pos = { x = -15.099, y = 0.350, z = -6.031 }, rot = { x = 0.000, y = 51.797, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 2007, monster_id = 21010201, pos = { x = 9.462, y = 0.350, z = -7.622 }, rot = { x = 0.000, y = 342.747, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2008, monster_id = 21010201, pos = { x = -0.005, y = 0.350, z = -10.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2009, monster_id = 21010201, pos = { x = -8.501, y = 0.350, z = -9.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 20011101, pos = { x = 8.467, y = 0.350, z = -12.189 }, rot = { x = 0.000, y = 335.646, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2011, monster_id = 20011101, pos = { x = -6.849, y = 0.350, z = -9.789 }, rot = { x = 0.000, y = 29.502, z = 0.000 }, level = 1 },
	{ config_id = 2012, monster_id = 21010301, pos = { x = 5.157, y = 0.350, z = -5.220 }, rot = { x = 0.000, y = 344.360, z = 0.000 }, level = 1 },
	{ config_id = 2013, monster_id = 21010201, pos = { x = -0.788, y = 0.350, z = -6.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2014, monster_id = 21010301, pos = { x = -8.057, y = 0.350, z = -3.994 }, rot = { x = 0.000, y = 21.059, z = 0.000 }, level = 1 },
	{ config_id = 2017, monster_id = 21030103, pos = { x = 0.176, y = 0.350, z = -14.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, monster_id = 21010201, pos = { x = 9.683, y = 0.350, z = -3.913 }, rot = { x = 0.000, y = 322.031, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 2021, monster_id = 21011001, pos = { x = 13.137, y = 0.350, z = -9.464 }, rot = { x = 0.000, y = 338.694, z = 0.000 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2015, gadget_id = 70900205, pos = { x = 6.999, y = -1.027, z = 2.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70350035, pos = { x = -0.100, y = 0.200, z = 0.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002019, name = "ANY_MONSTER_DIE_2019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2019", action = "action_EVENT_ANY_MONSTER_DIE_2019" },
	{ config_id = 1002020, name = "ANY_MONSTER_DIE_2020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2020", action = "action_EVENT_ANY_MONSTER_DIE_2020" },
	{ config_id = 1002022, name = "ANY_MONSTER_DIE_2022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2022", action = "action_EVENT_ANY_MONSTER_DIE_2022" },
	{ config_id = 1002023, name = "ANY_MONSTER_LIVE_2023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2023", action = "action_EVENT_ANY_MONSTER_LIVE_2023" },
	{ config_id = 1002024, name = "CHALLENGE_FAIL_2024", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2024" },
	{ config_id = 1002025, name = "CHALLENGE_SUCCESS_2025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2025" },
	{ config_id = 1002026, name = "DUNGEON_SETTLE_2026", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_2026" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 2015, 2016 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_2024", "CHALLENGE_SUCCESS_2025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2003, 2004, 2005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2019", "ANY_MONSTER_LIVE_2023", "CHALLENGE_FAIL_2024", "CHALLENGE_SUCCESS_2025", "DUNGEON_SETTLE_2026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 2012, 2013, 2014, 2017, 2018 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2022", "CHALLENGE_FAIL_2024", "CHALLENGE_SUCCESS_2025", "DUNGEON_SETTLE_2026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 2006, 2007, 2008, 2009, 2021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2020", "CHALLENGE_FAIL_2024", "CHALLENGE_SUCCESS_2025", "DUNGEON_SETTLE_2026" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 2010, 2011 },
		gadgets = { },
		regions = { },
		triggers = { "DUNGEON_SETTLE_2026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2019(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230200002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2020(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230200002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230200002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2023(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1010的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1010, 230200002, 17, 2016, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2024(context, evt)
	-- 改变指定group组230200003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230200003, 3001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230200002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2025(context, evt)
	-- 改变指定group组230200003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230200003, 3001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_2026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end