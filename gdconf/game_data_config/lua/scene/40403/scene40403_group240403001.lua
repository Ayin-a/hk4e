-- 基础信息
local base_info = {
	group_id = 240403001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 23030101, pos = { x = -0.114, y = 0.002, z = -6.707 }, rot = { x = 0.000, y = 2.107, z = 0.000 }, level = 1, affix = { 1006, 9002 }, isElite = true },
	{ config_id = 1002, monster_id = 20010601, pos = { x = 6.815, y = 0.002, z = -6.130 }, rot = { x = 0.000, y = 345.384, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1004, monster_id = 20010601, pos = { x = -11.276, y = 0.002, z = -5.857 }, rot = { x = 0.000, y = 43.957, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1005, monster_id = 20010701, pos = { x = -6.838, y = 0.002, z = 2.284 }, rot = { x = 0.000, y = 137.388, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1006, monster_id = 20010601, pos = { x = 9.059, y = 0.002, z = 1.913 }, rot = { x = 0.000, y = 206.036, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1009, monster_id = 20010601, pos = { x = -7.005, y = 0.002, z = -4.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1010, monster_id = 20010701, pos = { x = 3.600, y = 0.302, z = -5.509 }, rot = { x = 0.000, y = 50.385, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1011, monster_id = 23030102, pos = { x = 0.117, y = 0.302, z = -13.023 }, rot = { x = 0.000, y = 349.940, z = 0.000 }, level = 1, affix = { 1006, 9002 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1007, gadget_id = 70900205, pos = { x = 9.894, y = -1.248, z = -2.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000003, name = "ANY_MONSTER_LIVE_3", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3", action = "action_EVENT_ANY_MONSTER_LIVE_3" },
	{ config_id = 1000010, name = "CHALLENGE_SUCCESS_10", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10" },
	{ config_id = 1000011, name = "CHALLENGE_FAIL_11", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11" }
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
		gadgets = { 1007 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3", "CHALLENGE_SUCCESS_10", "CHALLENGE_FAIL_11" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 480, 240403001, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240403002 ；指定config：5；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240403002, 5, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240403002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240403002, 5, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10(context, evt)
	-- 改变指定group组240403007中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240403007, 14, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240403002, 5, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240403002中， configid为5的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240403002, 5, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240403008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240403007中， configid为14的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240403007, 14, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240403001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end