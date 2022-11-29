-- 基础信息
local base_info = {
	group_id = 220019008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 20010501, pos = { x = 33.844, y = 13.017, z = 134.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8002, monster_id = 20010501, pos = { x = 34.921, y = 13.017, z = 133.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8003, monster_id = 20010601, pos = { x = 34.709, y = 13.016, z = 131.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8004, monster_id = 20010801, pos = { x = 27.583, y = 13.016, z = 134.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8005, monster_id = 20010801, pos = { x = 29.301, y = 13.017, z = 134.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8006, monster_id = 20010901, pos = { x = 28.976, y = 13.016, z = 133.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8007, gadget_id = 70350004, pos = { x = 31.619, y = 13.368, z = 127.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8008, gadget_id = 70360002, pos = { x = 24.223, y = 13.410, z = 137.082 }, rot = { x = 0.000, y = 357.131, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8009, gadget_id = 70220013, pos = { x = 44.382, y = 26.606, z = 166.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8010, gadget_id = 70220013, pos = { x = 42.240, y = 26.606, z = 167.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8011, gadget_id = 70220013, pos = { x = 23.613, y = 13.516, z = 129.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8012, gadget_id = 70220013, pos = { x = 18.241, y = 13.516, z = 129.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8013, gadget_id = 70220014, pos = { x = 20.867, y = 13.516, z = 129.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8014, gadget_id = 70220014, pos = { x = 19.818, y = 13.517, z = 130.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8015, gadget_id = 70220014, pos = { x = 26.402, y = 13.027, z = 130.282 }, rot = { x = 349.147, y = 355.772, z = 21.436 }, level = 1 },
	{ config_id = 8016, gadget_id = 70220014, pos = { x = 37.558, y = 13.016, z = 135.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8017, gadget_id = 70220014, pos = { x = 37.277, y = 13.017, z = 136.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8018, gadget_id = 70220013, pos = { x = 27.615, y = 13.016, z = 101.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8019, gadget_id = 70220013, pos = { x = 35.973, y = 13.016, z = 114.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8020, gadget_id = 70220013, pos = { x = 35.914, y = 13.017, z = 112.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8021, gadget_id = 70220013, pos = { x = 43.747, y = 13.016, z = 83.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8022, gadget_id = 70220013, pos = { x = 43.758, y = 13.016, z = 81.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8023, gadget_id = 70220013, pos = { x = 41.995, y = 13.017, z = 79.934 }, rot = { x = 0.000, y = 40.089, z = 0.000 }, level = 1 },
	{ config_id = 8024, gadget_id = 70220013, pos = { x = 24.376, y = 13.016, z = 60.148 }, rot = { x = 0.000, y = 40.089, z = 0.000 }, level = 1 },
	{ config_id = 8025, gadget_id = 70220013, pos = { x = 22.844, y = 13.016, z = 61.347 }, rot = { x = 0.000, y = 40.089, z = 0.000 }, level = 1 },
	{ config_id = 8026, gadget_id = 70220013, pos = { x = 1.993, y = 12.981, z = 28.785 }, rot = { x = 0.000, y = 35.317, z = 0.000 }, level = 1 },
	{ config_id = 8027, gadget_id = 70220013, pos = { x = -0.941, y = 12.922, z = 30.122 }, rot = { x = 0.000, y = 347.566, z = 0.000 }, level = 1 },
	{ config_id = 8028, gadget_id = 70220013, pos = { x = 4.962, y = 13.017, z = 28.128 }, rot = { x = 0.000, y = 4.341, z = 0.000 }, level = 1 },
	{ config_id = 8029, gadget_id = 70220013, pos = { x = 24.078, y = 13.016, z = 29.999 }, rot = { x = 0.000, y = 40.089, z = 0.000 }, level = 1 },
	{ config_id = 8030, gadget_id = 70220013, pos = { x = 20.288, y = 12.978, z = 28.827 }, rot = { x = 0.000, y = 40.089, z = 0.000 }, level = 1 },
	{ config_id = 8031, gadget_id = 70220013, pos = { x = -0.598, y = 13.200, z = 59.841 }, rot = { x = 0.000, y = 40.089, z = 0.000 }, level = 1 },
	{ config_id = 8032, gadget_id = 70220014, pos = { x = 0.382, y = 13.200, z = 62.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8033, gadget_id = 70220014, pos = { x = 2.012, y = 13.200, z = 62.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8034, gadget_id = 70220014, pos = { x = 21.595, y = 12.995, z = 29.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8035, gadget_id = 70220014, pos = { x = 18.883, y = 13.016, z = 69.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8036, gadget_id = 70220014, pos = { x = 20.313, y = 13.016, z = 69.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8037, gadget_id = 70220014, pos = { x = 24.099, y = 13.342, z = 82.479 }, rot = { x = 90.000, y = 294.476, z = 0.000 }, level = 1 },
	{ config_id = 8038, gadget_id = 70220014, pos = { x = 16.269, y = 13.273, z = 79.143 }, rot = { x = 270.000, y = 54.126, z = 0.000 }, level = 1 },
	{ config_id = 8039, gadget_id = 70220013, pos = { x = 3.362, y = 13.212, z = 94.235 }, rot = { x = 0.000, y = 40.089, z = 0.000 }, level = 1 },
	{ config_id = 8040, gadget_id = 70220013, pos = { x = 3.404, y = 13.212, z = 97.254 }, rot = { x = 0.000, y = 2.107, z = 0.000 }, level = 1 },
	{ config_id = 8041, gadget_id = 70220013, pos = { x = 21.440, y = 13.212, z = 97.571 }, rot = { x = 0.000, y = 94.200, z = 0.000 }, level = 1 },
	{ config_id = 8042, gadget_id = 70220013, pos = { x = 21.475, y = 13.212, z = 94.565 }, rot = { x = 0.000, y = 356.074, z = 0.000 }, level = 1 },
	{ config_id = 8043, gadget_id = 70220014, pos = { x = 12.056, y = 13.245, z = 103.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8044, gadget_id = 70220014, pos = { x = 14.486, y = 13.245, z = 103.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8045, gadget_id = 70220014, pos = { x = 12.440, y = 13.501, z = 102.723 }, rot = { x = 358.967, y = 28.891, z = 259.932 }, level = 1 },
	{ config_id = 8046, gadget_id = 70900201, pos = { x = 24.165, y = 14.710, z = 136.927 }, rot = { x = 0.000, y = 180.736, z = 0.000 }, level = 1 },
	{ config_id = 8047, gadget_id = 70900201, pos = { x = 31.527, y = 14.603, z = 86.170 }, rot = { x = 0.000, y = 180.736, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 29, shape = RegionShape.SPHERE, radius = 7, pos = { x = 24.321, y = 13.016, z = 135.556 } },
	{ config_id = 72, shape = RegionShape.CUBIC, size = { x = 20.000, y = 25.000, z = 20.000 }, pos = { x = 36.397, y = 25.353, z = 151.747 } }
}

-- 触发器
triggers = {
	{ config_id = 1000026, name = "VARIABLE_CHANGE_26", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_26", action = "action_EVENT_VARIABLE_CHANGE_26" },
	{ config_id = 1000027, name = "SELECT_OPTION_27", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_27", action = "action_EVENT_SELECT_OPTION_27", forbid_guest = false },
	{ config_id = 1000029, name = "ENTER_REGION_29", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_29", action = "action_EVENT_ENTER_REGION_29", forbid_guest = false },
	{ config_id = 1000030, name = "ANY_MONSTER_DIE_30", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30", action = "action_EVENT_ANY_MONSTER_DIE_30" },
	{ config_id = 1000031, name = "ANY_MONSTER_DIE_31", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31", action = "action_EVENT_ANY_MONSTER_DIE_31" },
	{ config_id = 1000032, name = "ANY_MONSTER_DIE_32", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32", action = "action_EVENT_ANY_MONSTER_DIE_32" },
	{ config_id = 1000033, name = "ANY_MONSTER_DIE_33", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33", action = "action_EVENT_ANY_MONSTER_DIE_33" },
	{ config_id = 1000034, name = "VARIABLE_CHANGE_34", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_34", action = "action_EVENT_VARIABLE_CHANGE_34" },
	{ config_id = 1000035, name = "VARIABLE_CHANGE_35", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_35", action = "action_EVENT_VARIABLE_CHANGE_35" },
	{ config_id = 1000070, name = "ANY_MONSTER_DIE_70", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70", action = "action_EVENT_ANY_MONSTER_DIE_70" },
	{ config_id = 1000071, name = "ANY_MONSTER_DIE_71", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71", action = "action_EVENT_ANY_MONSTER_DIE_71" },
	{ config_id = 1000072, name = "ENTER_REGION_72", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_72", action = "action_EVENT_ENTER_REGION_72" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Badass_Lighting", value = 0, no_refresh = false },
	{ config_id = 2, name = "Badass_Ice", value = 0, no_refresh = false },
	{ config_id = 3, name = "Switch", value = 0, no_refresh = false }
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
	rand_suite = true
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
		gadgets = { 8007, 8008, 8009, 8010, 8011, 8012, 8013, 8014, 8015, 8016, 8017, 8018, 8019, 8020, 8021, 8022, 8023, 8024, 8025, 8026, 8027, 8028, 8029, 8030, 8031, 8032, 8033, 8034, 8035, 8036, 8037, 8038, 8039, 8040, 8041, 8042, 8043, 8044, 8045 },
		regions = { 29, 72 },
		triggers = { "VARIABLE_CHANGE_26", "SELECT_OPTION_27", "ENTER_REGION_29", "ANY_MONSTER_DIE_30", "ANY_MONSTER_DIE_31", "ANY_MONSTER_DIE_32", "ANY_MONSTER_DIE_33", "VARIABLE_CHANGE_34", "VARIABLE_CHANGE_35", "ANY_MONSTER_DIE_70", "ANY_MONSTER_DIE_71", "ENTER_REGION_72" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_26(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Switch"为2
	if ScriptLib.GetGroupVariableValue(context, "Switch") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_26(context, evt)
	-- 将configid为 8008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220019008, 8008, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_27(context, evt)
	-- 判断是gadgetid 8008 option_id 1
	if 8008 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_27(context, evt)
	-- 触发镜头注目，注目位置为坐标（31，17，128），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=31, y=17, z=128}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 8007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220019008 ；指定config：8008；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220019008, 8008, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 8008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为8047的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 8047 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_29(context, evt)
	if evt.param1 ~= 29 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_29(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220019008, monsters = {}, gadgets = {8046} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 改变指定group组220019008中， configid为8008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220019008, 8008, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30(context, evt)
	-- 针对当前group内变量名为 "Badass_Lighting" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_31(context, evt)
	if 8002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31(context, evt)
	-- 针对当前group内变量名为 "Badass_Lighting" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Lighting", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32(context, evt)
	if 8004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32(context, evt)
	-- 针对当前group内变量名为 "Badass_Ice" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Ice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33(context, evt)
	if 8005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33(context, evt)
	-- 针对当前group内变量名为 "Badass_Ice" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Badass_Ice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_34(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Badass_Lighting"为2
	if ScriptLib.GetGroupVariableValue(context, "Badass_Lighting") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_34(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8003, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_35(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Badass_Ice"为2
	if ScriptLib.GetGroupVariableValue(context, "Badass_Ice") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_35(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 8006, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70(context, evt)
	if 8003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71(context, evt)
	if 8006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71(context, evt)
	-- 针对当前group内变量名为 "Switch" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Switch", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_72(context, evt)
	if evt.param1 ~= 72 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_72(context, evt)
	-- 创建id为8046的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 8046 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end