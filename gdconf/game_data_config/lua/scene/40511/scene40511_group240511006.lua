-- 基础信息
local base_info = {
	group_id = 240511006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 25010301, pos = { x = -12.906, y = 0.101, z = -5.766 }, rot = { x = 0.000, y = 69.070, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 6002, monster_id = 25010401, pos = { x = 14.628, y = 0.101, z = -4.706 }, rot = { x = 0.000, y = 289.487, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 6003, monster_id = 25030301, pos = { x = -0.046, y = 0.101, z = -10.547 }, rot = { x = 0.000, y = 8.927, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 6013, monster_id = 25010501, pos = { x = -9.489, y = 0.101, z = -14.978 }, rot = { x = 0.000, y = 20.108, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 6014, monster_id = 25010601, pos = { x = 9.374, y = 0.101, z = -13.962 }, rot = { x = 0.000, y = 324.574, z = 0.000 }, level = 1, affix = { 1007 } },
	{ config_id = 6016, monster_id = 23020101, pos = { x = 6.241, y = -0.018, z = 9.424 }, rot = { x = 0.000, y = 194.220, z = 0.000 }, level = 1, affix = { 1007 }, isElite = true },
	{ config_id = 6017, monster_id = 23030101, pos = { x = -5.664, y = -0.018, z = 9.158 }, rot = { x = 0.000, y = 172.176, z = 0.000 }, level = 1, affix = { 1007, 6104, 9002 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6019, gadget_id = 70900205, pos = { x = 5.615, y = -1.358, z = 3.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006022, name = "ANY_MONSTER_LIVE_6022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6022", action = "action_EVENT_ANY_MONSTER_LIVE_6022" },
	{ config_id = 1006023, name = "ANY_MONSTER_DIE_6023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6023", action = "action_EVENT_ANY_MONSTER_DIE_6023" },
	{ config_id = 1006026, name = "CHALLENGE_SUCCESS_6026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6026" },
	{ config_id = 1006027, name = "CHALLENGE_FAIL_6027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6027" }
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
		gadgets = { 6019 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6001, 6002, 6003, 6013, 6014 },
		gadgets = { 6019 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_6022", "ANY_MONSTER_DIE_6023", "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_5,
		monsters = { 6016, 6017 },
		gadgets = { 6019 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_6026", "CHALLENGE_FAIL_6027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6022(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240511006, 7, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240511006) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240511006, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6026(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240511006, 1)
	
	-- 改变指定group组240511004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511004, 4001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240511004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6027(context, evt)
	-- 改变指定group组240511005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511005, 5001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240511005, 5001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240511004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511004, 4001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240511004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240511004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240511006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end