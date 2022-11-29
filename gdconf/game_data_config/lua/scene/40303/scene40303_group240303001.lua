-- 基础信息
local base_info = {
	group_id = 240303001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011101, pos = { x = -4.777, y = 0.002, z = -5.146 }, rot = { x = 0.000, y = 25.221, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 1002, monster_id = 20011101, pos = { x = 5.796, y = 0.002, z = -4.523 }, rot = { x = 0.000, y = 320.821, z = 0.000 }, level = 1, affix = { 1006 } },
	-- 水伤害技能
	{ config_id = 1003, monster_id = 20011103, pos = { x = 0.501, y = 0.002, z = -7.024 }, rot = { x = 0.000, y = 0.350, z = 0.000 }, level = 1, affix = { 1006, 6106 }, isElite = true },
	{ config_id = 1005, monster_id = 22010301, pos = { x = -1.184, y = 0.133, z = -12.202 }, rot = { x = 0.000, y = 0.819, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1006, monster_id = 20011101, pos = { x = -6.648, y = 0.133, z = -0.022 }, rot = { x = 0.000, y = 50.833, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 1007, monster_id = 20011101, pos = { x = 6.198, y = 0.002, z = 2.432 }, rot = { x = 0.000, y = 207.281, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 1008, monster_id = 20011103, pos = { x = 6.489, y = 0.217, z = -1.621 }, rot = { x = 0.000, y = 349.757, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1013, monster_id = 20011101, pos = { x = -5.645, y = 0.133, z = 3.614 }, rot = { x = 0.000, y = 318.938, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 1014, monster_id = 20011101, pos = { x = 1.080, y = 0.133, z = 6.266 }, rot = { x = 0.000, y = 155.540, z = 0.000 }, level = 1, affix = { 1006 } },
	-- 水球
	{ config_id = 1015, monster_id = 22010301, pos = { x = -11.796, y = 0.133, z = -4.063 }, rot = { x = 0.000, y = 42.590, z = 0.000 }, level = 1, affix = { 1006, 6106 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1010, gadget_id = 70900205, pos = { x = -7.226, y = -1.156, z = -2.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_LIVE_1", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1", action = "action_EVENT_ANY_MONSTER_LIVE_1" },
	{ config_id = 1000017, name = "CHALLENGE_FAIL_17", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_17" },
	{ config_id = 1001009, name = "ANY_MONSTER_LIVE_1009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_1009", action = "action_EVENT_ANY_MONSTER_LIVE_1009" },
	{ config_id = 1001021, name = "CHALLENGE_FAIL_1021", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_1021" },
	{ config_id = 1001022, name = "CHALLENGE_SUCCESS_1022", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_1022" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false },
	{ config_id = 2, name = "C1", value = 0, no_refresh = false },
	{ config_id = 3, name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 1010 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1", "CHALLENGE_FAIL_17", "CHALLENGE_SUCCESS_1022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1005, 1015 },
		gadgets = { 1010 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_1009", "CHALLENGE_FAIL_1021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为193的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 193, 40, 240303001, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240303002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240303002, 1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240303002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240303002, 1, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_17(context, evt)
	-- 改变指定group组240303002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240303002, 1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240303002, 1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240303001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240303007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240303008中， configid为8的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240303008, 8, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_1009(context, evt)
	if 1005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_1009(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为194的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 194, 80, 240303001, 2, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_1021(context, evt)
	-- 改变指定group组240303002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240303002, 1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240303002, 1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240303001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240303007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240303008中， configid为8的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240303008, 8, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_1022(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240303001, 2)
	
	return 0
end