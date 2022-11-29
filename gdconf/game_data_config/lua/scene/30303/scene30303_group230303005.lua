-- 基础信息
local base_info = {
	group_id = 230303005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21010501, pos = { x = 7.468, y = 0.510, z = -5.649 }, rot = { x = 0.000, y = 327.634, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5002, monster_id = 21010501, pos = { x = -0.484, y = 0.510, z = -6.645 }, rot = { x = 0.000, y = 27.701, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5003, monster_id = 21010501, pos = { x = -7.822, y = 0.510, z = -5.688 }, rot = { x = 0.000, y = 24.075, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5004, monster_id = 21010201, pos = { x = -13.033, y = 0.510, z = -6.046 }, rot = { x = 0.000, y = 33.839, z = 0.000 }, level = 1 },
	{ config_id = 5005, monster_id = 21010201, pos = { x = 12.994, y = 0.510, z = -5.037 }, rot = { x = 0.000, y = 306.568, z = 0.000 }, level = 1 },
	{ config_id = 5006, monster_id = 21011001, pos = { x = -15.167, y = 0.510, z = -6.548 }, rot = { x = 0.000, y = 51.797, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5007, monster_id = 21010201, pos = { x = 9.394, y = 0.510, z = -8.139 }, rot = { x = 0.000, y = 342.747, z = 0.000 }, level = 1 },
	{ config_id = 5008, monster_id = 20011101, pos = { x = -0.073, y = 0.510, z = -10.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5009, monster_id = 21010201, pos = { x = -8.569, y = 0.510, z = -9.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5010, monster_id = 21010501, pos = { x = 5.942, y = 0.510, z = -6.927 }, rot = { x = 0.000, y = 344.915, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5011, monster_id = 21011001, pos = { x = -6.294, y = 0.510, z = -6.436 }, rot = { x = 0.000, y = 60.623, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5012, monster_id = 21010201, pos = { x = 7.007, y = 0.510, z = -3.777 }, rot = { x = 0.000, y = 333.948, z = 0.000 }, level = 1 },
	{ config_id = 5013, monster_id = 20011101, pos = { x = -0.855, y = 0.510, z = -7.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5014, monster_id = 21010201, pos = { x = -8.125, y = 0.510, z = -4.511 }, rot = { x = 0.000, y = 21.059, z = 0.000 }, level = 1 },
	{ config_id = 5015, monster_id = 21011001, pos = { x = 3.685, y = 0.510, z = -7.366 }, rot = { x = 0.000, y = 356.000, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5016, monster_id = 21011001, pos = { x = -5.340, y = 0.510, z = -7.072 }, rot = { x = 0.000, y = 20.073, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5017, monster_id = 21011001, pos = { x = 7.945, y = 0.510, z = -3.217 }, rot = { x = 0.000, y = 324.425, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 5026, monster_id = 21010201, pos = { x = -8.300, y = 0.340, z = -2.409 }, rot = { x = 0.000, y = 54.568, z = 0.000 }, level = 1 },
	{ config_id = 5027, monster_id = 21010201, pos = { x = -3.900, y = 0.340, z = -5.673 }, rot = { x = 0.000, y = 25.327, z = 0.000 }, level = 1 },
	{ config_id = 5028, monster_id = 20011101, pos = { x = 1.048, y = 0.340, z = -6.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5018, gadget_id = 70900205, pos = { x = 6.931, y = -0.867, z = 1.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5019, gadget_id = 70350035, pos = { x = -0.168, y = 0.360, z = 0.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005020, name = "DUNGEON_SETTLE_5020", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_5020" },
	{ config_id = 1005023, name = "ANY_MONSTER_LIVE_5023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_5023", action = "action_EVENT_ANY_MONSTER_LIVE_5023" },
	{ config_id = 1005024, name = "CHALLENGE_FAIL_5024", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5024" },
	{ config_id = 1005025, name = "CHALLENGE_SUCCESS_5025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5025" }
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
		gadgets = { 5018, 5019 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_5020", "ANY_MONSTER_LIVE_5023", "CHALLENGE_FAIL_5024", "CHALLENGE_SUCCESS_5025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_5020(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_5023(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1023的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1023, 230303005, 20, 5019, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5024(context, evt)
	-- 改变指定group组230303006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230303006, 6001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230303005, suite = 1 }) then
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5025(context, evt)
	-- 改变指定group组230303006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230303006, 6001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end