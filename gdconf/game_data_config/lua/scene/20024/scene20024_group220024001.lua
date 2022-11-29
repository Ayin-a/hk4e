-- 基础信息
local base_info = {
	group_id = 220024001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010201, pos = { x = 114.375, y = 39.516, z = 114.993 }, rot = { x = 0.000, y = 266.944, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1002, monster_id = 21010501, pos = { x = 101.643, y = 39.509, z = 128.942 }, rot = { x = 0.000, y = 275.226, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1003, monster_id = 21010901, pos = { x = 99.948, y = 39.937, z = 116.920 }, rot = { x = 0.000, y = 274.994, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1004, monster_id = 21011001, pos = { x = 138.055, y = 39.517, z = 128.678 }, rot = { x = 0.000, y = 268.194, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1005, monster_id = 21010901, pos = { x = 138.002, y = 39.516, z = 121.380 }, rot = { x = 0.000, y = 272.533, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 1006, monster_id = 21010201, pos = { x = 158.545, y = 39.517, z = 121.037 }, rot = { x = 0.000, y = 275.676, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1007, monster_id = 21010301, pos = { x = 117.076, y = 39.516, z = 117.304 }, rot = { x = 0.000, y = 169.378, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 1008, monster_id = 21010301, pos = { x = 117.169, y = 39.516, z = 113.867 }, rot = { x = 0.000, y = 355.394, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 1009, monster_id = 21010701, pos = { x = 118.641, y = 39.516, z = 115.599 }, rot = { x = 0.000, y = 262.960, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1010, monster_id = 21020101, pos = { x = 168.832, y = 42.000, z = 121.073 }, rot = { x = 0.000, y = 269.894, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1011, monster_id = 21010301, pos = { x = 159.274, y = 39.516, z = 124.301 }, rot = { x = 0.000, y = 268.673, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 1012, monster_id = 21010301, pos = { x = 159.155, y = 39.517, z = 117.458 }, rot = { x = 0.000, y = 273.763, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1013, gadget_id = 70350003, pos = { x = 55.002, y = 42.017, z = 120.960 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70350002, pos = { x = 173.992, y = 42.016, z = 120.944 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70360002, pos = { x = 158.805, y = 39.517, z = 114.599 }, rot = { x = 0.000, y = 303.674, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" },
	{ config_id = 1000002, name = "SELECT_OPTION_2", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2", action = "action_EVENT_SELECT_OPTION_2", forbid_guest = false }
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
		monsters = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012 },
		gadgets = { 1013, 1014, 1015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1", "SELECT_OPTION_2" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 改变指定group组220024001中， configid为1015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024001, 1015, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220024001, 1015, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（159，40，115），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=159, y=40, z=115}
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
function condition_EVENT_SELECT_OPTION_2(context, evt)
	-- 判断是gadgetid 1015 option_id 1
	if 1015 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2(context, evt)
	-- 改变指定group组220024001中， configid为1015的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024001, 1015, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 220024001 ；指定config：1015；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220024001, 1015, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组220024001中， configid为1014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220024001, 1014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（174，47，121），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=174, y=47, z=121}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end