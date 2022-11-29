-- 基础信息
local base_info = {
	group_id = 240051005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5005, monster_id = 26090801, pos = { x = 436.066, y = 102.069, z = 454.665 }, rot = { x = 0.000, y = 170.300, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 5006, monster_id = 26090801, pos = { x = 437.680, y = 103.018, z = 450.895 }, rot = { x = 0.000, y = 251.897, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 5007, monster_id = 26090401, pos = { x = 439.649, y = 102.578, z = 454.343 }, rot = { x = 0.000, y = 230.571, z = 0.000 }, level = 1, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70290508, pos = { x = 429.056, y = 103.270, z = 449.025 }, rot = { x = 0.000, y = 77.910, z = 0.000 }, level = 1 },
	{ config_id = 5002, gadget_id = 70290484, pos = { x = 429.056, y = 103.342, z = 449.025 }, rot = { x = 0.000, y = 77.910, z = 0.000 }, level = 1 },
	{ config_id = 5003, gadget_id = 70360001, pos = { x = 429.056, y = 103.354, z = 449.025 }, rot = { x = 0.000, y = 77.910, z = 0.000 }, level = 1, worktop_config = { init_options = { 220 } } },
	{ config_id = 5009, gadget_id = 70950047, pos = { x = 443.731, y = 103.214, z = 446.949 }, rot = { x = 0.000, y = 320.447, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005004, name = "SELECT_OPTION_5004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5004", action = "action_EVENT_SELECT_OPTION_5004" },
	{ config_id = 1005008, name = "ANY_MONSTER_DIE_5008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5008", action = "action_EVENT_ANY_MONSTER_DIE_5008" }
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
		monsters = { 5005, 5006, 5007 },
		gadgets = { 5001, 5002, 5009 },
		regions = { },
		triggers = { "SELECT_OPTION_5004", "ANY_MONSTER_DIE_5008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5003 },
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
function condition_EVENT_SELECT_OPTION_5004(context, evt)
	-- 判断是gadgetid 5003 option_id 220
	if 5003 ~= evt.param1 then
		return false	
	end
	
	if 220 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5004(context, evt)
	-- 删除指定group： 240051005 ；指定config：5003；物件身上指定option：220；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240051005, 5003, 220) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 5001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5008(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=429.0559, y=103.2702, z=449.0248}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=429.0559, y=103.2702, z=449.0248}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240051005, 2)
	
	return 0
end