-- 基础信息
local base_info = {
	group_id = 220016007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 20011301, pos = { x = 342.627, y = -28.859, z = 424.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7, monster_id = 20011201, pos = { x = 348.335, y = -29.103, z = 428.547 }, rot = { x = 0.000, y = 341.880, z = 0.000 }, level = 1 },
	{ config_id = 8, monster_id = 20011201, pos = { x = 338.243, y = -28.983, z = 427.766 }, rot = { x = 0.000, y = 24.602, z = 0.000 }, level = 1 },
	{ config_id = 11, monster_id = 20011201, pos = { x = 344.907, y = -29.049, z = 426.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12, monster_id = 20011201, pos = { x = 342.796, y = -28.984, z = 426.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 13, monster_id = 20011201, pos = { x = 336.366, y = -28.984, z = 427.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
	{ config_id = 1000002, name = "CHALLENGE_SUCCESS_2", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2" },
	{ config_id = 1000003, name = "CHALLENGE_FAIL_3", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3" },
	{ config_id = 1007001, name = "ANY_MONSTER_LIVE_7001", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7001", action = "action_EVENT_ANY_MONSTER_LIVE_7001" }
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
		monsters = { 6, 7, 8, 11, 12, 13 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_2", "CHALLENGE_FAIL_3", "ANY_MONSTER_LIVE_7001" },
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
function action_EVENT_CHALLENGE_SUCCESS_2(context, evt)
	-- 改变指定group组220016002中， configid为6的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 6, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（343，-25，404），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=343, y=-25, z=404}
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
function action_EVENT_CHALLENGE_FAIL_3(context, evt)
	-- 改变指定group组220016002中， configid为20的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 20, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220016002中， configid为21的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 21, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220016007, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组220016002中， configid为43的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220016002, 43, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220016002, 43, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7001(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7001(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为186的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 186, 60, 220016007, 6, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end