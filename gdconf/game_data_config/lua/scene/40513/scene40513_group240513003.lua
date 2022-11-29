-- 基础信息
local base_info = {
	group_id = 240513003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3028, monster_id = 21020101, pos = { x = 1.513, y = 0.019, z = -11.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3029, monster_id = 21020101, pos = { x = 11.839, y = 0.019, z = -0.383 }, rot = { x = 0.000, y = 272.412, z = 0.000 }, level = 1 },
	{ config_id = 3030, monster_id = 21020101, pos = { x = 0.700, y = 0.019, z = 10.838 }, rot = { x = 0.000, y = 178.675, z = 0.000 }, level = 1 },
	{ config_id = 3031, monster_id = 21020101, pos = { x = -11.834, y = 0.019, z = -7.078 }, rot = { x = 0.000, y = 75.022, z = 0.000 }, level = 1 },
	{ config_id = 3032, monster_id = 21020101, pos = { x = -11.495, y = 0.019, z = 6.757 }, rot = { x = 0.000, y = 136.422, z = 0.000 }, level = 1 },
	{ config_id = 3033, monster_id = 20011201, pos = { x = 11.630, y = 0.019, z = 4.581 }, rot = { x = 0.000, y = 261.898, z = 0.000 }, level = 1 },
	{ config_id = 3034, monster_id = 20011201, pos = { x = 8.644, y = 0.019, z = -0.138 }, rot = { x = 0.000, y = 264.586, z = 0.000 }, level = 1 },
	{ config_id = 3035, monster_id = 20011201, pos = { x = 11.984, y = 0.019, z = -5.096 }, rot = { x = 0.000, y = 287.042, z = 0.000 }, level = 1 },
	{ config_id = 3036, monster_id = 21010301, pos = { x = -4.995, y = 0.019, z = 10.775 }, rot = { x = 0.000, y = 134.691, z = 0.000 }, level = 1 },
	{ config_id = 3037, monster_id = 21010301, pos = { x = 5.602, y = 0.019, z = 10.380 }, rot = { x = 0.000, y = 204.310, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3021, gadget_id = 70900205, pos = { x = 7.127, y = -1.339, z = 1.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003022, name = "ANY_MONSTER_LIVE_3022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3022", action = "action_EVENT_ANY_MONSTER_LIVE_3022" },
	{ config_id = 1003023, name = "ANY_MONSTER_DIE_3023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3023", action = "action_EVENT_ANY_MONSTER_DIE_3023" },
	{ config_id = 1003024, name = "ANY_MONSTER_DIE_3024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3024", action = "action_EVENT_ANY_MONSTER_DIE_3024" },
	{ config_id = 1003025, name = "ANY_MONSTER_DIE_3025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3025", action = "action_EVENT_ANY_MONSTER_DIE_3025" },
	{ config_id = 1003026, name = "CHALLENGE_SUCCESS_3026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3026" },
	{ config_id = 1003027, name = "CHALLENGE_FAIL_3027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3027" }
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
		gadgets = { 3021 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3028 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3022", "ANY_MONSTER_DIE_3023", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3029, 3033, 3034, 3035 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3024", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3030, 3036, 3037 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3025", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 3031, 3032 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	if 3028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 300, 240513003, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240513003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240513003, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240513003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240513003, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240513003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240513003, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3026(context, evt)
	-- 改变指定group组240513001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240513001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3027(context, evt)
	-- 改变指定group组240513002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240513002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240513002, 2001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240513001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240513001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240513001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240513001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240513003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end