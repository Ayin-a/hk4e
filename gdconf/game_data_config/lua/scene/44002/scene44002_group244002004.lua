-- 基础信息
local base_info = {
	group_id = 244002004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20011101, pos = { x = 343.418, y = -28.964, z = 426.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4002, monster_id = 20011001, pos = { x = 347.752, y = -28.965, z = 427.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4003, monster_id = 20011001, pos = { x = 338.980, y = -28.964, z = 427.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4004, monster_id = 20011001, pos = { x = 346.230, y = -28.983, z = 423.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4006, monster_id = 21010502, pos = { x = 339.813, y = -28.983, z = 420.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4007, monster_id = 21010502, pos = { x = 346.433, y = -28.983, z = 420.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4008, monster_id = 21030101, pos = { x = 335.461, y = -28.984, z = 423.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4009, monster_id = 21030101, pos = { x = 331.510, y = -28.983, z = 426.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4010, monster_id = 21011002, pos = { x = 350.712, y = -28.984, z = 422.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4011, monster_id = 21011002, pos = { x = 353.025, y = -28.984, z = 425.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4012, monster_id = 21010701, pos = { x = 339.390, y = -28.984, z = 425.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } },
	{ config_id = 4013, monster_id = 21010701, pos = { x = 336.127, y = -28.984, z = 429.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4017, gadget_id = 70900205, pos = { x = 344.871, y = -32.996, z = 431.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4018, gadget_id = 70330057, pos = { x = 343.239, y = -28.891, z = 430.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004005, name = "ANY_MONSTER_DIE_4005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4005", action = "action_EVENT_ANY_MONSTER_DIE_4005" },
	{ config_id = 1004014, name = "CHALLENGE_SUCCESS_4014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4014" },
	{ config_id = 1004015, name = "CHALLENGE_FAIL_4015", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4015" },
	{ config_id = 1004016, name = "ANY_MONSTER_LIVE_4016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4016", action = "action_EVENT_ANY_MONSTER_LIVE_4016" },
	{ config_id = 1004019, name = "GADGET_CREATE_4019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4019", action = "action_EVENT_GADGET_CREATE_4019" }
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
		gadgets = { 4017 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4014", "CHALLENGE_FAIL_4015", "ANY_MONSTER_LIVE_4016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4001, 4002, 4003, 4004, 4006, 4007 },
		gadgets = { 4017, 4018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4005", "GADGET_CREATE_4019" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4008, 4009, 4010, 4011, 4012, 4013 },
		gadgets = { 4017 },
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
function condition_EVENT_ANY_MONSTER_DIE_4005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244002004, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_4014(context, evt)
	-- 将configid为 4018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组244002001中， configid为1022的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1022, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组244002001中， configid为1023的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1023, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组244002001中， configid为1024的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1024, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244002009, 3)
	
	-- 触发镜头注目，注目位置为坐标（343，-28，404），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=343, y=-28, z=404}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 244002004, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4015(context, evt)
	-- 将configid为 4018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 4018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组244002001中， configid为1024的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 244002001, 1024, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244002004, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 244002003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244002009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4016(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4016(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为5的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 5, 30, 244002004, 12, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4019(context, evt)
	if 4018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4019(context, evt)
	-- 将configid为 4018 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4018, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end