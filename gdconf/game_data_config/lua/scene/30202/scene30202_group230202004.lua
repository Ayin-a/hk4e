-- 基础信息
local base_info = {
	group_id = 230202004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010201, pos = { x = 9.414, y = 0.520, z = -9.017 }, rot = { x = 0.000, y = 327.634, z = 0.000 }, level = 1 },
	{ config_id = 4002, monster_id = 21010201, pos = { x = -9.225, y = 0.520, z = -8.672 }, rot = { x = 0.000, y = 27.701, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 4003, monster_id = 21010201, pos = { x = -0.191, y = 0.520, z = -10.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 4004, monster_id = 21010201, pos = { x = -13.471, y = 0.520, z = -5.558 }, rot = { x = 0.000, y = 33.839, z = 0.000 }, level = 1 },
	{ config_id = 4005, monster_id = 21010201, pos = { x = 12.556, y = 0.520, z = -4.549 }, rot = { x = 0.000, y = 306.568, z = 0.000 }, level = 1 },
	{ config_id = 4006, monster_id = 21010201, pos = { x = -15.605, y = 0.520, z = -6.061 }, rot = { x = 0.000, y = 51.797, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 4007, monster_id = 21010201, pos = { x = 8.956, y = 0.520, z = -7.652 }, rot = { x = 0.000, y = 342.747, z = 0.000 }, level = 1 },
	{ config_id = 4008, monster_id = 21010201, pos = { x = -0.511, y = 0.520, z = -10.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 4009, monster_id = 21010201, pos = { x = -9.007, y = 0.520, z = -9.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 4010, monster_id = 20010701, pos = { x = 7.961, y = 0.520, z = -12.219 }, rot = { x = 0.000, y = 335.646, z = 0.000 }, level = 1 },
	{ config_id = 4011, monster_id = 20010601, pos = { x = -7.355, y = 0.520, z = -9.819 }, rot = { x = 0.000, y = 29.502, z = 0.000 }, level = 1 },
	{ config_id = 4012, monster_id = 21010201, pos = { x = 4.651, y = 0.520, z = -5.249 }, rot = { x = 0.000, y = 344.360, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 4013, monster_id = 21010201, pos = { x = -1.293, y = 0.520, z = -6.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4014, monster_id = 21010201, pos = { x = -8.563, y = 0.520, z = -4.024 }, rot = { x = 0.000, y = 21.059, z = 0.000 }, level = 1, affix = { 1031 } },
	{ config_id = 4015, monster_id = 21030103, pos = { x = -0.330, y = 0.520, z = -14.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4016, monster_id = 21010201, pos = { x = 9.177, y = 0.520, z = -3.942 }, rot = { x = 0.000, y = 322.031, z = 0.000 }, level = 1 },
	{ config_id = 4017, monster_id = 21010901, pos = { x = 12.631, y = 0.520, z = -9.493 }, rot = { x = 0.000, y = 338.694, z = 0.000 }, level = 1, affix = { 1031 }, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4018, gadget_id = 70900205, pos = { x = 6.493, y = -0.857, z = 2.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4019, gadget_id = 70350035, pos = { x = -0.600, y = 0.200, z = 0.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004020, name = "ANY_MONSTER_DIE_4020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4020", action = "action_EVENT_ANY_MONSTER_DIE_4020" },
	{ config_id = 1004021, name = "ANY_MONSTER_DIE_4021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4021", action = "action_EVENT_ANY_MONSTER_DIE_4021" },
	{ config_id = 1004022, name = "ANY_MONSTER_DIE_4022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4022", action = "action_EVENT_ANY_MONSTER_DIE_4022" },
	{ config_id = 1004023, name = "ANY_MONSTER_LIVE_4023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4023", action = "action_EVENT_ANY_MONSTER_LIVE_4023" },
	{ config_id = 1004024, name = "CHALLENGE_FAIL_4024", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4024" },
	{ config_id = 1004025, name = "CHALLENGE_SUCCESS_4025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4025" },
	{ config_id = 1004026, name = "DUNGEON_SETTLE_4026", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_4026" }
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
		gadgets = { 4018, 4019 },
		regions = { },
		triggers = { "CHALLENGE_FAIL_4024", "CHALLENGE_SUCCESS_4025", "DUNGEON_SETTLE_4026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 4001, 4002, 4003, 4004, 4005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4020", "ANY_MONSTER_LIVE_4023", "CHALLENGE_FAIL_4024", "CHALLENGE_SUCCESS_4025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 4012, 4013, 4014, 4015, 4016 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4022", "CHALLENGE_FAIL_4024", "CHALLENGE_SUCCESS_4025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 4006, 4007, 4008, 4009, 4017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4021", "CHALLENGE_FAIL_4024", "CHALLENGE_SUCCESS_4025" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 4010, 4011 },
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
function condition_EVENT_ANY_MONSTER_DIE_4020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230202004, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230202004, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 230202004, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4023(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4023(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1012的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1012, 230202004, 17, 4019, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4024(context, evt)
	-- 改变指定group组230202005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230202005, 5001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 230202004, suite = 1 }) then
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
function action_EVENT_CHALLENGE_SUCCESS_4025(context, evt)
	-- 改变指定group组230202005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230202005, 5001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_4026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end