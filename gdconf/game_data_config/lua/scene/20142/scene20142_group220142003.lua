-- 基础信息
local base_info = {
	group_id = 220142003
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
	{ config_id = 3001, gadget_id = 70360170, pos = { x = 150.679, y = 5.549, z = 52.569 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 3002, gadget_id = 70290137, pos = { x = 158.293, y = 4.131, z = 49.962 }, rot = { x = 0.000, y = 90.183, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 3019, shape = RegionShape.SPHERE, radius = 5, pos = { x = 150.183, y = 4.316, z = 50.366 } }
}

-- 触发器
triggers = {
	{ config_id = 1003003, name = "SELECT_OPTION_3003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_3003", trigger_count = 0 },
	{ config_id = 1003004, name = "TIME_AXIS_PASS_3004", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3004", trigger_count = 0 },
	{ config_id = 1003005, name = "TIME_AXIS_PASS_3005", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3005", trigger_count = 0 },
	{ config_id = 1003006, name = "TIME_AXIS_PASS_3006", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp3", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3006", trigger_count = 0 },
	{ config_id = 1003007, name = "TIME_AXIS_PASS_3007", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp4", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3007", trigger_count = 0 },
	{ config_id = 1003008, name = "TIME_AXIS_PASS_3008", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp5", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3008", trigger_count = 0 },
	{ config_id = 1003009, name = "TIME_AXIS_PASS_3009", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp6", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3009", trigger_count = 0 },
	{ config_id = 1003010, name = "TIME_AXIS_PASS_3010", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp7", condition = "", action = "action_EVENT_TIME_AXIS_PASS_3010", trigger_count = 0 },
	{ config_id = 1003011, name = "SELECT_OPTION_3011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3011", action = "action_EVENT_SELECT_OPTION_3011", trigger_count = 0 },
	{ config_id = 1003012, name = "SELECT_OPTION_3012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3012", action = "action_EVENT_SELECT_OPTION_3012", trigger_count = 0 },
	{ config_id = 1003013, name = "SELECT_OPTION_3013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3013", action = "action_EVENT_SELECT_OPTION_3013", trigger_count = 0 },
	{ config_id = 1003014, name = "SELECT_OPTION_3014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3014", action = "action_EVENT_SELECT_OPTION_3014", trigger_count = 0 },
	{ config_id = 1003015, name = "SELECT_OPTION_3015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3015", action = "action_EVENT_SELECT_OPTION_3015", trigger_count = 0 },
	{ config_id = 1003016, name = "SELECT_OPTION_3016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3016", action = "action_EVENT_SELECT_OPTION_3016", trigger_count = 0 },
	{ config_id = 1003017, name = "SELECT_OPTION_3017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3017", action = "action_EVENT_SELECT_OPTION_3017", trigger_count = 0 },
	{ config_id = 1003018, name = "GROUP_LOAD_3018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3018", trigger_count = 0 },
	{ config_id = 1003019, name = "ENTER_REGION_3019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3019", action = "action_EVENT_ENTER_REGION_3019", trigger_count = 0 },
	{ config_id = 1003020, name = "SELECT_OPTION_3020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_3020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "room2", value = 0, no_refresh = true },
	{ config_id = 2, name = "room3", value = 0, no_refresh = true },
	{ config_id = 3, name = "room4", value = 0, no_refresh = true }
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
		gadgets = { 3001, 3002 },
		regions = { 3019 },
		triggers = { "SELECT_OPTION_3003", "TIME_AXIS_PASS_3004", "TIME_AXIS_PASS_3005", "TIME_AXIS_PASS_3006", "TIME_AXIS_PASS_3007", "TIME_AXIS_PASS_3008", "TIME_AXIS_PASS_3009", "TIME_AXIS_PASS_3010", "SELECT_OPTION_3011", "SELECT_OPTION_3012", "SELECT_OPTION_3013", "SELECT_OPTION_3014", "SELECT_OPTION_3015", "SELECT_OPTION_3016", "SELECT_OPTION_3017", "GROUP_LOAD_3018", "ENTER_REGION_3019", "SELECT_OPTION_3020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_SELECT_OPTION_3003(context, evt)
	if evt.param2 == 608 then
		ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.Default)
		
		ScriptLib.InitTimeAxis(context, "temp", {2,7}, false)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 608)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 609)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 610)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 611)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 617)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 618)
		
		ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 619)
	else
		if evt.param2 == 609 then
			ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp2", {2,7}, false)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 608)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 609)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 610)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 611)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 617)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 618)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 619)
		end
		
		if evt.param2 == 610 then
			ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp3", {2,7}, false)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 608)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 609)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 610)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 611)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 617)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 618)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 619)
		end
		
		if evt.param2 == 611 then
			ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp4", {2,7}, false)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 608)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 609)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 610)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 611)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 617)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 618)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 619)
		end
		
		if evt.param2 == 617 then
			ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp5", {2,7}, false)
			
			ScriptLib.SetGroupVariableValue(context, "room2", 1)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 608)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 609)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 610)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 611)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 617)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 618)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 619)
		end
		
		if evt.param2 == 618 then
			ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp6", {2,7}, false)
			
			ScriptLib.SetGroupVariableValue(context, "room3", 1)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 608)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 609)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 610)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 611)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 617)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 618)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 619)
		end
		
		if evt.param2 == 619 then
			ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "temp7", {2,7}, false)
			
			ScriptLib.SetGroupVariableValue(context, "room4", 1)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 608)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 609)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 610)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 611)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 617)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 618)
			
			ScriptLib.DelWorktopOptionByGroupId(context, 0, 3001, 619)
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3004(context, evt)
	if evt.source_name == "temp" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 26)
		
		ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,611})
		else
			if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,619})
			else
				if ScriptLib.GetGroupVariableValue(context, "room4") == 0 then
					if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
						ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,618,619})
					else
						if ScriptLib.GetGroupVariableValue(context, "room2") == 1 then
							ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,619})
						else
							ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,619})
						end
					end
				else
					if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
						ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,618,611})
					else
						if ScriptLib.GetGroupVariableValue(context, "room2") == 1 then
							ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,611})
						else
							ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,611})
						end
					end
				end
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3005(context, evt)
	if evt.source_name == "temp2" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 27)
		
		ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp2" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room3") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,611})
		else
			if ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,619})
			else
				if ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,611})
				else
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,619})
				end
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3006(context, evt)
	if evt.source_name == "temp3" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 28)
		
		ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp3" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,611})
		else
			if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room4") == 0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,619})
			end
			
			if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,619})
			end
			
			if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,611})
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3007(context, evt)
	if evt.source_name == "temp4" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 29)
		
		ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp4" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,611})
		else
			if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,618,611})
			end
			
			if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,611})
			end
			
			if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,611})
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3008(context, evt)
	if evt.source_name == "temp5" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 27)
		
		ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp5" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room3") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,611})
		else
			if ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,619})
			else
				if ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,611})
				else
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,619})
				end
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3009(context, evt)
	if evt.source_name == "temp6" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 28)
		
		ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp6" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,611})
		else
			if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room4") == 0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,619})
			end
			
			if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,619})
			end
			
			if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,611})
			end
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_3010(context, evt)
	if evt.source_name == "temp7" and evt.param1 == 1 then
		ScriptLib.ChangeToTargetLevelTag(context, 29)
		
		ScriptLib.SetGadgetStateByConfigId(context,3002, GadgetState.GearStart)
	end
	
	if evt.source_name == "temp7" and evt.param1 == 2 then
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,611})
		else
			if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,618,611})
			end
			
			if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,611})
			end
			
			if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,611})
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3011(context, evt)
	-- 判断是gadgetid 3001 option_id 608
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 608 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3011(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=158.2933, y=5.5, z=49.96225}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=158.2933, y=5.5, z=49.96225}
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
function condition_EVENT_SELECT_OPTION_3012(context, evt)
	-- 判断是gadgetid 3001 option_id 609
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 609 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3012(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=158.2933, y=5.5, z=49.96225}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=158.2933, y=5.5, z=49.96225}
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
function condition_EVENT_SELECT_OPTION_3013(context, evt)
	-- 判断是gadgetid 3001 option_id 610
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 610 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3013(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=158.2933, y=5.5, z=49.96225}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=158.2933, y=5.5, z=49.96225}
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
function condition_EVENT_SELECT_OPTION_3014(context, evt)
	-- 判断是gadgetid 3001 option_id 611
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 611 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3014(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=158.2933, y=5.5, z=49.96225}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=158.2933, y=5.5, z=49.96225}
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
function condition_EVENT_SELECT_OPTION_3015(context, evt)
	-- 判断是gadgetid 3001 option_id 617
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 617 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3015(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=158.2933, y=5.5, z=49.96225}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=158.2933, y=5.5, z=49.96225}
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
function condition_EVENT_SELECT_OPTION_3016(context, evt)
	-- 判断是gadgetid 3001 option_id 618
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 618 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3016(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=158.2933, y=5.5, z=49.96225}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=158.2933, y=5.5, z=49.96225}
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
function condition_EVENT_SELECT_OPTION_3017(context, evt)
	-- 判断是gadgetid 3001 option_id 619
	if 3001 ~= evt.param1 then
		return false	
	end
	
	if 619 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3017(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=158.2933, y=5.5, z=49.96225}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=158.2933, y=5.5, z=49.96225}
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
function action_EVENT_GROUP_LOAD_3018(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,611})
	else
		if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 0 then
			ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,610,619})
		else
			if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,611})
			else
				if ScriptLib.GetGroupVariableValue(context, "room2") == 1 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 and ScriptLib.GetGroupVariableValue(context, "room4") == 0 then
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,609,618,619})
				else
					if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
						ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,611})
					else
						if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 1 and ScriptLib.GetGroupVariableValue(context, "room4") == 0 then
							ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,610,619})
						else
							if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 and ScriptLib.GetGroupVariableValue(context, "room4") == 1 then
								ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,618,611})
							else
								if ScriptLib.GetGroupVariableValue(context, "room2") == 0 and ScriptLib.GetGroupVariableValue(context, "room3") == 0 and ScriptLib.GetGroupVariableValue(context, "room4") == 0 then
									ScriptLib.SetWorktopOptionsByGroupId(context, 0, 3001, {608,617,618,619})
								end
							end
						end
					end
				end
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3019(context, evt)
	if evt.param1 ~= 3019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3019(context, evt)
	
	ScriptLib.ActivateDungeonCheckPoint(context, 2)
	ScriptLib.ActivateDungeonCheckPoint(context, 3)
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3020(context, evt)
	if evt.param1 == 3001 then
		if evt.param2 == 608 or evt.param2 == 609 or evt.param2 == 610 or evt.param2 == 611 or evt.param2 == 617 or evt.param2 == 618 or evt.param2 == 619 then
			if ScriptLib.GetGadgetStateByConfigId(context, 0, 3001) == 0 then
				ScriptLib.SetGadgetStateByConfigId(context,3001, GadgetState.GearStart)
			else
				ScriptLib.SetGadgetStateByConfigId(context,3001, GadgetState.Default)
			end
		end
	end
	
	return 0
end