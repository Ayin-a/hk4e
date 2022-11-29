-- 基础信息
local base_info = {
	group_id = 240506003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3002, monster_id = 20010604, pos = { x = 0.424, y = 0.120, z = -14.263 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1, affix = { 1007, 1027 }, isElite = true },
	{ config_id = 3003, monster_id = 20010702, pos = { x = -7.183, y = 0.120, z = -13.188 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 3004, monster_id = 20010604, pos = { x = 6.565, y = 0.120, z = -7.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 3005, monster_id = 20010702, pos = { x = 8.689, y = 0.120, z = -12.969 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 3008, monster_id = 20010604, pos = { x = -6.212, y = 0.120, z = -7.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 3012, monster_id = 23030101, pos = { x = 10.964, y = 0.120, z = -11.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1007, 9002 }, isElite = true },
	-- 电伤害
	{ config_id = 3017, monster_id = 23030101, pos = { x = -10.044, y = 0.120, z = -12.322 }, rot = { x = 0.000, y = 28.909, z = 0.000 }, level = 1, affix = { 1007, 6104, 9002 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3018, gadget_id = 70350031, pos = { x = -0.005, y = 0.012, z = -7.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70900205, pos = { x = 7.127, y = -1.339, z = 1.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003022, name = "ANY_MONSTER_LIVE_3022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3022", action = "action_EVENT_ANY_MONSTER_LIVE_3022" },
	{ config_id = 1003023, name = "ANY_MONSTER_DIE_3023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3023", action = "action_EVENT_ANY_MONSTER_DIE_3023" },
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
		gadgets = { 3018, 3021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3002, 3003, 3004, 3005, 3008 },
		gadgets = { 3018, 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3022", "ANY_MONSTER_DIE_3023", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3012, 3017 },
		gadgets = { 3018, 3021 },
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
	if 3004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240506003, 7, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240506003) ~= 0 then
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
	    ScriptLib.AddExtraGroupSuite(context, 240506003, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3026(context, evt)
	-- 改变指定group组240506001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240506003中， configid为3018的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506003, 3018, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240506001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3027(context, evt)
	-- 改变指定group组240506002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240506002, 2001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240506001中， configid为1001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506001, 1001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240506001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240506001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240506003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end