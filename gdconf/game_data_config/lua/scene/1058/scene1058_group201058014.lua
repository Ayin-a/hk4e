-- 基础信息
local base_info = {
	group_id = 201058014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 20011202, pos = { x = 21.957, y = 92.837, z = 39.278 }, rot = { x = 0.000, y = 85.906, z = 0.000 }, level = 1 },
	{ config_id = 14002, monster_id = 20011202, pos = { x = 27.328, y = 92.851, z = 36.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14003, monster_id = 20011202, pos = { x = 31.386, y = 92.852, z = 38.431 }, rot = { x = 0.000, y = 289.613, z = 0.000 }, level = 1 },
	{ config_id = 14004, monster_id = 20011202, pos = { x = 30.850, y = 92.855, z = 43.446 }, rot = { x = 0.000, y = 241.209, z = 0.000 }, level = 1 },
	{ config_id = 14005, monster_id = 20011301, pos = { x = 24.953, y = 92.857, z = 44.306 }, rot = { x = 0.000, y = 142.464, z = 0.000 }, level = 1 },
	{ config_id = 14006, monster_id = 20010501, pos = { x = 24.708, y = 92.849, z = 36.702 }, rot = { x = 0.000, y = 37.783, z = 0.000 }, level = 1 },
	{ config_id = 14007, monster_id = 20010501, pos = { x = 22.488, y = 92.844, z = 41.890 }, rot = { x = 0.000, y = 113.261, z = 0.000 }, level = 1 },
	{ config_id = 14008, monster_id = 20010701, pos = { x = 28.359, y = 92.858, z = 44.903 }, rot = { x = 0.000, y = 181.495, z = 0.000 }, level = 1 },
	{ config_id = 14009, monster_id = 20010501, pos = { x = 29.271, y = 92.859, z = 36.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14010, monster_id = 20010701, pos = { x = 26.542, y = 92.864, z = 44.953 }, rot = { x = 0.000, y = 162.891, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014011, name = "ANY_MONSTER_LIVE_14011", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_14011", action = "action_EVENT_ANY_MONSTER_LIVE_14011", trigger_count = 0 },
	{ config_id = 1014012, name = "CHALLENGE_SUCCESS_14012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1401", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_14012", trigger_count = 0 },
	{ config_id = 1014013, name = "CHALLENGE_FAIL_14013", event = EventType.EVENT_CHALLENGE_FAIL, source = "1401", condition = "", action = "action_EVENT_CHALLENGE_FAIL_14013", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 14001, 14002, 14003, 14004, 14005, 14006, 14007, 14008, 14009, 14010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 原Suite1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_14011", "CHALLENGE_SUCCESS_14012", "CHALLENGE_FAIL_14013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_14011(context, evt)
	if 14001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_14011(context, evt)
	-- 创建编号为1401（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1401, 2, 120, 201058014, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201058002, monsters = {}, gadgets = {2004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_14012(context, evt)
	-- 改变指定group组201058002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（14，92，52），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=14, y=92, z=52}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_14013(context, evt)
	-- 改变指定group组201058002中， configid为2017的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058002, 2017, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201058014, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201058002, 2)
	
	return 0
end