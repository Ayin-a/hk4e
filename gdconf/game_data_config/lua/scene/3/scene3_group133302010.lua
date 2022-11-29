-- 基础信息
local base_info = {
	group_id = 133302010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10025, monster_id = 26090901, pos = { x = -65.671, y = 214.722, z = 2876.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 20 },
	{ config_id = 10026, monster_id = 26090901, pos = { x = -66.880, y = 214.429, z = 2879.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 20 },
	{ config_id = 10027, monster_id = 26090901, pos = { x = -65.675, y = 214.853, z = 2877.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 调查一
	{ config_id = 10001, gadget_id = 70360001, pos = { x = -57.386, y = 201.062, z = 2871.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 调查二
	{ config_id = 10002, gadget_id = 70360001, pos = { x = -56.083, y = 201.098, z = 2872.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 调查三
	{ config_id = 10004, gadget_id = 70360001, pos = { x = -55.692, y = 200.733, z = 2870.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 3号被封壁画
	{ config_id = 10007, gadget_id = 70230111, pos = { x = -66.762, y = 215.157, z = 2876.944 }, rot = { x = 356.891, y = 326.300, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	-- 1号被封壁画
	{ config_id = 10008, gadget_id = 70230108, pos = { x = -25.383, y = 201.532, z = 2898.118 }, rot = { x = 2.994, y = 129.414, z = 353.485 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	-- 封住2号的巨石
	{ config_id = 10011, gadget_id = 70310215, pos = { x = -7.005, y = 198.705, z = 2848.307 }, rot = { x = 0.000, y = 103.390, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 封住3号的巨石
	{ config_id = 10012, gadget_id = 70310215, pos = { x = -67.862, y = 211.779, z = 2877.144 }, rot = { x = 0.000, y = 248.957, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 封住1号的巨石
	{ config_id = 10013, gadget_id = 70310215, pos = { x = -26.294, y = 197.001, z = 2897.010 }, rot = { x = 0.000, y = 6.038, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 10020, gadget_id = 70310198, pos = { x = -79.250, y = 175.910, z = 2831.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 10029, gadget_id = 70310198, pos = { x = -61.104, y = 184.291, z = 2852.588 }, rot = { x = 0.000, y = 59.781, z = 0.000 }, level = 27, area_id = 20 },
	-- 首个涂鸦
	{ config_id = 10030, gadget_id = 70230109, pos = { x = -56.657, y = 191.059, z = 2824.779 }, rot = { x = 347.741, y = 140.620, z = 359.721 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	-- 2号被封壁画
	{ config_id = 10031, gadget_id = 70230107, pos = { x = -6.572, y = 202.268, z = 2847.863 }, rot = { x = 0.000, y = 197.392, z = 0.000 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	-- 3号涂鸦调查
	{ config_id = 10032, gadget_id = 70210102, pos = { x = -66.499, y = 214.497, z = 2877.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 20 },
	-- 1号涂鸦调查
	{ config_id = 10033, gadget_id = 70210102, pos = { x = -26.509, y = 200.009, z = 2896.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 20 },
	-- 2号涂鸦调查
	{ config_id = 10034, gadget_id = 70210102, pos = { x = -8.375, y = 201.286, z = 2848.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 20 },
	{ config_id = 10035, gadget_id = 70330197, pos = { x = -77.537, y = 177.039, z = 2848.580 }, rot = { x = 0.000, y = 241.653, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	-- 提示这里有石块
	{ config_id = 10003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -10.579, y = 197.966, z = 2847.868 }, area_id = 20 },
	-- 提示这里有石块
	{ config_id = 10015, shape = RegionShape.SPHERE, radius = 10, pos = { x = -64.462, y = 212.441, z = 2878.397 }, area_id = 20 },
	-- 提示这里有石块
	{ config_id = 10036, shape = RegionShape.SPHERE, radius = 10, pos = { x = -27.355, y = 196.964, z = 2893.060 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 提示这里有石块
	{ config_id = 1010003, name = "ENTER_REGION_10003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10003", action = "action_EVENT_ENTER_REGION_10003" },
	-- 调查改状态一
	{ config_id = 1010005, name = "GADGET_STATE_CHANGE_10005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10005", action = "action_EVENT_GADGET_STATE_CHANGE_10005" },
	-- 调查改状态二
	{ config_id = 1010010, name = "GADGET_STATE_CHANGE_10010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10010", action = "action_EVENT_GADGET_STATE_CHANGE_10010" },
	-- 封住1号的巨石破碎
	{ config_id = 1010014, name = "ANY_GADGET_DIE_10014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10014", action = "action_EVENT_ANY_GADGET_DIE_10014" },
	-- 提示这里有石块
	{ config_id = 1010015, name = "ENTER_REGION_10015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10015", action = "action_EVENT_ENTER_REGION_10015" },
	-- 调查1号涂鸦，注目，rmd
	{ config_id = 1010017, name = "GADGET_STATE_CHANGE_10017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10017", action = "action_EVENT_GADGET_STATE_CHANGE_10017" },
	-- 3号怪入战 rmd
	{ config_id = 1010018, name = "MONSTER_BATTLE_10018", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_10018", action = "action_EVENT_MONSTER_BATTLE_10018" },
	-- 调查2号涂鸦，注目，rmd
	{ config_id = 1010019, name = "GADGET_STATE_CHANGE_10019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10019", action = "action_EVENT_GADGET_STATE_CHANGE_10019" },
	-- 封住2号的巨石破碎
	{ config_id = 1010021, name = "ANY_GADGET_DIE_10021", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10021", action = "action_EVENT_ANY_GADGET_DIE_10021" },
	-- 封住3号的巨石破碎
	{ config_id = 1010023, name = "ANY_GADGET_DIE_10023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10023", action = "action_EVENT_ANY_GADGET_DIE_10023" },
	-- 调查3号涂鸦，注目，rmd
	{ config_id = 1010024, name = "GADGET_STATE_CHANGE_10024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10024", action = "action_EVENT_GADGET_STATE_CHANGE_10024" },
	-- 调查改状态三
	{ config_id = 1010028, name = "GADGET_STATE_CHANGE_10028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10028", action = "action_EVENT_GADGET_STATE_CHANGE_10028" },
	-- 提示这里有石块
	{ config_id = 1010036, name = "ENTER_REGION_10036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10036", action = "action_EVENT_ENTER_REGION_10036" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 10016, gadget_id = 70360001, pos = { x = -55.069, y = 186.177, z = 2814.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 10022, gadget_id = 70360001, pos = { x = -45.128, y = 175.735, z = 2796.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
	},
	triggers = {
		{ config_id = 1010006, name = "ANY_MONSTER_DIE_10006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10006", action = "action_EVENT_ANY_MONSTER_DIE_10006" },
		{ config_id = 1010037, name = "ANY_MONSTER_DIE_10037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10037", action = "action_EVENT_ANY_MONSTER_DIE_10037", trigger_count = 0 }
	}
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
		gadgets = { 10001, 10002, 10004, 10007, 10008, 10011, 10012, 10013, 10020, 10029, 10030, 10031, 10035 },
		regions = { 10003, 10015, 10036 },
		triggers = { "ENTER_REGION_10003", "GADGET_STATE_CHANGE_10005", "GADGET_STATE_CHANGE_10010", "ANY_GADGET_DIE_10014", "ENTER_REGION_10015", "GADGET_STATE_CHANGE_10017", "MONSTER_BATTLE_10018", "GADGET_STATE_CHANGE_10019", "ANY_GADGET_DIE_10021", "ANY_GADGET_DIE_10023", "GADGET_STATE_CHANGE_10024", "GADGET_STATE_CHANGE_10028", "ENTER_REGION_10036" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10003(context, evt)
	if evt.param1 ~= 10003 then return false end
	
	-- 判断是区域10003
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 10003 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10003(context, evt)
	-- 调用提示id为 730632401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730632401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10005(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302010, 10032) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10005(context, evt)
	-- 将configid为 10001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10010(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302010, 10033) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10010(context, evt)
	-- 将configid为 10002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10014(context, evt)
	if 10013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10014(context, evt)
	-- 创建id为10033的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10033 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10015(context, evt)
	if evt.param1 ~= 10015 then return false end
	
	-- 判断是区域10015
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 10015 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10015(context, evt)
	-- 调用提示id为 730632404 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730632404) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10017(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302010, 10033) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10017(context, evt)
	-- 调用提示id为 60010421 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010421) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-26.76825, y=201.1469, z=2897.719}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-26.76825, y=201.1469, z=2897.719}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_10018(context, evt)
	if 10025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_10018(context, evt)
	-- 调用提示id为 60010425 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010425) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10019(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302010, 10034) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10019(context, evt)
	-- 调用提示id为 60010424 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010424) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-8.175295, y=202.243, z=2848.488}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-8.175295, y=202.243, z=2848.488}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10021(context, evt)
	if 10011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10021(context, evt)
	-- 创建id为10034的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10034 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10023(context, evt)
	if 10012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10023(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10025, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10026, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10027, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 创建id为10032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 10032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10024(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302010, 10032) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10024(context, evt)
	-- 调用提示id为 60010426 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010426) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-66.64964, y=215.2524, z=2877.103}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-66.64964, y=215.2524, z=2877.103}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10028(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133302010, 10034) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10028(context, evt)
	-- 将configid为 10004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10036(context, evt)
	if evt.param1 ~= 10036 then return false end
	
	-- 判断是区域10036
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 10036 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10036(context, evt)
	-- 调用提示id为 60010420 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010420) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end