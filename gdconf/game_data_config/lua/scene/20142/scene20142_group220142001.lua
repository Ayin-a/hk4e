-- 基础信息
local base_info = {
	group_id = 220142001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1001, gadget_id = 70360170, pos = { x = 63.591, y = 1.395, z = 103.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 1003, gadget_id = 70290137, pos = { x = 70.192, y = 0.850, z = 100.009 }, rot = { x = 0.000, y = 90.183, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true }
}

-- 区域
regions = {
	{ config_id = 1014, shape = RegionShape.SPHERE, radius = 5, pos = { x = 64.918, y = 0.108, z = 101.612 } }
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "SELECT_OPTION_1002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_1002", trigger_count = 0 },
	{ config_id = 1001004, name = "TIME_AXIS_PASS_1004", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1004", trigger_count = 0 },
	{ config_id = 1001005, name = "TIME_AXIS_PASS_1005", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1005", trigger_count = 0 },
	{ config_id = 1001006, name = "TIME_AXIS_PASS_1006", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp3", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1006", trigger_count = 0 },
	{ config_id = 1001007, name = "SELECT_OPTION_1007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_1007", trigger_count = 0 },
	{ config_id = 1001008, name = "TIME_AXIS_PASS_1008", event = EventType.EVENT_TIME_AXIS_PASS, source = "message1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_1008", trigger_count = 0 },
	{ config_id = 1001009, name = "QUEST_FINISH_1009", event = EventType.EVENT_QUEST_FINISH, source = "4006507", condition = "", action = "action_EVENT_QUEST_FINISH_1009", trigger_count = 0 },
	{ config_id = 1001010, name = "SELECT_OPTION_1010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1010", action = "action_EVENT_SELECT_OPTION_1010", trigger_count = 0 },
	{ config_id = 1001011, name = "SELECT_OPTION_1011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1011", action = "action_EVENT_SELECT_OPTION_1011", trigger_count = 0 },
	{ config_id = 1001012, name = "SELECT_OPTION_1012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1012", action = "action_EVENT_SELECT_OPTION_1012", trigger_count = 0 },
	{ config_id = 1001013, name = "GROUP_LOAD_1013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1013", trigger_count = 0 },
	{ config_id = 1001014, name = "ENTER_REGION_1014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1014", action = "action_EVENT_ENTER_REGION_1014", trigger_count = 0 },
	{ config_id = 1001015, name = "SELECT_OPTION_1015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_1015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "room2", value = 0, no_refresh = true },
	{ config_id = 3, name = "message", value = 0, no_refresh = true },
	{ config_id = 4, name = "open", value = 0, no_refresh = true }
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
		gadgets = { 1001, 1003 },
		regions = { 1014 },
		triggers = { "SELECT_OPTION_1002", "TIME_AXIS_PASS_1004", "TIME_AXIS_PASS_1005", "TIME_AXIS_PASS_1006", "SELECT_OPTION_1007", "TIME_AXIS_PASS_1008", "QUEST_FINISH_1009", "SELECT_OPTION_1010", "SELECT_OPTION_1011", "SELECT_OPTION_1012", "GROUP_LOAD_1013", "ENTER_REGION_1014", "SELECT_OPTION_1015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_SELECT_OPTION_1002(context, evt)
	if evt.param2 == 603 then
		ScriptLib.SetGadgetStateByConfigId(context,1003, GadgetState.Default)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 1001, 603)
		
		ScriptLib.InitTimeAxis(context, "temp", {2,7}, false)
		
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 then
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 1001, 604)
		else
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 1001, 614)
		end
	else
		if evt.param2 == 604 then
			ScriptLib.SetGadgetStateByConfigId(context,1003, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp2", {2,7}, false)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 1001, 603)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 1001, 604)
		end
		
		if evt.param2 == 614 then
			ScriptLib.SetGroupVariableValue(context, "room2", 1)
			
			ScriptLib.SetGadgetStateByConfigId(context,1003, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp3", {2,7}, false)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 1001, 603)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 1001, 614)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1004(context, evt)
	if evt.source_name == "temp" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 23)
		
		ScriptLib.SetGadgetStateByConfigId(context,1003, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room2") == 0 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 1001, {603,614})
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 1001, {603,604})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1005(context, evt)
	if evt.source_name == "temp2" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 25)
		
		ScriptLib.SetGadgetStateByConfigId(context,1003, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp2" and evt.param1 == 2 then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, 1001, {603,604})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1006(context, evt)
	if evt.source_name == "temp3" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 25)
		
		ScriptLib.SetGadgetStateByConfigId(context,1003, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp3" and evt.param1 == 2 then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, 1001, {603,604})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1007(context, evt)
	if evt.param2 == 621 and ScriptLib.GetGroupVariableValue(context, "message") == 0 then
		ScriptLib.ShowReminder(context, 201420101)
		
		ScriptLib.InitTimeAxis(context, "message1", {3}, false)
		
		ScriptLib.SetGroupVariableValue(context, "message", 1)
	end
	
	if evt.param2 == 622 and ScriptLib.GetGroupVariableValue(context, "message") == 0 then
		ScriptLib.ShowReminder(context, 201420101)
		
		ScriptLib.InitTimeAxis(context, "message1", {3}, false)
		
		ScriptLib.SetGroupVariableValue(context, "message", 1)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_1008(context, evt)
	if evt.source_name == "message1" and evt.param1 == 1 and ScriptLib.GetGroupVariableValue(context, "message") == 1 then
		ScriptLib.SetGroupVariableValue(context, "message", 0)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1009(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220142001, 1001, {603,614}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1010(context, evt)
	-- 判断是gadgetid 1001 option_id 603
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 603 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1010(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=70.19164, y=2.3, z=100.0085}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=70.19164, y=2.3, z=100.0085}
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
function condition_EVENT_SELECT_OPTION_1011(context, evt)
	-- 判断是gadgetid 1001 option_id 604
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 604 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1011(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=70.19164, y=2.3, z=100.0085}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=70.19164, y=2.3, z=100.0085}
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
function condition_EVENT_SELECT_OPTION_1012(context, evt)
	-- 判断是gadgetid 1001 option_id 614
	if 1001 ~= evt.param1 then
		return false	
	end
	
	if 614 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1012(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=70.19164, y=2.3, z=100.0085}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=70.19164, y=2.3, z=100.0085}
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
function action_EVENT_GROUP_LOAD_1013(context, evt)
	ScriptLib.SetGroupVariableValue(context, "message", 0)
	
	if ScriptLib.GetGroupVariableValue(context, "open") == 1 and ScriptLib.GetGroupVariableValue(context, "room2") == 1 then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, 1001, {603,604})
	else
		if ScriptLib.GetGroupVariableValue(context, "open") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 1001, {603,614})
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 1001, {621,622})
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1014(context, evt)
	if evt.param1 ~= 1014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1014(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 6)
	ScriptLib.ActivateDungeonCheckPoint(context, 3)
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1015(context, evt)
	if evt.param1 == 1001 then
		if evt.param2 == 603 or evt.param2 == 604 or evt.param2 == 614 then
			if ScriptLib.GetGadgetStateByConfigId(context, 0, 1001) == 0 then
				ScriptLib.SetGadgetStateByConfigId(context,1001, GadgetState.GearStart)
			else
				ScriptLib.SetGadgetStateByConfigId(context,1001, GadgetState.Default)
			end
		end
	end
	
	return 0
end