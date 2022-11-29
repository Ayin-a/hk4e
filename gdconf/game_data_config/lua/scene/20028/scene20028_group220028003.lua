-- 基础信息
local base_info = {
	group_id = 220028003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 23020101, pos = { x = -56.921, y = -67.400, z = -167.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 21010501, pos = { x = -69.164, y = -67.481, z = -171.060 }, rot = { x = 0.000, y = 27.526, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3003, monster_id = 21010501, pos = { x = -43.745, y = -67.481, z = -150.805 }, rot = { x = 0.000, y = 241.644, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3004, monster_id = 21011001, pos = { x = -43.646, y = -67.481, z = -170.814 }, rot = { x = 0.000, y = 338.134, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3005, monster_id = 21011001, pos = { x = -69.259, y = -67.481, z = -150.636 }, rot = { x = 0.000, y = 144.514, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3006, monster_id = 21010901, pos = { x = -58.965, y = -67.481, z = -171.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3007, monster_id = 21010901, pos = { x = -56.367, y = -67.481, z = -150.728 }, rot = { x = 0.000, y = 186.138, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3008, monster_id = 21011001, pos = { x = -43.388, y = -67.481, z = -160.624 }, rot = { x = 0.000, y = 285.621, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3009, monster_id = 21011001, pos = { x = -69.221, y = -67.481, z = -159.398 }, rot = { x = 0.000, y = 98.202, z = 0.000 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3010, gadget_id = 70350009, pos = { x = -56.556, y = -67.400, z = -135.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3011, gadget_id = 70350009, pos = { x = -56.969, y = -67.836, z = -187.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70220014, pos = { x = -98.279, y = -80.249, z = -202.804 }, rot = { x = 0.000, y = 56.770, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70220014, pos = { x = -98.590, y = -80.249, z = -200.117 }, rot = { x = 0.000, y = 119.395, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000020, name = "SPECIFIC_MONSTER_HP_CHANGE_20", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "3001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_20", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_20" },
	{ config_id = 1000031, name = "ANY_MONSTER_LIVE_31", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_31", action = "action_EVENT_ANY_MONSTER_LIVE_31" },
	{ config_id = 1000034, name = "CHALLENGE_FAIL_34", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_34" },
	{ config_id = 1000035, name = "CHALLENGE_SUCCESS_35", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_35" }
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
	suite = 2,
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
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3010, 3011, 3012, 3013 },
		regions = { },
		triggers = { "SPECIFIC_MONSTER_HP_CHANGE_20", "ANY_MONSTER_LIVE_31", "CHALLENGE_FAIL_34", "CHALLENGE_SUCCESS_35" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 3010, 3011 },
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
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_20(context, evt)
	--[[判断指定configid的怪物的血量小于%50时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 50 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_20(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_31(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_31(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为183的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 183, 480, 220028003, 9, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 改变指定group组220028017中， configid为111的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220028017, 111, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220028017 ；指定config：111；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220028017, 111, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_34(context, evt)
	-- 改变指定group组220028017中， configid为111的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220028017, 111, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220028017, 111, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220028003, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_35(context, evt)
	-- 改变指定group组220028003中， configid为3011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220028003, 3011, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-56，-55，-186），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-56, y=-55, z=-186}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 改变指定group组220028003中， configid为3010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220028003, 3010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220028003中， configid为3010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220028003, 3010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end