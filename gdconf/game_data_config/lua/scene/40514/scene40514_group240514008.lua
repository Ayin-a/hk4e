-- 基础信息
local base_info = {
	group_id = 240514008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 20011201, pos = { x = 7.599, y = 0.206, z = -4.720 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 8002, monster_id = 20011201, pos = { x = -7.733, y = 0.011, z = -4.971 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 },
	{ config_id = 8003, monster_id = 20011304, pos = { x = 0.017, y = 0.007, z = -10.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 8004, monster_id = 21010701, pos = { x = -5.975, y = 0.008, z = -7.482 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 8005, monster_id = 21010701, pos = { x = 5.203, y = 0.005, z = -7.658 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1 },
	{ config_id = 8006, monster_id = 21010701, pos = { x = -4.998, y = 0.007, z = -9.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8007, monster_id = 21010701, pos = { x = 4.620, y = 0.007, z = -9.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8008, monster_id = 20011304, pos = { x = -0.163, y = 0.008, z = -5.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 8010, monster_id = 20011301, pos = { x = -0.065, y = 0.011, z = -7.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 8019, monster_id = 20011301, pos = { x = -0.073, y = 0.009, z = 8.748 }, rot = { x = 0.000, y = 167.200, z = 0.000 }, level = 1, affix = { 6105 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8022, gadget_id = 70900205, pos = { x = 6.206, y = -1.451, z = 3.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008023, name = "ANY_MONSTER_LIVE_8023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8023", action = "action_EVENT_ANY_MONSTER_LIVE_8023" },
	{ config_id = 1008024, name = "ANY_MONSTER_DIE_8024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8024", action = "action_EVENT_ANY_MONSTER_DIE_8024" },
	{ config_id = 1008025, name = "ANY_MONSTER_DIE_8025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8025", action = "action_EVENT_ANY_MONSTER_DIE_8025" },
	{ config_id = 1008027, name = "CHALLENGE_SUCCESS_8027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8027" },
	{ config_id = 1008028, name = "CHALLENGE_FAIL_8028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8028" }
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
		gadgets = { 8022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 8001, 8002, 8003, 8004, 8005 },
		gadgets = { 8022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_8023", "ANY_MONSTER_DIE_8024", "CHALLENGE_FAIL_8028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 8006, 8007, 8010 },
		gadgets = { 8022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8025", "CHALLENGE_FAIL_8028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_5,
		monsters = { 8008, 8019 },
		gadgets = { 8022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_8027", "CHALLENGE_FAIL_8028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8023(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240514008, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240514008) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240514008, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240514008) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240514008, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8027(context, evt)
	-- 改变指定group组240514006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240514006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240514006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240514006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240514008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240514007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240514007, 7001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240514007, 7001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240514006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240514006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240514006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240514006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end