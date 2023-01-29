-- 基础信息
local base_info = {
	group_id = 220135004
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                        4008
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [4008] = 1,
                },

                --Key为操作台。value为发射器。允许有多个操作台控制同一个发射器
                controlRelation = {
                },

                --左右旋转的SelectOptionID
                selectID_horizon = 613,

                --上下俯仰的SelectOptionID
                selectID_vertical = 612,

                --定义左右旋转的步长,key为传递装置configID，value为GadgetState
                horizon_steps = {
                        [4016] = {0, 102, 103, 104},
                 [4017] = {0, 102, 103, 104},
                 [4018] = {0, 102, 103, 104},
                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
                        [4016] = {0, 302, 303, 304},
                 [4017] = {0, 302, 303, 304},
                 [4018] = {0, 302, 303, 304},
                },
              serve_items = {4007,4014}
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
	{ config_id = 4001, gadget_id = 70590060, pos = { x = 69.380, y = 130.000, z = 69.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 4002, gadget_id = 70290375, pos = { x = 69.718, y = 127.910, z = 75.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 4003, gadget_id = 70360170, pos = { x = 87.801, y = 128.920, z = 67.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 7 } } },
	{ config_id = 4006, gadget_id = 70290375, pos = { x = 69.214, y = 127.910, z = 63.457 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 4007, gadget_id = 70310363, pos = { x = 77.387, y = 146.525, z = 92.772 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true },
	{ config_id = 4008, gadget_id = 70310367, pos = { x = 73.078, y = 146.200, z = 90.990 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4009, gadget_id = 70310369, pos = { x = 59.331, y = 127.170, z = 69.343 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 4012, gadget_id = 70690034, pos = { x = 63.911, y = 113.252, z = 68.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4013, gadget_id = 70290375, pos = { x = 62.681, y = 146.789, z = 72.193 }, rot = { x = 0.000, y = 121.871, z = 180.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	{ config_id = 4014, gadget_id = 70310363, pos = { x = 69.411, y = 136.613, z = 69.407 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true },
	{ config_id = 4016, gadget_id = 70310368, pos = { x = 73.078, y = 146.200, z = 83.306 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4017, gadget_id = 70310368, pos = { x = 66.913, y = 146.200, z = 83.306 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4018, gadget_id = 70310368, pos = { x = 66.913, y = 146.200, z = 72.616 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 4019, gadget_id = 70310418, pos = { x = 62.681, y = 145.344, z = 72.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 4023, shape = RegionShape.SPHERE, radius = 8, pos = { x = 87.801, y = 128.920, z = 67.045 } }
}

-- 触发器
triggers = {
	{ config_id = 1004004, name = "SELECT_OPTION_4004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4004", action = "action_EVENT_SELECT_OPTION_4004", trigger_count = 0 },
	{ config_id = 1004005, name = "GROUP_LOAD_4005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4005", trigger_count = 0 },
	{ config_id = 1004010, name = "GADGET_STATE_CHANGE_4010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_4010", trigger_count = 0 },
	-- 4006604 任务保底
	{ config_id = 1004011, name = "QUEST_START_4011", event = EventType.EVENT_QUEST_START, source = "4006604", condition = "condition_EVENT_QUEST_START_4011", action = "action_EVENT_QUEST_START_4011", trigger_count = 0 },
	-- 4006604 任务保底
	{ config_id = 1004015, name = "GROUP_LOAD_4015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_4015", action = "action_EVENT_GROUP_LOAD_4015", trigger_count = 0 },
	{ config_id = 1004020, name = "ANY_GADGET_DIE_4020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_4020", action = "action_EVENT_ANY_GADGET_DIE_4020" },
	{ config_id = 1004021, name = "SELECT_OPTION_4021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_4021", trigger_count = 0 },
	{ config_id = 1004022, name = "TIME_AXIS_PASS_4022", event = EventType.EVENT_TIME_AXIS_PASS, source = "createwind", condition = "condition_EVENT_TIME_AXIS_PASS_4022", action = "action_EVENT_TIME_AXIS_PASS_4022", trigger_count = 0 },
	{ config_id = 1004023, name = "ENTER_REGION_4023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4023", action = "action_EVENT_ENTER_REGION_4023", trigger_count = 0 },
	{ config_id = 1004024, name = "GROUP_LOAD_4024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "turn", value = 1, no_refresh = true },
	{ config_id = 2, name = "test", value = 0, no_refresh = true },
	{ config_id = 3, name = "wind", value = 0, no_refresh = true }
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
		gadgets = { 4001, 4002, 4003, 4006, 4007, 4008, 4009, 4013, 4014, 4016, 4017, 4018, 4019 },
		regions = { 4023 },
		triggers = { "SELECT_OPTION_4004", "GROUP_LOAD_4005", "GADGET_STATE_CHANGE_4010", "QUEST_START_4011", "GROUP_LOAD_4015", "ANY_GADGET_DIE_4020", "SELECT_OPTION_4021", "TIME_AXIS_PASS_4022", "ENTER_REGION_4023", "GROUP_LOAD_4024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_4004(context, evt)
	-- 判断是gadgetid 4003 option_id 7
	if 4003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4004(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=59, y=130, z=69.38}，持续时间为3.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=59, y=130, z=69.38}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "turn") == 0 then
		ScriptLib.SetPlatformPointArray(context, 4001, 5, {1}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Reach, speed_level=0, arrive_range=0})
		
		if ScriptLib.GetGroupVariableValue(context, "wind") == 1 then
			ScriptLib.CreateGadget(context, {config_id=4012})
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4010(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 4002) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 4006) == 201 and ScriptLib.GetGroupVariableValue(context, "test") == 0 then
		ScriptLib.AddQuestProgress(context, "4006604")
		
		ScriptLib.SetGadgetStateByConfigId(context,4009, GadgetState.GearStart)
		
		ScriptLib.SetGroupVariableValue(context, "test", 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_4011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220135004, 4009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_4011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_4015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220135004, 4009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_4020(context, evt)
	if 4019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_4020(context, evt)
	-- 创建id为4012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4012 }) then
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
function action_EVENT_SELECT_OPTION_4021(context, evt)
	if evt.param1 == 4003 and evt.param2 == 7 and ScriptLib.GetGroupVariableValue(context, "turn") == 0 then
		ScriptLib.SetGroupVariableValue(context, "turn", 1)
		
		ScriptLib.SetPlatformPointArray(context, 4001, 4, {1}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Prereach, speed_level=0, arrive_range=0})
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220135004, config_id=4012, entity_type=EntityType.GADGET})
		
		if ScriptLib.GetGroupVariableValue(context, "test") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,4009, GadgetState.GearStart)
		end
		
		ScriptLib.SetGadgetStateByConfigId(context,4003, GadgetState.Default)
	else
		if evt.param1 == 4003 and evt.param2 == 7 and ScriptLib.GetGroupVariableValue(context, "turn") == 1 then
			ScriptLib.SetGroupVariableValue(context, "turn", 0)
			
			ScriptLib.SetPlatformPointArray(context, 4001, 4, {2}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Prereach, speed_level=0, arrive_range=0})
			
			ScriptLib.SetGadgetStateByConfigId(context,4009, GadgetState.Default)
			
			if ScriptLib.GetGroupVariableValue(context, "wind") == 1 then
				ScriptLib.InitTimeAxis(context, "createwind", {3}, false)
			end
			
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, 4003, GadgetState.GearStart)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_4022(context, evt)
	if "createwind" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_4022(context, evt)
	-- 创建id为4012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4023(context, evt)
	if evt.param1 ~= 4023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4023(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 3)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4024(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "turn") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,4003, GadgetState.Default)
	else
		ScriptLib.SetGadgetStateByConfigId(context,4003, GadgetState.GearStart)
	end
	
	return 0
end

require "V2_8/FireMachineColorHandle"
require "V2_8/KazuhaServeItem"