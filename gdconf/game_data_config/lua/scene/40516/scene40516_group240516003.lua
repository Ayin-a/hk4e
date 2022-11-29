-- 基础信息
local base_info = {
	group_id = 240516003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011304, pos = { x = -7.468, y = 0.011, z = -6.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6105 } },
	{ config_id = 3002, monster_id = 20011304, pos = { x = 6.222, y = 0.010, z = 1.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 20011304, pos = { x = -6.824, y = 0.009, z = 1.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6105 } },
	{ config_id = 3004, monster_id = 20011301, pos = { x = 7.302, y = 0.083, z = -6.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 21020201, pos = { x = 0.005, y = 0.005, z = -7.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 21020301, pos = { x = 8.689, y = 0.012, z = 8.454 }, rot = { x = 0.000, y = 230.000, z = 0.000 }, level = 1, affix = { 6105 } },
	{ config_id = 3008, monster_id = 21020201, pos = { x = -0.177, y = 0.004, z = -6.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 6105 } },
	{ config_id = 3009, monster_id = 20011304, pos = { x = -7.569, y = 0.010, z = 8.960 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 3010, monster_id = 21020202, pos = { x = -0.214, y = 0.001, z = 10.824 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 6105 } },
	{ config_id = 3011, monster_id = 21020201, pos = { x = -8.681, y = 0.011, z = 1.842 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3022, gadget_id = 70900205, pos = { x = 6.221, y = -1.377, z = 3.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003007, name = "MONSTER_TIDE_DIE_3007", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_3007", action = "action_EVENT_MONSTER_TIDE_DIE_3007" },
	{ config_id = 1003023, name = "ANY_MONSTER_LIVE_3023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3023", action = "action_EVENT_ANY_MONSTER_LIVE_3023" },
	{ config_id = 1003027, name = "CHALLENGE_SUCCESS_3027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3027" },
	{ config_id = 1003028, name = "CHALLENGE_FAIL_3028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3028" }
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
		gadgets = { 3022 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_3007", "ANY_MONSTER_LIVE_3023", "CHALLENGE_SUCCESS_3027", "CHALLENGE_FAIL_3028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3005, 3006 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3027", "CHALLENGE_FAIL_3028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_3007(context, evt)
	if 7 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_3007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240516003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3023(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240516003, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3027(context, evt)
	-- 改变指定group组240516001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240516001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240516001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240516001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3028(context, evt)
	-- 改变指定group组240516002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240516002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240516002, 2001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240516003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240516002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240516001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240516001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240516001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240516001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end