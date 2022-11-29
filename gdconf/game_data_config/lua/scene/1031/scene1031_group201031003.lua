-- 基础信息
local base_info = {
	group_id = 201031003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010201, pos = { x = 5.690, y = 0.101, z = -4.997 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3002, monster_id = 21010201, pos = { x = -7.585, y = 0.101, z = -5.010 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3003, monster_id = 21010901, pos = { x = -9.923, y = 0.101, z = -11.536 }, rot = { x = 0.000, y = 38.224, z = 0.000 }, level = 1, affix = { 1008 }, pose_id = 32 },
	{ config_id = 3004, monster_id = 21010201, pos = { x = -0.632, y = 0.101, z = -11.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3005, monster_id = 21010901, pos = { x = 7.250, y = 0.101, z = -11.715 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1, affix = { 1008 }, pose_id = 32 },
	{ config_id = 3006, monster_id = 21010301, pos = { x = -11.835, y = 0.101, z = -1.114 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3007, monster_id = 21010301, pos = { x = 11.243, y = 0.101, z = -0.817 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3008, monster_id = 21030103, pos = { x = -0.581, y = 0.101, z = -9.798 }, rot = { x = 0.000, y = 0.036, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3009, monster_id = 21010301, pos = { x = 3.843, y = 0.101, z = -7.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3010, monster_id = 21010301, pos = { x = -6.421, y = 0.101, z = -7.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3011, monster_id = 21010301, pos = { x = 8.259, y = 0.101, z = 9.166 }, rot = { x = 0.000, y = 216.000, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3012, monster_id = 21010201, pos = { x = 10.967, y = 0.101, z = -8.115 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3013, monster_id = 21010301, pos = { x = -1.067, y = 0.101, z = -10.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 }, pose_id = 402 },
	{ config_id = 3014, monster_id = 21010201, pos = { x = -13.531, y = 0.101, z = -5.180 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3015, monster_id = 21010301, pos = { x = -13.153, y = 0.101, z = 10.195 }, rot = { x = 0.000, y = 125.830, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3016, monster_id = 21010502, pos = { x = -0.440, y = 0.101, z = -9.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 }, pose_id = 32 },
	{ config_id = 3017, monster_id = 21010201, pos = { x = -13.460, y = 0.101, z = -1.429 }, rot = { x = 0.000, y = 101.360, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3018, monster_id = 21010201, pos = { x = 11.360, y = 0.101, z = -1.398 }, rot = { x = 0.000, y = 274.510, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3019, monster_id = 21010201, pos = { x = -11.826, y = 0.101, z = 3.654 }, rot = { x = 0.000, y = 167.200, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3020, monster_id = 21011002, pos = { x = -0.652, y = 0.101, z = 12.776 }, rot = { x = 0.000, y = 203.110, z = 0.000 }, level = 1, affix = { 1008 }, pose_id = 32 },
	{ config_id = 3021, monster_id = 21010201, pos = { x = -2.551, y = 0.101, z = 8.227 }, rot = { x = 0.000, y = 176.690, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3029, monster_id = 21010201, pos = { x = 10.928, y = 0.019, z = 5.769 }, rot = { x = 0.000, y = 274.510, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3030, monster_id = 21030101, pos = { x = 0.654, y = 0.019, z = -10.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3031, monster_id = 21030301, pos = { x = -0.470, y = 0.019, z = 14.131 }, rot = { x = 0.000, y = 171.798, z = 0.000 }, level = 1, affix = { 1008 } },
	{ config_id = 3032, monster_id = 21020201, pos = { x = -0.737, y = 0.038, z = 0.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1008 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3022, gadget_id = 70900205, pos = { x = 5.688, y = -1.358, z = 3.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003023, name = "ANY_MONSTER_LIVE_3023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3023", action = "action_EVENT_ANY_MONSTER_LIVE_3023" },
	{ config_id = 1003024, name = "ANY_MONSTER_DIE_3024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3024", action = "action_EVENT_ANY_MONSTER_DIE_3024" },
	{ config_id = 1003025, name = "ANY_MONSTER_DIE_3025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3025", action = "action_EVENT_ANY_MONSTER_DIE_3025" },
	{ config_id = 1003026, name = "ANY_MONSTER_DIE_3026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3026", action = "action_EVENT_ANY_MONSTER_DIE_3026" },
	{ config_id = 1003027, name = "CHALLENGE_SUCCESS_3027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3027" },
	{ config_id = 1003028, name = "CHALLENGE_FAIL_3028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3028" },
	{ config_id = 1003033, name = "ANY_MONSTER_DIE_3033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3033", action = "action_EVENT_ANY_MONSTER_DIE_3033" }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3022 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3023", "ANY_MONSTER_DIE_3024", "CHALLENGE_SUCCESS_3027", "CHALLENGE_FAIL_3028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3006, 3007, 3008, 3009, 3010 },
		gadgets = { 3022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3025", "CHALLENGE_SUCCESS_3027", "CHALLENGE_FAIL_3028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3011, 3012, 3013, 3014, 3015, 3021 },
		gadgets = { 3022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3026", "CHALLENGE_SUCCESS_3027", "CHALLENGE_FAIL_3028" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 3016, 3017, 3018, 3019, 3020, 3029 },
		gadgets = { 3022 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3027", "CHALLENGE_FAIL_3028", "ANY_MONSTER_DIE_3033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 3030, 3031, 3032 },
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
function condition_EVENT_ANY_MONSTER_LIVE_3023(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为196的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 196, 201031003, 28, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201031003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201031003, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201031003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201031003, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201031003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3026(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201031003, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3027(context, evt)
	-- 改变指定group组201031001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201031001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3028(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201031003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组201031002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201031002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 201031002, 2001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201031003) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3033(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201031003, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end