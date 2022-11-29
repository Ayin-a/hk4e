-- 基础信息
local base_info = {
	group_id = 234401005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 25070101, pos = { x = 0.494, y = -0.046, z = -12.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5002, monster_id = 25010301, pos = { x = 4.910, y = -0.046, z = -10.256 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5003, monster_id = 25010201, pos = { x = -4.693, y = 0.028, z = -10.365 }, rot = { x = 0.000, y = 16.497, z = 0.000 }, level = 1 },
	{ config_id = 5004, monster_id = 25060101, pos = { x = 8.912, y = -0.046, z = -7.285 }, rot = { x = 0.000, y = 210.347, z = 0.000 }, level = 1 },
	{ config_id = 5005, monster_id = 25060101, pos = { x = -8.772, y = -0.046, z = -7.061 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, monster_id = 25010201, pos = { x = 10.104, y = -0.046, z = -3.573 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, monster_id = 25010201, pos = { x = 11.525, y = -0.046, z = 0.172 }, rot = { x = 0.000, y = 185.717, z = 0.000 }, level = 1 },
	{ config_id = 5008, monster_id = 25030301, pos = { x = 9.785, y = -0.046, z = 4.403 }, rot = { x = 0.000, y = 154.555, z = 0.000 }, level = 1 },
	{ config_id = 5009, monster_id = 25010301, pos = { x = -10.985, y = -0.046, z = -2.649 }, rot = { x = 0.000, y = 136.798, z = 0.000 }, level = 1 },
	{ config_id = 5014, monster_id = 25070101, pos = { x = 0.101, y = 0.028, z = 7.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5017, monster_id = 25010201, pos = { x = -10.856, y = -0.046, z = 2.374 }, rot = { x = 0.000, y = 101.919, z = 0.000 }, level = 1 },
	{ config_id = 5018, monster_id = 25060101, pos = { x = -4.820, y = 0.028, z = 6.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, monster_id = 25060101, pos = { x = 4.527, y = 0.028, z = 6.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5010, gadget_id = 70350033, pos = { x = 0.161, y = 0.008, z = -6.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5011, gadget_id = 70900205, pos = { x = 6.522, y = -1.256, z = 2.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005012, name = "ANY_MONSTER_LIVE_5012", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_5012" },
	{ config_id = 1005013, name = "MONSTER_TIDE_DIE_5013", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_5013", action = "action_EVENT_MONSTER_TIDE_DIE_5013" },
	{ config_id = 1005015, name = "CHALLENGE_SUCCESS_5015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5015" },
	{ config_id = 1005016, name = "CHALLENGE_FAIL_5016", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5016" }
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
		gadgets = { 5011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 5010, 5011 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5012", "MONSTER_TIDE_DIE_5013", "CHALLENGE_SUCCESS_5015", "CHALLENGE_FAIL_5016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 5014, 5018, 5019 },
		gadgets = { 5010, 5011 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5015", "CHALLENGE_FAIL_5016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 5010, 5011 },
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

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5012(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从234401002的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 234401002)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 234401005, 13, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	-- 改变指定group组234401005中， configid为5010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234401005, 5010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_5013(context, evt)
	if 8 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_5013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 234401005, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5015(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234401002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 234401005, EntityType.GADGET, 5010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234401005, suite = 1 }) then
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