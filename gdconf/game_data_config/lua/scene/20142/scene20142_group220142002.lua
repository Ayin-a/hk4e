-- 基础信息
local base_info = {
	group_id = 220142002
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
	{ config_id = 2001, gadget_id = 70360170, pos = { x = 85.752, y = 5.451, z = 52.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2002, gadget_id = 70290137, pos = { x = 93.589, y = 4.250, z = 50.016 }, rot = { x = 0.000, y = 90.183, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 2018, shape = RegionShape.SPHERE, radius = 5, pos = { x = 86.946, y = 3.175, z = 50.075 } }
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "SELECT_OPTION_2003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_2003", trigger_count = 0 },
	{ config_id = 1002004, name = "TIME_AXIS_PASS_2004", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp", condition = "", action = "action_EVENT_TIME_AXIS_PASS_2004", trigger_count = 0 },
	{ config_id = 1002005, name = "TIME_AXIS_PASS_2005", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_2005", trigger_count = 0 },
	{ config_id = 1002006, name = "TIME_AXIS_PASS_2006", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp3", condition = "", action = "action_EVENT_TIME_AXIS_PASS_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "TIME_AXIS_PASS_2007", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp4", condition = "", action = "action_EVENT_TIME_AXIS_PASS_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "TIME_AXIS_PASS_2008", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp5", condition = "", action = "action_EVENT_TIME_AXIS_PASS_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "SELECT_OPTION_2009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "TIME_AXIS_PASS_2010", event = EventType.EVENT_TIME_AXIS_PASS, source = "message1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "QUEST_FINISH_2011", event = EventType.EVENT_QUEST_FINISH, source = "4006516", condition = "", action = "action_EVENT_QUEST_FINISH_2011", trigger_count = 0 },
	{ config_id = 1002012, name = "SELECT_OPTION_2012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2012", action = "action_EVENT_SELECT_OPTION_2012", trigger_count = 0 },
	{ config_id = 1002013, name = "SELECT_OPTION_2013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2013", action = "action_EVENT_SELECT_OPTION_2013", trigger_count = 0 },
	{ config_id = 1002014, name = "SELECT_OPTION_2014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2014", action = "action_EVENT_SELECT_OPTION_2014", trigger_count = 0 },
	{ config_id = 1002015, name = "SELECT_OPTION_2015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2015", action = "action_EVENT_SELECT_OPTION_2015", trigger_count = 0 },
	{ config_id = 1002016, name = "SELECT_OPTION_2016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2016", action = "action_EVENT_SELECT_OPTION_2016", trigger_count = 0 },
	{ config_id = 1002017, name = "GROUP_LOAD_2017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2017", trigger_count = 0 },
	{ config_id = 1002018, name = "ENTER_REGION_2018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2018", action = "action_EVENT_ENTER_REGION_2018", trigger_count = 0 },
	{ config_id = 1002019, name = "SELECT_OPTION_2019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_2019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "room2", value = 0, no_refresh = true },
	{ config_id = 2, name = "room3", value = 0, no_refresh = true },
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
		gadgets = { 2001, 2002 },
		regions = { 2018 },
		triggers = { "SELECT_OPTION_2003", "TIME_AXIS_PASS_2004", "TIME_AXIS_PASS_2005", "TIME_AXIS_PASS_2006", "TIME_AXIS_PASS_2007", "TIME_AXIS_PASS_2008", "SELECT_OPTION_2009", "TIME_AXIS_PASS_2010", "QUEST_FINISH_2011", "SELECT_OPTION_2012", "SELECT_OPTION_2013", "SELECT_OPTION_2014", "SELECT_OPTION_2015", "SELECT_OPTION_2016", "GROUP_LOAD_2017", "ENTER_REGION_2018", "SELECT_OPTION_2019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_SELECT_OPTION_2003(context, evt)
	if evt.param2 == 606 then
		ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.Default)
		
		ScriptLib.InitTimeAxis(context, "temp", {2,7}, false)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 605)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 606)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 607)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 615)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 616)
	else
		if evt.param2 == 605 then
			ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp2", {2,7}, false)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 605)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 606)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 607)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 615)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 616)
		end
		
		if evt.param2 == 607 then
			ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp3", {2,3,7}, false)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 605)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 606)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 607)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 615)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 616)
		end
		
		if evt.param2 == 615 then
			ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp4", {2,7}, false)
			
			ScriptLib.SetGroupVariableValue(context, "room2", 1)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 605)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 606)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 607)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 615)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 616)
		end
		
		if evt.param2 == 616 then
			ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp5", {2,3,7}, false)
			
			ScriptLib.SetGroupVariableValue(context, "room3", 1)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 605)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 606)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 607)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 615)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 2001, 616)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2004(context, evt)
	if evt.source_name == "temp" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 25)
		
		ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,607})
		else
			if ScriptLib.GetGroupVariableValue(context, "room2") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,616})
			else
				if ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,615,607})
				else
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,615,616})
				end
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2005(context, evt)
	if evt.source_name == "temp2" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 24)
		
		ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp2" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,607})
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,616})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2006(context, evt)
	if evt.source_name == "temp3" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 26)
	end
	
	if evt.source_name == "temp3" and evt.param1 == 2 then
		ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp3" and evt.param1 == 3 then
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,607})
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,615,607})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2007(context, evt)
	if evt.source_name == "temp4" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 24)
		
		ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp4" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,607})
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,616})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2008(context, evt)
	if evt.source_name == "temp5" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 26)
	end
	
	if evt.source_name == "temp5" and evt.param1 == 2 then
		ScriptLib.SetGadgetStateByConfigId(context,2002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp5" and evt.param1 == 3 then
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,607})
		else
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,615,607})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2009(context, evt)
	if evt.param2 == 623 and ScriptLib.GetGroupVariableValue(context, "message") == 0 then
		ScriptLib.ShowReminder(context, 201420101)
		
		ScriptLib.InitTimeAxis(context, "message1", {3}, false)
		
		ScriptLib.SetGroupVariableValue(context, "message", 1)
	end
	
	if evt.param2 == 624 and ScriptLib.GetGroupVariableValue(context, "message") == 0 then
		ScriptLib.ShowReminder(context, 201420101)
		
		ScriptLib.InitTimeAxis(context, "message1", {3}, false)
		
		ScriptLib.SetGroupVariableValue(context, "message", 1)
	end
	
	if evt.param2 == 625 and ScriptLib.GetGroupVariableValue(context, "message") == 0 then
		ScriptLib.ShowReminder(context, 201420101)
		
		ScriptLib.InitTimeAxis(context, "message1", {3}, false)
		
		ScriptLib.SetGroupVariableValue(context, "message", 1)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2010(context, evt)
	if evt.source_name == "message1" and evt.param1 == 1 and ScriptLib.GetGroupVariableValue(context, "message") == 1 then
		ScriptLib.SetGroupVariableValue(context, "message", 0)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2011(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220142002, 2001, {606,615,616}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2012(context, evt)
	-- 判断是gadgetid 2001 option_id 605
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 605 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2012(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=93.5885, y=5.5, z=50.01584}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=93.5885, y=5.5, z=50.01584}
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
function condition_EVENT_SELECT_OPTION_2013(context, evt)
	-- 判断是gadgetid 2001 option_id 606
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 606 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2013(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=93.5885, y=5.5, z=50.01584}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=93.5885, y=5.5, z=50.01584}
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
function condition_EVENT_SELECT_OPTION_2014(context, evt)
	-- 判断是gadgetid 2001 option_id 607
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 607 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2014(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=93.5885, y=5.5, z=50.01584}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=93.5885, y=5.5, z=50.01584}
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
function condition_EVENT_SELECT_OPTION_2015(context, evt)
	-- 判断是gadgetid 2001 option_id 615
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 615 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2015(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=93.5885, y=5.5, z=50.01584}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=93.5885, y=5.5, z=50.01584}
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
function condition_EVENT_SELECT_OPTION_2016(context, evt)
	-- 判断是gadgetid 2001 option_id 616
	if 2001 ~= evt.param1 then
		return false	
	end
	
	if 616 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2016(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=93.5885, y=5.5, z=50.01584}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=93.5885, y=5.5, z=50.01584}
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
function action_EVENT_GROUP_LOAD_2017(context, evt)
	ScriptLib.SetGroupVariableValue(context, "message", 0)
	
	if ScriptLib.GetGroupVariableValue(context, "open") == 1 and ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,607})
	else
		if ScriptLib.GetGroupVariableValue(context, "open") == 1 and ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,605,616})
		else
			if ScriptLib.GetGroupVariableValue(context, "open") == 1 and ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,615,607})
			else
				if ScriptLib.GetGroupVariableValue(context, "open") == 1 and ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {606,615,616})
				else
					if ScriptLib.GetGroupVariableValue(context, "open") == 0 and ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
						ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2001, {624,623,625})
					end
				end
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2018(context, evt)
	if evt.param1 ~= 2018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2018(context, evt)
	
	ScriptLib.ActivateDungeonCheckPoint(context, 4)
	ScriptLib.ActivateDungeonCheckPoint(context, 3)
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2019(context, evt)
	if evt.param1 == 2001 then
		if evt.param2 == 605 or evt.param2 == 606 or evt.param2 == 607 or evt.param2 == 615 or evt.param2 == 616 then
			if ScriptLib.GetGadgetStateByConfigId(context, 0, 2001) == 0 then
				ScriptLib.SetGadgetStateByConfigId(context,2001, GadgetState.GearStart)
			else
				ScriptLib.SetGadgetStateByConfigId(context,2001, GadgetState.Default)
			end
		end
	end
	
	return 0
end