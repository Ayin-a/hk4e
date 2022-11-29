-- 基础信息
local base_info = {
	group_id = 240026002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010701, pos = { x = 526.010, y = -1.921, z = 245.618 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2002, monster_id = 21010201, pos = { x = 538.639, y = -1.983, z = 234.985 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2003, monster_id = 21010201, pos = { x = 527.037, y = -1.983, z = 234.897 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2004, monster_id = 21010201, pos = { x = 538.729, y = -1.953, z = 245.587 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2005, monster_id = 21010201, pos = { x = 525.977, y = -1.984, z = 242.190 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2006, monster_id = 21010201, pos = { x = 538.589, y = -1.984, z = 237.988 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2007, monster_id = 21010701, pos = { x = 526.619, y = -1.984, z = 238.006 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2008, monster_id = 21010201, pos = { x = 538.772, y = -1.984, z = 242.009 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2009, monster_id = 21010201, pos = { x = 530.294, y = -1.983, z = 245.781 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2010, monster_id = 21010201, pos = { x = 535.410, y = -2.056, z = 245.817 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2011, monster_id = 21010201, pos = { x = 532.987, y = -1.984, z = 247.991 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2012, monster_id = 21010201, pos = { x = 526.133, y = -1.983, z = 245.317 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2013, monster_id = 21010201, pos = { x = 538.605, y = -1.983, z = 245.325 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2014, monster_id = 21010701, pos = { x = 527.270, y = -1.983, z = 235.124 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2015, monster_id = 21010201, pos = { x = 538.228, y = -1.983, z = 235.061 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2016, monster_id = 21010201, pos = { x = 526.504, y = -1.984, z = 242.149 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2017, monster_id = 21010201, pos = { x = 538.587, y = -1.984, z = 238.511 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2018, monster_id = 21010201, pos = { x = 527.056, y = -1.984, z = 238.152 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2019, monster_id = 21010201, pos = { x = 538.497, y = -1.984, z = 241.787 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } },
	{ config_id = 2020, monster_id = 21010201, pos = { x = 533.403, y = -1.984, z = 248.661 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1007, 1008 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2024, gadget_id = 70900205, pos = { x = 528.261, y = -2.765, z = 242.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002021, name = "ANY_MONSTER_LIVE_2021", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2021", action = "action_EVENT_ANY_MONSTER_LIVE_2021" },
	{ config_id = 1002022, name = "CHALLENGE_FAIL_2022", event = EventType.EVENT_CHALLENGE_FAIL, source = "110104", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2022", trigger_count = 0 },
	{ config_id = 1002023, name = "CHALLENGE_SUCCESS_2023", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "110104", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2023", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 2024 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2021", "CHALLENGE_FAIL_2022", "CHALLENGE_SUCCESS_2023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020 },
		gadgets = { 2024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2024 },
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
function condition_EVENT_ANY_MONSTER_LIVE_2021(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2021(context, evt)
	ScriptLib.CreateFatherChallenge(context, 110104, 110104, 90, {success = 2, fail = 1, fail_on_wipe=true})
	ScriptLib.AttachChildChallenge(context, 110104, 110105, 110105, {14000,0,0,0},{},{success=1,fail=1})
	ScriptLib.AttachChildChallenge(context, 110104, 110106, 110106, {2,15,0,0},{},{success=1,fail=1})
	ScriptLib.StartFatherChallenge(context, 110104)
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240026002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240026001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2023(context, evt)
	-- 改变指定group组240026001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240026001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240026002, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end