-- 基础信息
local base_info = {
	group_id = 240601005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20011201, pos = { x = 11.273, y = 0.140, z = -7.140 }, rot = { x = 0.000, y = 314.100, z = 0.000 }, level = 1 },
	{ config_id = 5002, monster_id = 20011201, pos = { x = -10.251, y = 0.140, z = -5.846 }, rot = { x = 0.000, y = 54.700, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 20011201, pos = { x = -8.119, y = 0.140, z = -9.905 }, rot = { x = 0.000, y = 29.800, z = 0.000 }, level = 1 },
	{ config_id = 5004, monster_id = 20011201, pos = { x = 6.609, y = 0.140, z = -10.216 }, rot = { x = 0.000, y = 339.539, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5005, monster_id = 20011301, pos = { x = -0.061, y = 0.140, z = -11.203 }, rot = { x = 0.000, y = 358.677, z = 0.000 }, level = 1 },
	{ config_id = 5006, monster_id = 20011201, pos = { x = -7.746, y = 0.140, z = 8.171 }, rot = { x = 0.000, y = 134.100, z = 0.000 }, level = 1 },
	{ config_id = 5007, monster_id = 20011201, pos = { x = 12.654, y = 0.140, z = 0.505 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 5008, monster_id = 20011201, pos = { x = 2.533, y = 0.140, z = 8.641 }, rot = { x = 0.000, y = 195.900, z = 0.000 }, level = 1 },
	{ config_id = 5009, monster_id = 20011201, pos = { x = 9.096, y = 0.140, z = -5.130 }, rot = { x = 0.000, y = 313.100, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5010, monster_id = 20011201, pos = { x = -3.733, y = 0.140, z = -7.696 }, rot = { x = 0.000, y = 26.900, z = 0.000 }, level = 1 },
	{ config_id = 5011, monster_id = 20011301, pos = { x = 12.889, y = 0.140, z = 2.936 }, rot = { x = 0.000, y = 315.283, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5012, monster_id = 20011201, pos = { x = -10.888, y = 0.140, z = -1.619 }, rot = { x = 0.000, y = 80.830, z = 0.000 }, level = 1 },
	{ config_id = 5014, monster_id = 20011201, pos = { x = 10.555, y = 0.019, z = -10.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5015, monster_id = 20011301, pos = { x = -14.481, y = 0.140, z = 2.127 }, rot = { x = 0.000, y = 102.200, z = 0.000 }, level = 1 },
	{ config_id = 5016, monster_id = 22010102, pos = { x = -0.383, y = 0.140, z = -12.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5017, monster_id = 20011201, pos = { x = 0.332, y = 0.019, z = -7.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5018, monster_id = 20011301, pos = { x = -8.849, y = 0.019, z = -11.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, monster_id = 20011301, pos = { x = 1.728, y = 0.019, z = -10.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 5020, monster_id = 20011201, pos = { x = 13.913, y = 0.019, z = -3.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5021, monster_id = 20011201, pos = { x = 9.072, y = 0.140, z = 6.153 }, rot = { x = 0.000, y = 131.484, z = 0.000 }, level = 1 },
	{ config_id = 5022, monster_id = 20011201, pos = { x = -8.241, y = 0.140, z = 5.893 }, rot = { x = 0.000, y = 126.837, z = 0.000 }, level = 1 },
	{ config_id = 5024, monster_id = 20011201, pos = { x = -10.182, y = 0.019, z = -3.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5013, gadget_id = 70350035, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5023, gadget_id = 70900205, pos = { x = 7.099, y = -1.319, z = 4.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005025, name = "ANY_MONSTER_LIVE_5025", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5025", action = "action_EVENT_ANY_MONSTER_LIVE_5025" },
	{ config_id = 1005026, name = "ANY_MONSTER_DIE_5026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5026", action = "action_EVENT_ANY_MONSTER_DIE_5026" },
	{ config_id = 1005027, name = "ANY_MONSTER_DIE_5027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5027", action = "action_EVENT_ANY_MONSTER_DIE_5027" },
	{ config_id = 1005028, name = "ANY_MONSTER_DIE_5028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5028", action = "action_EVENT_ANY_MONSTER_DIE_5028" },
	{ config_id = 1005029, name = "CHALLENGE_SUCCESS_5029", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5029" },
	{ config_id = 1005030, name = "CHALLENGE_FAIL_5030", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5030" },
	{ config_id = 1005031, name = "ANY_MONSTER_DIE_5031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5031", action = "action_EVENT_ANY_MONSTER_DIE_5031" }
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
		gadgets = { 5013, 5023 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_5030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5001, 5002, 5003, 5004, 5005 },
		gadgets = { 5013, 5023 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5025", "ANY_MONSTER_DIE_5026", "CHALLENGE_SUCCESS_5029", "CHALLENGE_FAIL_5030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5006, 5007, 5008, 5009, 5010, 5012 },
		gadgets = { 5013, 5023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5027", "CHALLENGE_SUCCESS_5029", "CHALLENGE_FAIL_5030" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 5011, 5015 },
		gadgets = { 5013, 5023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5028", "CHALLENGE_SUCCESS_5029", "CHALLENGE_FAIL_5030" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 5016, 5021, 5022 },
		gadgets = { 5013, 5023 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5029", "CHALLENGE_FAIL_5030" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { 5014, 5017, 5018, 5019, 5020, 5024 },
		gadgets = { 5013, 5023 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5029", "CHALLENGE_FAIL_5030", "ANY_MONSTER_DIE_5031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5025(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5025(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为188的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 240601005, 22, 5013, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5026(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240601005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5026(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240601005, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240601005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5027(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240601005, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240601005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5028(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240601005, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5029(context, evt)
	-- 改变指定group组240601004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240601004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240601007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240601007, 7001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组240601004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240601004, 4001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5030(context, evt)
	-- 改变指定group组240601007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240601007, 7001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240601007, 7001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240601004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240601004, 4001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240601004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240601004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240601005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240601005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5031(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240601005, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end