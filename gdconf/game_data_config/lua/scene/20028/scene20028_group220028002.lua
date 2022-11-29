-- 基础信息
local base_info = {
	group_id = 220028002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 21010201, pos = { x = -32.396, y = -32.312, z = 71.972 }, rot = { x = 0.000, y = 231.378, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 3, monster_id = 24010101, pos = { x = -61.277, y = -32.312, z = 72.983 }, rot = { x = 0.000, y = 92.700, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8, monster_id = 21020101, pos = { x = -38.465, y = -32.312, z = 61.751 }, rot = { x = 0.000, y = 69.048, z = 0.000 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 18, monster_id = 21010301, pos = { x = -36.374, y = -32.312, z = 68.093 }, rot = { x = 0.000, y = 137.812, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 25, gadget_id = 70350009, pos = { x = -45.698, y = -32.537, z = 33.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54, gadget_id = 70220014, pos = { x = -33.644, y = -32.357, z = 62.412 }, rot = { x = 0.000, y = 323.295, z = 0.000 }, level = 1 },
	{ config_id = 55, gadget_id = 70220014, pos = { x = -32.869, y = -32.372, z = 64.521 }, rot = { x = 0.000, y = 338.859, z = 0.000 }, level = 1 },
	{ config_id = 88, gadget_id = 70220013, pos = { x = -55.390, y = -32.312, z = 77.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 89, gadget_id = 70220013, pos = { x = -56.914, y = -32.312, z = 79.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 90, gadget_id = 70220013, pos = { x = -59.403, y = -32.312, z = 79.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 91, gadget_id = 70220013, pos = { x = -62.431, y = -32.312, z = 79.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2001, gadget_id = 70220013, pos = { x = -31.162, y = -32.312, z = 62.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70220013, pos = { x = -32.559, y = -32.312, z = 59.985 }, rot = { x = 0.000, y = 331.920, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70220014, pos = { x = -29.401, y = -32.312, z = 63.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70220014, pos = { x = -29.905, y = -31.868, z = 64.147 }, rot = { x = 293.288, y = 7.429, z = 102.930 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000004, name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" },
	{ config_id = 1000013, name = "ANY_MONSTER_DIE_13", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13", action = "action_EVENT_ANY_MONSTER_DIE_13" }
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
		monsters = { 1, 3, 8, 18 },
		gadgets = { 25, 54, 55, 88, 89, 90, 91, 2003, 2004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220028002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 将configid为 25 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-45，-20，33），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-45, y=-20, z=33}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13(context, evt)
	if 8 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220028012, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end