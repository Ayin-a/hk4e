-- 基础信息
local base_info = {
	group_id = 220011001
}

-- Trigger变量
local defs = {
	gadget_id_1 = 1047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20011201, pos = { x = 448.686, y = -24.413, z = 68.376 }, rot = { x = 0.000, y = 92.335, z = 0.000 }, level = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70211101, pos = { x = 507.446, y = -37.485, z = 83.806 }, rot = { x = 0.000, y = 182.260, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 1003, gadget_id = 70350002, pos = { x = 469.561, y = -20.423, z = 67.499 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70360002, pos = { x = 475.525, y = -20.035, z = 63.895 }, rot = { x = 0.000, y = 90.056, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70211001, pos = { x = 428.371, y = -22.064, z = 53.570 }, rot = { x = 0.000, y = 321.609, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 1006, gadget_id = 70350002, pos = { x = 406.374, y = -22.161, z = 81.408 }, rot = { x = 0.000, y = 180.210, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350002, pos = { x = 423.516, y = -22.097, z = 71.100 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70220013, pos = { x = 490.493, y = -20.051, z = 78.232 }, rot = { x = 0.000, y = 41.505, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70220013, pos = { x = 491.485, y = -20.265, z = 75.821 }, rot = { x = 0.000, y = 272.591, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70211101, pos = { x = 495.062, y = -20.033, z = 77.011 }, rot = { x = 0.000, y = 75.558, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 1011, gadget_id = 70220014, pos = { x = 489.414, y = -20.334, z = 79.560 }, rot = { x = 0.000, y = 283.946, z = 0.000 }, level = 1 },
	{ config_id = 1012, gadget_id = 70220013, pos = { x = 502.881, y = -37.317, z = 81.759 }, rot = { x = 0.000, y = 351.358, z = 0.000 }, level = 1 },
	{ config_id = 1013, gadget_id = 70220013, pos = { x = 505.355, y = -37.535, z = 82.002 }, rot = { x = 0.000, y = 314.506, z = 0.000 }, level = 1 },
	{ config_id = 1014, gadget_id = 70220013, pos = { x = 504.487, y = -37.735, z = 80.146 }, rot = { x = 0.000, y = 290.533, z = 0.000 }, level = 1 },
	{ config_id = 1015, gadget_id = 70310002, pos = { x = 494.202, y = -26.998, z = 70.886 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1016, gadget_id = 70310002, pos = { x = 494.425, y = -26.764, z = 64.127 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1017, gadget_id = 70310002, pos = { x = 495.341, y = -16.234, z = 72.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1018, gadget_id = 70310002, pos = { x = 494.991, y = -16.363, z = 63.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1019, gadget_id = 70310002, pos = { x = 450.161, y = -19.643, z = 64.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1020, gadget_id = 70310001, pos = { x = 425.898, y = -22.324, z = 65.538 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1021, gadget_id = 70310001, pos = { x = 425.962, y = -22.151, z = 76.792 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1022, gadget_id = 70310001, pos = { x = 400.746, y = -20.073, z = 78.909 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70310001, pos = { x = 411.845, y = -20.076, z = 78.945 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70310002, pos = { x = 472.137, y = -15.665, z = 61.579 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1025, gadget_id = 70310002, pos = { x = 472.140, y = -15.580, z = 73.325 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1026, gadget_id = 70310002, pos = { x = 500.972, y = -31.446, z = 84.375 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1027, gadget_id = 70310001, pos = { x = 420.841, y = -22.084, z = 58.142 }, rot = { x = 0.000, y = 98.952, z = 0.000 }, level = 1 },
	{ config_id = 1028, gadget_id = 70310001, pos = { x = 544.595, y = -42.056, z = 46.233 }, rot = { x = 0.000, y = 223.245, z = 0.000 }, level = 1 },
	{ config_id = 1029, gadget_id = 70310001, pos = { x = 555.298, y = -42.020, z = 46.185 }, rot = { x = 0.000, y = 183.036, z = 0.000 }, level = 1 },
	{ config_id = 1030, gadget_id = 70310001, pos = { x = 544.739, y = -43.356, z = 40.212 }, rot = { x = 0.000, y = 63.973, z = 0.000 }, level = 1 },
	{ config_id = 1031, gadget_id = 70310001, pos = { x = 555.476, y = -43.385, z = 40.564 }, rot = { x = 0.000, y = 83.172, z = 0.000 }, level = 1 },
	{ config_id = 1032, gadget_id = 70310001, pos = { x = 555.558, y = -40.544, z = 51.271 }, rot = { x = 0.000, y = 76.840, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70310001, pos = { x = 544.648, y = -40.557, z = 51.131 }, rot = { x = 0.000, y = 265.978, z = 0.000 }, level = 1 },
	{ config_id = 1034, gadget_id = 70310001, pos = { x = 555.398, y = -39.273, z = 55.224 }, rot = { x = 0.000, y = 209.609, z = 0.000 }, level = 1 },
	{ config_id = 1035, gadget_id = 70310001, pos = { x = 544.782, y = -39.282, z = 55.270 }, rot = { x = 0.000, y = 97.228, z = 0.000 }, level = 1 },
	{ config_id = 1036, gadget_id = 70310001, pos = { x = 555.310, y = -38.151, z = 71.121 }, rot = { x = 0.000, y = 348.422, z = 0.000 }, level = 1 },
	{ config_id = 1037, gadget_id = 70310001, pos = { x = 545.100, y = -38.135, z = 71.161 }, rot = { x = 0.000, y = 239.016, z = 0.000 }, level = 1 },
	{ config_id = 1038, gadget_id = 70310001, pos = { x = 555.394, y = -38.213, z = 81.758 }, rot = { x = 0.000, y = 21.280, z = 0.000 }, level = 1 },
	{ config_id = 1039, gadget_id = 70310001, pos = { x = 545.119, y = -38.184, z = 81.482 }, rot = { x = 0.000, y = 100.803, z = 0.000 }, level = 1 },
	{ config_id = 1040, gadget_id = 70900202, pos = { x = 532.301, y = 2.338, z = 219.869 }, rot = { x = 0.000, y = 331.636, z = 0.000 }, level = 1 },
	{ config_id = 1041, gadget_id = 70900202, pos = { x = 496.332, y = -34.534, z = 67.662 }, rot = { x = 0.000, y = 274.978, z = 0.000 }, level = 1 },
	{ config_id = 1042, gadget_id = 70900202, pos = { x = 475.449, y = -18.451, z = 63.887 }, rot = { x = 0.000, y = 162.878, z = 0.000 }, level = 1 },
	{ config_id = 1047, gadget_id = 70900008, pos = { x = 410.549, y = -22.101, z = 63.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1048, gadget_id = 70211002, pos = { x = 400.092, y = -22.083, z = 65.379 }, rot = { x = 0.000, y = 91.011, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 1049, gadget_id = 70900201, pos = { x = 533.887, y = -1.984, z = 248.031 }, rot = { x = 0.000, y = 120.050, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 13, shape = RegionShape.SPHERE, radius = 9, pos = { x = 549.954, y = -38.121, z = 75.771 } },
	{ config_id = 14, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 25.000 }, pos = { x = 512.009, y = -35.200, z = 75.080 } },
	{ config_id = 16, shape = RegionShape.CUBIC, size = { x = 6.000, y = 5.000, z = 12.000 }, pos = { x = 459.749, y = -22.562, z = 69.188 } },
	{ config_id = 17, shape = RegionShape.CUBIC, size = { x = 6.000, y = 8.000, z = 3.800 }, pos = { x = 430.517, y = -22.137, z = 63.496 } },
	{ config_id = 36, shape = RegionShape.CUBIC, size = { x = 8.000, y = 5.000, z = 8.000 }, pos = { x = 496.588, y = -27.480, z = 67.701 } },
	{ config_id = 37, shape = RegionShape.CUBIC, size = { x = 6.000, y = 3.000, z = 9.000 }, pos = { x = 496.978, y = -16.889, z = 67.723 } },
	{ config_id = 44, shape = RegionShape.CUBIC, size = { x = 15.000, y = 3.000, z = 3.000 }, pos = { x = 550.039, y = -42.195, z = 43.212 } },
	{ config_id = 45, shape = RegionShape.CUBIC, size = { x = 15.000, y = 5.000, z = 3.000 }, pos = { x = 549.723, y = -41.104, z = 48.071 } },
	{ config_id = 46, shape = RegionShape.SPHERE, radius = 5, pos = { x = 549.864, y = -38.150, z = 62.537 } }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "GADGET_CREATE_1", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1", action = "action_EVENT_GADGET_CREATE_1" },
	{ config_id = 1000004, name = "SELECT_OPTION_4", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4", action = "action_EVENT_SELECT_OPTION_4", forbid_guest = false },
	{ config_id = 1000007, name = "ANY_MONSTER_DIE_7", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7", action = "action_EVENT_ANY_MONSTER_DIE_7" },
	{ config_id = 1000013, name = "ENTER_REGION_13", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13", action = "action_EVENT_ENTER_REGION_13", forbid_guest = false },
	{ config_id = 1000014, name = "ENTER_REGION_14", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14", action = "action_EVENT_ENTER_REGION_14", forbid_guest = false },
	{ config_id = 1000016, name = "ENTER_REGION_16", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_16", action = "action_EVENT_ENTER_REGION_16", forbid_guest = false },
	{ config_id = 1000017, name = "ENTER_REGION_17", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17", action = "action_EVENT_ENTER_REGION_17", forbid_guest = false },
	{ config_id = 1000036, name = "ENTER_REGION_36", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36", action = "action_EVENT_ENTER_REGION_36", forbid_guest = false },
	{ config_id = 1000037, name = "ENTER_REGION_37", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37", action = "action_EVENT_ENTER_REGION_37", forbid_guest = false },
	{ config_id = 1000039, name = "GADGET_CREATE_39", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_39", action = "action_EVENT_GADGET_CREATE_39" },
	{ config_id = 1000044, name = "ENTER_REGION_44", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_44", action = "action_EVENT_ENTER_REGION_44", forbid_guest = false },
	{ config_id = 1000045, name = "ENTER_REGION_45", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_45", action = "action_EVENT_ENTER_REGION_45", forbid_guest = false },
	{ config_id = 1000046, name = "ENTER_REGION_46", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_46", action = "action_EVENT_ENTER_REGION_46", forbid_guest = false },
	{ config_id = 1000060, name = "GADGET_STATE_CHANGE_60", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_60", action = "action_EVENT_GADGET_STATE_CHANGE_60", trigger_count = 0 },
	{ config_id = 1000064, name = "TIMER_EVENT_64", event = EventType.EVENT_TIMER_EVENT, source = "begin", condition = "", action = "action_EVENT_TIMER_EVENT_64", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { 1001 },
		gadgets = { 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1047, 1048 },
		regions = { 13, 14, 16, 17, 36, 37, 44, 45, 46 },
		triggers = { "GADGET_CREATE_1", "SELECT_OPTION_4", "ANY_MONSTER_DIE_7", "ENTER_REGION_13", "ENTER_REGION_14", "ENTER_REGION_16", "ENTER_REGION_17", "ENTER_REGION_36", "ENTER_REGION_37", "GADGET_CREATE_39", "ENTER_REGION_44", "ENTER_REGION_45", "ENTER_REGION_46", "GADGET_STATE_CHANGE_60", "TIMER_EVENT_64" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_1(context, evt)
	-- 判断是gadgetid 1004
	if 1004 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4(context, evt)
	-- 判断是gadgetid 1004 option_id 1
	if 1004 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220011007, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220011007, 3)
	
	-- 将configid为 1003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 220011001 ；指定config：1004；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220011001, 1004, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011001, monsters = {}, gadgets = {1042} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7(context, evt)
	--判断死亡怪物的configid是否为 1001
	if evt.param1 ~= 1001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7(context, evt)
	-- 将configid为 1007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13(context, evt)
	if evt.param1 ~= 13 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13(context, evt)
	-- 触发镜头注目，注目位置为坐标（550，-35，83），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=550, y=-35, z=83}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 1041001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建id为1041的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1041 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1049的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1049 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14(context, evt)
	if evt.param1 ~= 14 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14(context, evt)
	-- 调用提示id为 1041011 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 展示名称为"GuideAvatarFlyInWind"的引导,见GuideData表，参数类型为string
	if 0 ~= ScriptLib.ShowClientGuide(context, "GuideAvatarFlyInWind") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : show_client_guide")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220011001, EntityType.GADGET, 1049 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220011007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_16(context, evt)
	if evt.param1 ~= 16 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_16(context, evt)
	-- 调用提示id为 1041041 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041041) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 1019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17(context, evt)
	if evt.param1 ~= 17 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17(context, evt)
	-- 调用提示id为 1041031 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1041031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_36(context, evt)
	if evt.param1 ~= 36 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36(context, evt)
	-- 将configid为 1015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220011001, monsters = {}, gadgets = {1041,1049} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为1042的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1042 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_37(context, evt)
	if evt.param1 ~= 37 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37(context, evt)
	-- 将configid为 1017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_39(context, evt)
	if 1026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_39(context, evt)
	-- 将configid为 1026 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1026, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_44(context, evt)
	if evt.param1 ~= 44 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_44(context, evt)
	-- 将configid为 1028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1031 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1031, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_45(context, evt)
	if evt.param1 ~= 45 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_45(context, evt)
	-- 将configid为 1032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1034, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1035 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1035, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_46(context, evt)
	if evt.param1 ~= 46 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_46(context, evt)
	-- 将configid为 1036 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1036, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1037 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1037, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1038 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1038, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1039 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1039, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_60(context, evt)
	if GadgetState.GearStart ~= evt.param1 or defs.gadget_id_1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_60(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "LisaOne") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 延迟3秒后,向groupId为：220011001的对象,请求一次调用,并将string参数："begin" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220011001, "begin", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_64(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220011006, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end