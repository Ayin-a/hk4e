-- 基础信息
local base_info = {
	group_id = 133007293
}

-- Trigger变量
local defs = {
	active_step = 201,
	inactive_step = 0,
	gadget_array = {293014,293015,293016,293017},
	reset_gear_list = {293014,293015,293016,293017},
	wind_list = {293001,293018,293019,293020}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 293004, monster_id = 21030301, pos = { x = 2611.660, y = 205.670, z = 4.961 }, rot = { x = 0.000, y = 263.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1010, 1409 }, pose_id = 9012, area_id = 4 },
	{ config_id = 293006, monster_id = 21020101, pos = { x = 2612.048, y = 206.490, z = 1.016 }, rot = { x = 0.000, y = 126.600, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 4 },
	{ config_id = 293008, monster_id = 21020101, pos = { x = 2611.639, y = 205.252, z = 8.940 }, rot = { x = 0.000, y = 18.600, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1007 }, area_id = 4 },
	{ config_id = 293011, monster_id = 21010401, pos = { x = 2608.916, y = 212.404, z = -8.323 }, rot = { x = 0.000, y = 210.940, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1010, 1409 }, pose_id = 402, area_id = 4 },
	{ config_id = 293012, monster_id = 21010401, pos = { x = 2604.365, y = 211.163, z = 15.633 }, rot = { x = 0.000, y = 321.200, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1010, 1409 }, pose_id = 402, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 293001, gadget_id = 70350081, pos = { x = 2604.475, y = 206.936, z = 4.370 }, rot = { x = 0.000, y = 76.360, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 4 },
	{ config_id = 293005, gadget_id = 70300090, pos = { x = 2608.936, y = 206.880, z = -8.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293007, gadget_id = 70800025, pos = { x = 2598.330, y = 206.898, z = 3.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293010, gadget_id = 70300090, pos = { x = 2604.097, y = 205.669, z = 15.729 }, rot = { x = 0.000, y = 298.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293013, gadget_id = 70690010, pos = { x = 2598.330, y = 208.148, z = 3.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293018, gadget_id = 70680002, pos = { x = 2588.570, y = 206.909, z = 7.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293019, gadget_id = 70680001, pos = { x = 2603.720, y = 207.225, z = -7.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, arguments = { 0, 0, 0 }, area_id = 4 },
	{ config_id = 293020, gadget_id = 70680004, pos = { x = 2601.078, y = 206.617, z = 10.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293021, gadget_id = 70690001, pos = { x = 2598.330, y = 236.070, z = 3.300 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293022, gadget_id = 70690001, pos = { x = 2598.330, y = 243.000, z = 3.300 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293023, gadget_id = 70690001, pos = { x = 2598.330, y = 250.000, z = 3.300 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293024, gadget_id = 70690001, pos = { x = 2598.330, y = 257.000, z = 3.300 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293025, gadget_id = 70690001, pos = { x = 2598.330, y = 264.000, z = 3.300 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293026, gadget_id = 70690001, pos = { x = 2598.330, y = 271.000, z = 3.300 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293027, gadget_id = 70690001, pos = { x = 2598.330, y = 278.000, z = 3.300 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293028, gadget_id = 70690001, pos = { x = 2598.330, y = 285.000, z = 3.300 }, rot = { x = 300.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293029, gadget_id = 70690001, pos = { x = 2599.335, y = 289.560, z = 6.061 }, rot = { x = 310.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293030, gadget_id = 70690001, pos = { x = 2600.787, y = 292.995, z = 10.052 }, rot = { x = 320.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293031, gadget_id = 70690001, pos = { x = 2602.381, y = 296.672, z = 14.435 }, rot = { x = 330.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293032, gadget_id = 70690001, pos = { x = 2605.272, y = 299.503, z = 22.376 }, rot = { x = 340.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293033, gadget_id = 70690001, pos = { x = 2608.206, y = 301.016, z = 30.436 }, rot = { x = 350.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293034, gadget_id = 70690001, pos = { x = 2611.346, y = 301.016, z = 39.064 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293035, gadget_id = 70690001, pos = { x = 2614.539, y = 301.016, z = 48.532 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293036, gadget_id = 70690001, pos = { x = 2617.282, y = 301.016, z = 57.388 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293037, gadget_id = 70690001, pos = { x = 2620.854, y = 301.016, z = 67.204 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293038, gadget_id = 70690001, pos = { x = 2624.458, y = 301.016, z = 77.106 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 293039, gadget_id = 70690001, pos = { x = 2628.219, y = 301.016, z = 87.438 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1293002, name = "ANY_MONSTER_DIE_293002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_293002", action = "action_EVENT_ANY_MONSTER_DIE_293002" },
	{ config_id = 1293009, name = "SELECT_OPTION_293009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_293009", action = "action_EVENT_SELECT_OPTION_293009", trigger_count = 0 },
	{ config_id = 1293014, name = "TIME_AXIS_PASS_293014", event = EventType.EVENT_TIME_AXIS_PASS, source = "show", condition = "condition_EVENT_TIME_AXIS_PASS_293014", action = "action_EVENT_TIME_AXIS_PASS_293014", trigger_count = 0 },
	{ config_id = 1293040, name = "TIME_AXIS_PASS_293040", event = EventType.EVENT_TIME_AXIS_PASS, source = "show", condition = "condition_EVENT_TIME_AXIS_PASS_293040", action = "action_EVENT_TIME_AXIS_PASS_293040", trigger_count = 0 },
	{ config_id = 1293041, name = "TIME_AXIS_PASS_293041", event = EventType.EVENT_TIME_AXIS_PASS, source = "show", condition = "condition_EVENT_TIME_AXIS_PASS_293041", action = "action_EVENT_TIME_AXIS_PASS_293041", trigger_count = 0 },
	{ config_id = 1293042, name = "TIME_AXIS_PASS_293042", event = EventType.EVENT_TIME_AXIS_PASS, source = "show", condition = "condition_EVENT_TIME_AXIS_PASS_293042", action = "action_EVENT_TIME_AXIS_PASS_293042", trigger_count = 0 },
	{ config_id = 1293044, name = "VARIABLE_CHANGE_293044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_293044", action = "action_EVENT_VARIABLE_CHANGE_293044" }
}

-- 变量
variables = {
	{ config_id = 1, name = "sort", value = 0, no_refresh = false },
	{ config_id = 2, name = "gear_reset", value = 0, no_refresh = false },
	{ config_id = 3, name = "v_error", value = 0, no_refresh = false },
	{ config_id = 4, name = "trigger_output", value = 0, no_refresh = false },
	{ config_id = 5, name = "fail_count", value = 0, no_refresh = false },
	{ config_id = 6, name = "gear_load", value = 0, no_refresh = true },
	{ config_id = 7, name = "monster_count", value = 5, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 293003, gadget_id = 70220011, pos = { x = 2598.330, y = 206.898, z = 3.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 }
	}
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 293004, 293006, 293008, 293011, 293012 },
		gadgets = { 293001, 293005, 293007, 293010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_293002", "SELECT_OPTION_293009", "TIME_AXIS_PASS_293014", "TIME_AXIS_PASS_293040", "TIME_AXIS_PASS_293041", "TIME_AXIS_PASS_293042", "VARIABLE_CHANGE_293044" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 293018, 293019, 293020 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 293013, 293021, 293022, 293023, 293024, 293025, 293026, 293027, 293028, 293029, 293030, 293031, 293032, 293033, 293034, 293035, 293036, 293037, 293038, 293039 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_293002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_293002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 293007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 293001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 293001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组133007294中， configid为294001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007294, 294001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133007294中， configid为294002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007294, 294002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133007294中， configid为294003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007294, 294003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 调用提示id为 30070102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30070102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007293, 3)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133007293, 293001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 将本组内变量名为 "gear_load" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gear_load", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "monster_count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_293009(context, evt)
	-- 判断是gadgetid 293001 option_id 7
	if 293001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"gear_load"为1
	if ScriptLib.GetGroupVariableValue(context, "gear_load") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_293009(context, evt)
	-- 将configid为 293001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 293001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133007293 ；指定config：293001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133007293, 293001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 创建标识为"show"，时间节点为{1,3,5,7}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "show", {1,3,5,7}, false)
	
	
	-- 触发镜头注目，注目位置为坐标（2595，207，2），持续时间为7秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2595, y=207, z=2}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 7, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_293014(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_293014(context, evt)
	-- 改变指定group组133007294中， configid为294001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007294, 294001, GadgetState.Action02) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_293040(context, evt)
	if evt.param1 ~= 2 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_293040(context, evt)
	-- 改变指定group组133007294中， configid为294002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007294, 294002, GadgetState.Action02) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133007294中， configid为294001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007294, 294001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_293041(context, evt)
	if evt.param1 ~= 3 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_293041(context, evt)
	-- 改变指定group组133007294中， configid为294003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007294, 294003, GadgetState.Action02) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组133007294中， configid为294002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007294, 294002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_293042(context, evt)
	if evt.param1 ~= 4 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_293042(context, evt)
	-- 改变指定group组133007294中， configid为294003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007294, 294003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将configid为 293001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 293001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133007293, 293001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_293044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gear_load"为2
	if ScriptLib.GetGroupVariableValue(context, "gear_load") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_293044(context, evt)
	-- 将configid为 293001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 293001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133007293 ；指定config：293001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133007293, 293001, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end