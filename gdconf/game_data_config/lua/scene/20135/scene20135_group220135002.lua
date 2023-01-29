-- 基础信息
local base_info = {
	group_id = 220135002
}

-- DEFS_MISCS
local        defs = {
              serve_items = {2004 }
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
	{ config_id = 2001, gadget_id = 70590060, pos = { x = 100.056, y = 102.578, z = 40.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 2002, gadget_id = 70690035, pos = { x = 100.495, y = 88.314, z = 38.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70290375, pos = { x = 96.869, y = 99.648, z = 44.288 }, rot = { x = 0.000, y = 175.871, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2004, gadget_id = 70310363, pos = { x = 105.971, y = 99.792, z = 36.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true },
	{ config_id = 2005, gadget_id = 70360170, pos = { x = 97.760, y = 100.121, z = 25.972 }, rot = { x = 0.000, y = 271.533, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 2011, gadget_id = 70310386, pos = { x = 97.760, y = 99.757, z = 25.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 2016, shape = RegionShape.SPHERE, radius = 8, pos = { x = 97.760, y = 100.121, z = 25.972 } },
	{ config_id = 2018, shape = RegionShape.SPHERE, radius = 8, pos = { x = 98.945, y = 102.121, z = -35.040 } }
}

-- 触发器
triggers = {
	{ config_id = 1002006, name = "SELECT_OPTION_2006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2006", action = "action_EVENT_SELECT_OPTION_2006", trigger_count = 0 },
	-- 4006608 任务保底
	{ config_id = 1002007, name = "QUEST_START_2007", event = EventType.EVENT_QUEST_START, source = "4006608", condition = "condition_EVENT_QUEST_START_2007", action = "action_EVENT_QUEST_START_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "GADGET_STATE_CHANGE_2008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2008", action = "action_EVENT_GADGET_STATE_CHANGE_2008", trigger_count = 0 },
	{ config_id = 1002009, name = "GROUP_LOAD_2009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "SELECT_OPTION_2010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_2010", trigger_count = 0 },
	-- 4006608 任务保底
	{ config_id = 1002012, name = "GROUP_LOAD_2012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_2012", action = "action_EVENT_GROUP_LOAD_2012", trigger_count = 0 },
	{ config_id = 1002013, name = "TIME_AXIS_PASS_2013", event = EventType.EVENT_TIME_AXIS_PASS, source = "createwind", condition = "condition_EVENT_TIME_AXIS_PASS_2013", action = "action_EVENT_TIME_AXIS_PASS_2013", trigger_count = 0 },
	{ config_id = 1002016, name = "ENTER_REGION_2016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2016", action = "action_EVENT_ENTER_REGION_2016", trigger_count = 0 },
	{ config_id = 1002017, name = "GROUP_LOAD_2017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2017", trigger_count = 0 },
	{ config_id = 1002018, name = "ENTER_REGION_2018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2018", action = "action_EVENT_ENTER_REGION_2018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "turn", value = 1, no_refresh = true },
	{ config_id = 1, name = "wind", value = 0, no_refresh = true },
	{ config_id = 3, name = "option", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 2014, shape = RegionShape.SPHERE, radius = 7, pos = { x = 50.328, y = 121.831, z = 50.700 } },
		{ config_id = 2015, shape = RegionShape.SPHERE, radius = 7, pos = { x = 103.671, y = 68.315, z = 75.131 } }
	},
	triggers = {
		{ config_id = 1002014, name = "ENTER_REGION_2014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2014", trigger_count = 0 },
		{ config_id = 1002015, name = "ENTER_REGION_2015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2015", trigger_count = 0 }
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
		gadgets = { 2001, 2003, 2004, 2005, 2011 },
		regions = { 2016, 2018 },
		triggers = { "SELECT_OPTION_2006", "QUEST_START_2007", "GADGET_STATE_CHANGE_2008", "GROUP_LOAD_2009", "SELECT_OPTION_2010", "GROUP_LOAD_2012", "TIME_AXIS_PASS_2013", "ENTER_REGION_2016", "GROUP_LOAD_2017", "ENTER_REGION_2018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_2006(context, evt)
	-- 判断是gadgetid 2005 option_id 7
	if 2005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2006(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=100.056, y=102.578, z=40}，持续时间为3.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=100.056, y=102.578, z=40}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_2007(context, evt)
	-- 判断变量"turn"为0
	if ScriptLib.GetGroupVariableValue(context, "turn") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_2007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006608") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	if 2003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2008(context, evt)
	-- 创建id为2002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "wind" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wind", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2009(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "turn") == 1 and ScriptLib.GetGroupVariableValue(context, "wind") == 1 then
		ScriptLib.CreateGadget(context, {config_id=2002})
	end
	
	if ScriptLib.GetGroupVariableValue(context, "option") == 1 then
		ScriptLib.SetWorktopOptionsByGroupId(context, 0, 2005, {7})
	end
	
	if ScriptLib.GetGroupVariableValue(context, "turn") == 0 then
		ScriptLib.SetPlatformPointArray(context, 2001, 6, {1}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Reach, speed_level=0, arrive_range=0})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2010(context, evt)
	if evt.param1 == 2005 and evt.param2 == 7 and ScriptLib.GetGroupVariableValue(context, "turn") == 0 then
		ScriptLib.SetGroupVariableValueByGroup(context, "room1", 1, 220135003)
		
		ScriptLib.SetGroupVariableValue(context, "turn", 1)
		
		ScriptLib.SetPlatformPointArray(context, 2001, 1, {1}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Prereach, speed_level=0, arrive_range=0})
		
		ScriptLib.InitTimeAxis(context, "createwind", {3}, false)
		
		ScriptLib.SetGadgetStateByConfigId(context,2005, GadgetState.Default)
	else
		if evt.param1 == 2005 and evt.param2 == 7 and ScriptLib.GetGroupVariableValue(context, "turn") == 1 then
			ScriptLib.SetGroupVariableValueByGroup(context, "room1", 0, 220135003)
			
			ScriptLib.SetGroupVariableValue(context, "turn", 0)
			
			ScriptLib.SetPlatformPointArray(context, 2001, 1, {2}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Prereach, speed_level=0, arrive_range=0})
			
			ScriptLib.KillEntityByConfigId(context, {group_id=220135002, config_id=2002, entity_type=EntityType.GADGET})
			
			ScriptLib.AddQuestProgress(context, "4006608")
			
			ScriptLib.SetGadgetStateByConfigId(context,2005, GadgetState.GearStart)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_2012(context, evt)
	-- 判断变量"turn"为0
	if ScriptLib.GetGroupVariableValue(context, "turn") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006608") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_2013(context, evt)
	if "createwind" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_2013(context, evt)
	-- 创建id为2002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2016(context, evt)
	if evt.param1 ~= 2016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2016(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 9)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2017(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "turn") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,2005, GadgetState.Default)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "turn") == 0 then
		ScriptLib.SetGadgetStateByConfigId(context,2005, GadgetState.GearStart)
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
	ScriptLib.ActivateDungeonCheckPoint(context, 9)
	return 0
end

require "V2_8/KazuhaServeItem"