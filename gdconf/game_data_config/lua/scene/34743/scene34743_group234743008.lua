-- 基础信息
local base_info = {
	group_id = 234743008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 25080101, pos = { x = 5.066, y = -0.102, z = -10.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 8002, monster_id = 25080101, pos = { x = 0.011, y = -0.102, z = -9.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 8003, monster_id = 25080101, pos = { x = -4.945, y = -0.102, z = -9.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 8004, monster_id = 25010301, pos = { x = 8.471, y = -0.102, z = 8.329 }, rot = { x = 0.000, y = 218.798, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8005, monster_id = 23050101, pos = { x = 0.011, y = -0.102, z = 10.006 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6106 }, isElite = true },
	{ config_id = 8006, monster_id = 25010501, pos = { x = -8.605, y = -0.102, z = 8.368 }, rot = { x = 0.000, y = 149.040, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8007, monster_id = 25010601, pos = { x = -0.018, y = -0.102, z = -6.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8011, monster_id = 25080201, pos = { x = -10.055, y = -0.102, z = -4.003 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 8014, monster_id = 25080201, pos = { x = -10.055, y = -0.102, z = -0.003 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 8015, monster_id = 25080201, pos = { x = -10.055, y = -0.102, z = 4.027 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 8016, monster_id = 25080301, pos = { x = 10.050, y = -0.102, z = -4.003 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 8017, monster_id = 25080301, pos = { x = 10.050, y = -0.102, z = -0.003 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 },
	{ config_id = 8018, monster_id = 25080301, pos = { x = 10.050, y = -0.102, z = 4.027 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8009, gadget_id = 70900205, pos = { x = 5.917, y = -0.566, z = 2.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008008, name = "MONSTER_TIDE_DIE_8008", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "", condition = "condition_EVENT_MONSTER_TIDE_DIE_8008", action = "action_EVENT_MONSTER_TIDE_DIE_8008" },
	{ config_id = 1008010, name = "ANY_MONSTER_LIVE_8010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8010", action = "action_EVENT_ANY_MONSTER_LIVE_8010" },
	{ config_id = 1008012, name = "CHALLENGE_SUCCESS_8012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8012" },
	{ config_id = 1008013, name = "CHALLENGE_FAIL_8013", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8013" }
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
		gadgets = { 8009 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_8008", "ANY_MONSTER_LIVE_8010", "CHALLENGE_SUCCESS_8012", "CHALLENGE_FAIL_8013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 8001, 8002, 8003, 8011, 8014, 8015, 8016, 8017, 8018 },
		gadgets = { 8009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8004, 8005, 8006, 8007 },
		gadgets = { 8009 },
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
function condition_EVENT_MONSTER_TIDE_DIE_8008(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_8008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234743008, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8010(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8010(context, evt)
	-- 将本组内变量名为 "monster_wave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从234743005的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 234743005)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 234743008, 13, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8012(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234743005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组234743009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234743009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234743009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234743009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234743008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	-- 改变指定group组234743009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234743009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组234743009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234743009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end