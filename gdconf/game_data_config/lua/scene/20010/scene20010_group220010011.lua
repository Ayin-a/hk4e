-- 基础信息
local base_info = {
	group_id = 220010011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5, monster_id = 20010801, pos = { x = 451.872, y = -31.373, z = 18.272 }, rot = { x = 0.000, y = 257.253, z = 0.000 }, level = 1 },
	{ config_id = 9, monster_id = 20010801, pos = { x = 452.064, y = -31.373, z = 16.346 }, rot = { x = 0.000, y = 266.540, z = 0.000 }, level = 1 },
	{ config_id = 10, monster_id = 20011001, pos = { x = 451.606, y = -31.373, z = 16.432 }, rot = { x = 0.000, y = 264.859, z = 0.000 }, level = 1 },
	{ config_id = 11, monster_id = 20011001, pos = { x = 451.589, y = -31.373, z = 18.099 }, rot = { x = 0.000, y = 260.341, z = 0.000 }, level = 1 },
	{ config_id = 12, monster_id = 20011001, pos = { x = 451.860, y = -31.373, z = 12.474 }, rot = { x = 0.000, y = 271.090, z = 0.000 }, level = 1 },
	{ config_id = 13, monster_id = 20010801, pos = { x = 452.030, y = -31.373, z = 10.103 }, rot = { x = 0.000, y = 257.553, z = 0.000 }, level = 1 },
	{ config_id = 14, monster_id = 20011001, pos = { x = 452.294, y = -31.373, z = 10.387 }, rot = { x = 0.000, y = 265.042, z = 0.000 }, level = 1 },
	{ config_id = 17, monster_id = 20011101, pos = { x = 451.694, y = -31.547, z = 14.198 }, rot = { x = 0.000, y = 273.142, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 20, monster_id = 20010901, pos = { x = 452.158, y = -31.547, z = 14.333 }, rot = { x = 0.000, y = 265.045, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 21, monster_id = 20010801, pos = { x = 452.212, y = -31.546, z = 12.155 }, rot = { x = 0.000, y = 266.695, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11001, gadget_id = 70900205, pos = { x = 456.897, y = -32.644, z = 11.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000029, name = "CHALLENGE_SUCCESS_29", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_29" },
	{ config_id = 1000030, name = "CHALLENGE_FAIL_30", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_30" },
	{ config_id = 1000031, name = "ANY_MONSTER_DIE_31", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31", action = "action_EVENT_ANY_MONSTER_DIE_31" },
	{ config_id = 1000032, name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32" },
	{ config_id = 1000033, name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33" },
	{ config_id = 1000034, name = "ANY_MONSTER_DIE_34", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34", action = "action_EVENT_ANY_MONSTER_DIE_34" },
	{ config_id = 1000035, name = "ANY_MONSTER_DIE_35", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35", action = "action_EVENT_ANY_MONSTER_DIE_35" },
	{ config_id = 1000036, name = "ANY_MONSTER_LIVE_36", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_36", action = "action_EVENT_ANY_MONSTER_LIVE_36" }
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
		gadgets = { 11001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 9, 11, 14, 17, 21 },
		gadgets = { 11001 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_29", "CHALLENGE_FAIL_30", "ANY_MONSTER_DIE_31", "ANY_MONSTER_DIE_32", "ANY_MONSTER_DIE_33", "ANY_MONSTER_DIE_34", "ANY_MONSTER_DIE_35", "ANY_MONSTER_LIVE_36" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_29(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220010010, 76, {12}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组220010010中， configid为76的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010010, 76, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（446，-30，14），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=446, y=-30, z=14}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_30(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220010010, 76, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组220010010中， configid为76的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220010010, 76, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220010011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31(context, evt)
	if 11 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 5, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 20, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34(context, evt)
	if 21 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 12, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_35(context, evt)
	if 14 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 13, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_36(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_36(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为172的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 172, 220010011, 10, 30, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end