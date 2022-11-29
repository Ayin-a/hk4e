-- 基础信息
local base_info = {
	group_id = 220011006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9, monster_id = 20011201, pos = { x = 409.722, y = -22.182, z = 67.230 }, rot = { x = 0.000, y = 136.765, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 25, monster_id = 20011201, pos = { x = 409.713, y = -21.990, z = 60.594 }, rot = { x = 0.000, y = 36.531, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 26, monster_id = 20011201, pos = { x = 408.620, y = -22.084, z = 61.386 }, rot = { x = 0.000, y = 76.905, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 28, monster_id = 20011201, pos = { x = 408.790, y = -22.050, z = 65.882 }, rot = { x = 0.000, y = 109.366, z = 0.000 }, level = 1, disableWander = true }
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
	{ config_id = 1000008, name = "CHALLENGE_SUCCESS_8", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8" },
	{ config_id = 1000061, name = "CHALLENGE_FAIL_61", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_61" },
	{ config_id = 1000065, name = "ANY_MONSTER_LIVE_65", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_65", action = "action_EVENT_ANY_MONSTER_LIVE_65" }
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
		monsters = { 9, 25, 26, 28 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_8", "CHALLENGE_FAIL_61", "ANY_MONSTER_LIVE_65" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220011007, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220011007, 4)
	
	-- 改变指定group组220011001中， configid为1006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220011001中， configid为1022的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1022, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220011001中， configid为1023的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1023, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（406，-17，81），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=406, y=-17, z=81}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 改变指定group组220011001中， configid为1048的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1048, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_61(context, evt)
	-- 改变指定group组220011001中， configid为1047的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220011001, 1047, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220011006, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_65(context, evt)
	if 9 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_65(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为137的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 137, 20, 220011006, 4, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end