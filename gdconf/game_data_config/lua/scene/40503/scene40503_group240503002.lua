-- 基础信息
local base_info = {
	group_id = 240503002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 20010801, pos = { x = -6.140, y = 0.027, z = -10.279 }, rot = { x = 0.000, y = 11.828, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 20010901, pos = { x = 0.536, y = 0.027, z = -11.096 }, rot = { x = 0.000, y = 353.266, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 2003, monster_id = 20010801, pos = { x = 8.387, y = 0.027, z = -10.371 }, rot = { x = 0.000, y = 336.997, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 20010801, pos = { x = 0.346, y = 0.027, z = -7.929 }, rot = { x = 0.000, y = 336.997, z = 0.000 }, level = 1 },
	{ config_id = 2005, monster_id = 20010801, pos = { x = 11.828, y = 0.027, z = -5.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, monster_id = 20010901, pos = { x = 4.424, y = 0.027, z = -8.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isElite = true },
	-- 冰debuff
	{ config_id = 2007, monster_id = 22010203, pos = { x = 4.270, y = 0.027, z = -12.372 }, rot = { x = 0.000, y = 358.325, z = 0.000 }, level = 1, affix = { 1029 }, isElite = true },
	{ config_id = 2008, monster_id = 20010801, pos = { x = -6.868, y = 0.027, z = -6.202 }, rot = { x = 0.000, y = 73.364, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 20010801, pos = { x = 10.882, y = 0.027, z = -6.740 }, rot = { x = 0.000, y = 296.235, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 20010901, pos = { x = -3.846, y = 0.027, z = -8.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isElite = true },
	{ config_id = 2015, monster_id = 20010801, pos = { x = 0.046, y = 0.027, z = -13.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, monster_id = 20010801, pos = { x = -10.168, y = 0.027, z = -6.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, monster_id = 20010801, pos = { x = 1.664, y = 0.027, z = -6.934 }, rot = { x = 0.000, y = 296.235, z = 0.000 }, level = 1 },
	{ config_id = 2020, monster_id = 20010904, pos = { x = -4.387, y = 0.027, z = -12.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2011, gadget_id = 70900205, pos = { x = 7.064, y = -1.432, z = 1.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002012, name = "ANY_MONSTER_LIVE_2012", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2012", action = "action_EVENT_ANY_MONSTER_LIVE_2012" },
	{ config_id = 1002013, name = "ANY_MONSTER_DIE_2013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2013", action = "action_EVENT_ANY_MONSTER_DIE_2013" },
	{ config_id = 1002014, name = "ANY_MONSTER_DIE_2014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2014", action = "action_EVENT_ANY_MONSTER_DIE_2014" },
	{ config_id = 1002016, name = "CHALLENGE_SUCCESS_2016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2016" },
	{ config_id = 1002017, name = "CHALLENGE_FAIL_2017", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2017" }
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
		gadgets = { 2011 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_2017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002, 2003, 2004 },
		gadgets = { 2011 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2012", "ANY_MONSTER_DIE_2013", "CHALLENGE_SUCCESS_2016", "CHALLENGE_FAIL_2017" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 2005, 2006, 2010, 2015, 2018 },
		gadgets = { 2011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2014", "CHALLENGE_SUCCESS_2016", "CHALLENGE_FAIL_2017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_5,
		monsters = { 2007, 2008, 2009, 2019, 2020 },
		gadgets = { 2011 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2016", "CHALLENGE_FAIL_2017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2012(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2012(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 360, 240503002, 14, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240503002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240503002, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240503002) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240503002, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2016(context, evt)
	-- 改变指定group组240503008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503008, 8001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240503008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503008, 8002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2017(context, evt)
	-- 改变指定group组240503004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503004, 4001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240503004, 4001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240503008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503008, 8001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240503008中， configid为8002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240503008, 8002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240503002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end