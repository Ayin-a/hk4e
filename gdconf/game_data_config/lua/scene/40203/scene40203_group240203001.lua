-- 基础信息
local base_info = {
	group_id = 240203001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010901, pos = { x = 5.607, y = 0.040, z = -4.783 }, rot = { x = 0.000, y = 334.507, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 1002, monster_id = 22010203, pos = { x = 8.199, y = 0.040, z = -12.620 }, rot = { x = 0.000, y = 344.987, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 1003, monster_id = 20010901, pos = { x = -5.887, y = 0.040, z = -5.037 }, rot = { x = 0.000, y = 31.386, z = 0.000 }, level = 1, affix = { 1006 } },
	{ config_id = 1005, monster_id = 22010202, pos = { x = -0.229, y = -0.097, z = -7.242 }, rot = { x = 0.000, y = 355.331, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1006, monster_id = 20010904, pos = { x = -11.474, y = -0.097, z = -3.546 }, rot = { x = 0.000, y = 46.533, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1007, monster_id = 20010904, pos = { x = 9.582, y = 0.010, z = -1.675 }, rot = { x = 0.000, y = 306.612, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1017, monster_id = 20010904, pos = { x = 0.044, y = 0.040, z = -9.527 }, rot = { x = 0.000, y = 2.900, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true },
	{ config_id = 1021, monster_id = 22010204, pos = { x = -8.889, y = 0.040, z = -11.683 }, rot = { x = 0.000, y = 64.424, z = 0.000 }, level = 1, affix = { 1006 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1010, gadget_id = 70900205, pos = { x = 9.753, y = -1.691, z = 4.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000007, name = "ANY_MONSTER_DIE_7", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7", action = "action_EVENT_ANY_MONSTER_DIE_7" },
	{ config_id = 1000012, name = "ANY_MONSTER_LIVE_12", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_12", action = "action_EVENT_ANY_MONSTER_LIVE_12" },
	{ config_id = 1000014, name = "CHALLENGE_FAIL_14", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_14" },
	{ config_id = 1001009, name = "ANY_MONSTER_DIE_1009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1009", action = "action_EVENT_ANY_MONSTER_DIE_1009" }
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
	suite = 2,
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
		monsters = { 1001, 1003, 1017 },
		gadgets = { 1010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7", "ANY_MONSTER_LIVE_12", "CHALLENGE_FAIL_14" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1005, 1006, 1007 },
		gadgets = { 1010 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_14", "ANY_MONSTER_DIE_1009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 1002, 1021 },
		gadgets = { 1010 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_14" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240203001, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_12(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 480, 240203001, 8, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 删除指定group： 240203002 ；指定config：1；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240203002, 1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组240203002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240203002, 1, GadgetState.GearStop) then
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
function action_EVENT_CHALLENGE_FAIL_14(context, evt)
	-- 改变指定group组240203002中， configid为1的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240203002, 1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240203002, 1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240203001, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240203007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240203008中， configid为9的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240203008, 9, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1009(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240203001, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end