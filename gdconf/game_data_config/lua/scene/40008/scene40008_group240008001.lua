-- 基础信息
local base_info = {
	group_id = 240008001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011201, pos = { x = 340.772, y = -28.965, z = 431.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, monster_id = 20011201, pos = { x = 345.777, y = -28.965, z = 431.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, monster_id = 20011301, pos = { x = 343.379, y = -28.964, z = 434.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, monster_id = 21010401, pos = { x = 345.466, y = -28.895, z = 425.780 }, rot = { x = 0.000, y = 271.122, z = 0.000 }, level = 1, pose_id = 402 },
	{ config_id = 1005, monster_id = 21010301, pos = { x = 340.724, y = -28.965, z = 427.111 }, rot = { x = 0.000, y = 27.259, z = 0.000 }, level = 1, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1006, gadget_id = 70360002, pos = { x = 343.311, y = -28.891, z = 430.851 }, rot = { x = 0.000, y = 0.491, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70220010, pos = { x = 348.438, y = -28.800, z = 425.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70220010, pos = { x = 338.304, y = -28.800, z = 425.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70350003, pos = { x = 353.160, y = -27.960, z = 404.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70350003, pos = { x = 343.160, y = -27.957, z = 404.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70350003, pos = { x = 333.168, y = -27.924, z = 404.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70220013, pos = { x = 349.526, y = -27.834, z = 470.636 }, rot = { x = 0.000, y = 325.701, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70220013, pos = { x = 348.075, y = -27.833, z = 468.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70220014, pos = { x = 349.866, y = -27.834, z = 467.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70220014, pos = { x = 350.495, y = -27.834, z = 469.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70220025, pos = { x = 340.759, y = -28.926, z = 427.163 }, rot = { x = 271.249, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70310004, pos = { x = 343.414, y = -28.895, z = 425.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1023, gadget_id = 70220013, pos = { x = 353.482, y = -28.983, z = 441.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70220013, pos = { x = 354.716, y = -28.983, z = 439.235 }, rot = { x = 0.000, y = 324.432, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70220014, pos = { x = 352.623, y = -28.984, z = 439.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70220014, pos = { x = 351.702, y = -28.984, z = 441.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70220016, pos = { x = 356.219, y = -28.126, z = 437.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70220025, pos = { x = 353.599, y = -28.973, z = 439.632 }, rot = { x = 270.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70220013, pos = { x = 331.297, y = -28.990, z = 421.029 }, rot = { x = 0.000, y = 40.140, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70220014, pos = { x = 330.156, y = -28.983, z = 423.031 }, rot = { x = 0.000, y = 22.674, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70211011, pos = { x = 343.441, y = -28.984, z = 420.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1032, gadget_id = 70211001, pos = { x = 356.099, y = -28.692, z = 440.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 1007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 4.000 }, pos = { x = 343.480, y = -27.788, z = 444.332 } }
}

-- 触发器
triggers = {
	{ config_id = 1001007, name = "ENTER_REGION_1007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1007", action = "action_EVENT_ENTER_REGION_1007" },
	{ config_id = 1001008, name = "SELECT_OPTION_1008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1008", action = "action_EVENT_SELECT_OPTION_1008" },
	{ config_id = 1001014, name = "ANY_MONSTER_DIE_1014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1014", action = "action_EVENT_ANY_MONSTER_DIE_1014" },
	{ config_id = 1001015, name = "SELECT_OPTION_1015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1015", action = "action_EVENT_SELECT_OPTION_1015" },
	{ config_id = 1001016, name = "SELECT_OPTION_1016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1016", action = "action_EVENT_SELECT_OPTION_1016" }
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
		monsters = { 1004, 1005 },
		gadgets = { 1006, 1009, 1010, 1011, 1012, 1013, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1032 },
		regions = { 1007 },
		triggers = { "ENTER_REGION_1007", "SELECT_OPTION_1008", "ANY_MONSTER_DIE_1014", "SELECT_OPTION_1015", "SELECT_OPTION_1016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 1001, 1002, 1003 },
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
function condition_EVENT_ENTER_REGION_1007(context, evt)
	if evt.param1 ~= 1007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1007(context, evt)
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008001, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1008(context, evt)
	-- 判断是gadgetid 1006 option_id 178
	if 1006 ~= evt.param1 then
		return false	
	end
	
	if 178 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1008(context, evt)
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008002, 2)
	
	-- 删除指定group： 240008001 ；指定config：1006；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008001, 1006, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008001 ；指定config：1006；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008001, 1006, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008001 ；指定config：1006；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008001, 1006, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（353，-27，404），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=353, y=-27, z=404}
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
function condition_EVENT_ANY_MONSTER_DIE_1014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240008001, 1006, {178,179,180}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将configid为 1006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1015(context, evt)
	-- 判断是gadgetid 1006 option_id 179
	if 1006 ~= evt.param1 then
		return false	
	end
	
	if 179 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1015(context, evt)
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008002, 3)
	
	-- 删除指定group： 240008001 ；指定config：1006；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008001, 1006, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008001 ；指定config：1006；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008001, 1006, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008001 ；指定config：1006；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008001, 1006, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（343，-28，404），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=343, y=-28, z=404}
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
function condition_EVENT_SELECT_OPTION_1016(context, evt)
	-- 判断是gadgetid 1006 option_id 180
	if 1006 ~= evt.param1 then
		return false	
	end
	
	if 180 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1016(context, evt)
	-- 将configid为 1006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240008002, 4)
	
	-- 删除指定group： 240008001 ；指定config：1006；物件身上指定option：178；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008001, 1006, 178) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008001 ；指定config：1006；物件身上指定option：179；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008001, 1006, 179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 240008001 ；指定config：1006；物件身上指定option：180；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240008001, 1006, 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（333，-28，404），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=333, y=-28, z=404}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end