-- 基础信息
local base_info = {
	group_id = 234402014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 20011301, pos = { x = -1.368, y = 0.082, z = -11.573 }, rot = { x = 0.000, y = 13.195, z = 0.000 }, level = 1 },
	{ config_id = 14002, monster_id = 20011202, pos = { x = -4.579, y = 0.082, z = -9.298 }, rot = { x = 0.000, y = 34.386, z = 0.000 }, level = 1 },
	{ config_id = 14003, monster_id = 20011202, pos = { x = -6.692, y = 0.082, z = -7.605 }, rot = { x = 0.000, y = 55.802, z = 0.000 }, level = 1 },
	{ config_id = 14004, monster_id = 20011202, pos = { x = 5.178, y = 0.082, z = -9.656 }, rot = { x = 0.000, y = 327.818, z = 0.000 }, level = 1 },
	{ config_id = 14005, monster_id = 20011202, pos = { x = 7.972, y = 0.082, z = -7.537 }, rot = { x = 0.000, y = 303.832, z = 0.000 }, level = 1 },
	{ config_id = 14006, monster_id = 20011301, pos = { x = 2.943, y = 0.082, z = -11.477 }, rot = { x = 0.000, y = 344.828, z = 0.000 }, level = 1 },
	{ config_id = 14007, monster_id = 21030301, pos = { x = 5.281, y = 0.082, z = -12.058 }, rot = { x = 0.000, y = 332.583, z = 0.000 }, level = 1 },
	{ config_id = 14008, monster_id = 21030301, pos = { x = -4.350, y = 0.082, z = -12.376 }, rot = { x = 0.000, y = 21.812, z = 0.000 }, level = 1 },
	{ config_id = 14009, monster_id = 21011001, pos = { x = -6.793, y = 0.140, z = -9.778 }, rot = { x = 0.000, y = 54.563, z = 0.000 }, level = 1 },
	{ config_id = 14010, monster_id = 21011001, pos = { x = 7.138, y = 0.082, z = -9.599 }, rot = { x = 0.000, y = 307.380, z = 0.000 }, level = 1 },
	{ config_id = 14011, monster_id = 20011304, pos = { x = 0.225, y = 0.278, z = -13.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14012, monster_id = 20011202, pos = { x = 4.698, y = 0.082, z = -7.437 }, rot = { x = 0.000, y = 330.382, z = 0.000 }, level = 1 },
	{ config_id = 14013, monster_id = 20011202, pos = { x = -4.627, y = 0.082, z = -7.161 }, rot = { x = 0.000, y = 27.385, z = 0.000 }, level = 1 },
	{ config_id = 14014, monster_id = 21011001, pos = { x = 9.914, y = 0.082, z = -3.447 }, rot = { x = 0.000, y = 290.326, z = 0.000 }, level = 1 },
	{ config_id = 14015, monster_id = 21010502, pos = { x = 9.110, y = 0.082, z = -6.294 }, rot = { x = 0.000, y = 297.778, z = 0.000 }, level = 1 },
	{ config_id = 14016, monster_id = 20011301, pos = { x = 9.931, y = 0.082, z = -0.956 }, rot = { x = 0.000, y = 273.917, z = 0.000 }, level = 1 },
	{ config_id = 14017, monster_id = 21030303, pos = { x = -9.162, y = 0.082, z = -3.778 }, rot = { x = 0.000, y = 63.358, z = 0.000 }, level = 1 },
	{ config_id = 14018, monster_id = 21030201, pos = { x = -9.682, y = 0.082, z = -0.017 }, rot = { x = 0.000, y = 87.800, z = 0.000 }, level = 1 },
	{ config_id = 14019, monster_id = 20011202, pos = { x = 7.986, y = 0.082, z = -2.667 }, rot = { x = 0.000, y = 284.917, z = 0.000 }, level = 1 },
	{ config_id = 14020, monster_id = 20011202, pos = { x = 8.207, y = 0.082, z = 0.211 }, rot = { x = 0.000, y = 262.335, z = 0.000 }, level = 1 },
	{ config_id = 14021, monster_id = 21010902, pos = { x = -9.044, y = 0.082, z = 3.163 }, rot = { x = 0.000, y = 112.749, z = 0.000 }, level = 1 },
	{ config_id = 14022, monster_id = 21011001, pos = { x = -7.326, y = 0.082, z = 6.002 }, rot = { x = 0.000, y = 133.548, z = 0.000 }, level = 1 },
	{ config_id = 14023, monster_id = 20011304, pos = { x = 0.010, y = 0.082, z = -10.026 }, rot = { x = 0.000, y = 8.339, z = 0.000 }, level = 1 },
	{ config_id = 14024, monster_id = 20011202, pos = { x = -2.287, y = 0.082, z = -8.036 }, rot = { x = 0.000, y = 20.994, z = 0.000 }, level = 1 },
	{ config_id = 14025, monster_id = 20011202, pos = { x = 2.037, y = 0.082, z = -8.082 }, rot = { x = 0.000, y = 358.791, z = 0.000 }, level = 1 },
	{ config_id = 14034, monster_id = 21030203, pos = { x = 6.692, y = 0.028, z = -5.615 }, rot = { x = 0.000, y = 316.762, z = 0.000 }, level = 1 },
	{ config_id = 14035, monster_id = 20011304, pos = { x = 7.652, y = 0.028, z = 2.892 }, rot = { x = 0.000, y = 242.716, z = 0.000 }, level = 1, affix = { 1028 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14026, gadget_id = 70900205, pos = { x = 0.213, y = -3.342, z = 0.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014027, name = "ANY_MONSTER_DIE_14027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14027", action = "action_EVENT_ANY_MONSTER_DIE_14027" },
	{ config_id = 1014028, name = "ANY_MONSTER_DIE_14028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14028", action = "action_EVENT_ANY_MONSTER_DIE_14028" },
	{ config_id = 1014029, name = "ANY_MONSTER_DIE_14029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14029", action = "action_EVENT_ANY_MONSTER_DIE_14029" },
	{ config_id = 1014030, name = "ANY_MONSTER_LIVE_14030", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_14030" },
	{ config_id = 1014031, name = "ANY_MONSTER_DIE_14031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14031", action = "action_EVENT_ANY_MONSTER_DIE_14031" },
	{ config_id = 1014032, name = "CHALLENGE_SUCCESS_14032", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_14032" },
	{ config_id = 1014033, name = "CHALLENGE_FAIL_14033", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_14033" }
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
		gadgets = { 14026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 14026 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_14030", "CHALLENGE_SUCCESS_14032", "CHALLENGE_FAIL_14033" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 14026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 14026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14029" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 14026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14031" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
		gadgets = { 14026 },
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
function condition_EVENT_ANY_MONSTER_DIE_14027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234402014) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234402014, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14028(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234402014) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为2
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234402014, 4)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14029(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234402014) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为3
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14029(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234402014, 5)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_14030(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从234402010的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 234402010)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 234402014, 27, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14031(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 234402014) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为4
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14031(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234402014, 6)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_14032(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234402010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14033(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234402012, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end