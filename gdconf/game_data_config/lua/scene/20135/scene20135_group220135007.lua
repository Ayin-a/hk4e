-- 基础信息
local base_info = {
	group_id = 220135007
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                       7017,
                       7021,
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [7017] = 1,
                        [7021] = 4,
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
                        [7018] = {0, 102, 103, 104},
                 [7019] = {0, 102, 103, 104},
                 [7020] = {0, 102, 103, 104},
                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
                        [7018] = {0, 302, 303, 304},
                 [7019] = {0, 302, 303, 304},
                 [7020] = {0, 302, 303, 304},
                },
              serve_items = {7008,7009}
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
	{ config_id = 7001, gadget_id = 70590060, pos = { x = 121.430, y = 72.280, z = 74.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 7002, gadget_id = 70360170, pos = { x = 102.959, y = 68.995, z = 76.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 7 } } },
	{ config_id = 7005, gadget_id = 70690034, pos = { x = 125.079, y = 70.437, z = 74.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7006, gadget_id = 70290375, pos = { x = 125.342, y = 70.309, z = 78.616 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7007, gadget_id = 70290375, pos = { x = 125.316, y = 70.309, z = 70.769 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7008, gadget_id = 70310363, pos = { x = 129.838, y = 89.275, z = 66.973 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 7009, gadget_id = 70310363, pos = { x = 112.365, y = 88.964, z = 82.809 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 7010, gadget_id = 70310369, pos = { x = 133.178, y = 89.208, z = 74.534 }, rot = { x = 0.000, y = 270.000, z = 180.000 }, level = 1, persistent = true },
	{ config_id = 7013, gadget_id = 70211167, pos = { x = 122.902, y = 89.358, z = 75.553 }, rot = { x = 0.000, y = 270.000, z = 180.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, autopick = true },
	{ config_id = 7014, gadget_id = 70690036, pos = { x = 120.387, y = 52.250, z = 74.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7015, gadget_id = 70620009, pos = { x = 122.902, y = 88.778, z = 75.553 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, isOneoff = true },
	{ config_id = 7016, gadget_id = 70310418, pos = { x = 129.784, y = 87.775, z = 67.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 7017, gadget_id = 70310367, pos = { x = 113.028, y = 89.188, z = 68.065 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 7018, gadget_id = 70310368, pos = { x = 112.877, y = 89.143, z = 70.670 }, rot = { x = 0.000, y = 176.671, z = 180.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 7019, gadget_id = 70310368, pos = { x = 122.238, y = 89.143, z = 71.214 }, rot = { x = 0.000, y = 176.671, z = 180.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 7020, gadget_id = 70310368, pos = { x = 129.605, y = 89.143, z = 71.643 }, rot = { x = 0.000, y = 176.671, z = 180.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 7021, gadget_id = 70310367, pos = { x = 129.449, y = 89.129, z = 77.946 }, rot = { x = 0.000, y = 176.671, z = 180.000 }, level = 1, state = GadgetState.GearAction2 },
	{ config_id = 7022, gadget_id = 70310418, pos = { x = 112.371, y = 87.396, z = 82.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 7025, gadget_id = 70211166, pos = { x = 121.702, y = 79.568, z = 82.905 }, rot = { x = 0.000, y = 270.000, z = 180.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true },
	{ config_id = 7026, gadget_id = 70211166, pos = { x = 121.702, y = 79.568, z = 66.180 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, autopick = true }
}

-- 区域
regions = {
	{ config_id = 7032, shape = RegionShape.SPHERE, radius = 10, pos = { x = 102.959, y = 68.995, z = 76.371 } },
	{ config_id = 7033, shape = RegionShape.SPHERE, radius = 8, pos = { x = 102.959, y = 68.995, z = 76.371 } }
}

-- 触发器
triggers = {
	{ config_id = 1007003, name = "SELECT_OPTION_7003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_7003", trigger_count = 0 },
	{ config_id = 1007004, name = "ANY_GADGET_DIE_7004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7004", action = "action_EVENT_ANY_GADGET_DIE_7004", trigger_count = 0 },
	{ config_id = 1007011, name = "ANY_GADGET_DIE_7011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_7011", action = "action_EVENT_ANY_GADGET_DIE_7011", trigger_count = 0 },
	{ config_id = 1007012, name = "SELECT_OPTION_7012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_7012", action = "action_EVENT_SELECT_OPTION_7012", trigger_count = 0 },
	{ config_id = 1007023, name = "GADGET_STATE_CHANGE_7023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7023", action = "action_EVENT_GADGET_STATE_CHANGE_7023" },
	{ config_id = 1007024, name = "GADGET_STATE_CHANGE_7024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_7024", trigger_count = 0 },
	{ config_id = 1007027, name = "GROUP_LOAD_7027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_7027", trigger_count = 0 },
	-- 4006609 任务保底
	{ config_id = 1007028, name = "QUEST_START_7028", event = EventType.EVENT_QUEST_START, source = "4006609", condition = "condition_EVENT_QUEST_START_7028", action = "action_EVENT_QUEST_START_7028", trigger_count = 0 },
	-- 4006609 任务保底
	{ config_id = 1007029, name = "GROUP_LOAD_7029", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_7029", action = "action_EVENT_GROUP_LOAD_7029", trigger_count = 0 },
	{ config_id = 1007030, name = "TIME_AXIS_PASS_7030", event = EventType.EVENT_TIME_AXIS_PASS, source = "createwind1", condition = "condition_EVENT_TIME_AXIS_PASS_7030", action = "action_EVENT_TIME_AXIS_PASS_7030", trigger_count = 0 },
	{ config_id = 1007031, name = "TIME_AXIS_PASS_7031", event = EventType.EVENT_TIME_AXIS_PASS, source = "createwind2", condition = "condition_EVENT_TIME_AXIS_PASS_7031", action = "action_EVENT_TIME_AXIS_PASS_7031", trigger_count = 0 },
	{ config_id = 1007032, name = "ENTER_REGION_7032", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7032", action = "action_EVENT_ENTER_REGION_7032", trigger_count = 0 },
	{ config_id = 1007033, name = "ENTER_REGION_7033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7033", action = "action_EVENT_ENTER_REGION_7033", trigger_count = 0 },
	{ config_id = 1007034, name = "GROUP_LOAD_7034", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_7034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "turn", value = 1, no_refresh = true },
	{ config_id = 1, name = "wind", value = 0, no_refresh = true },
	{ config_id = 2, name = "door", value = 0, no_refresh = true },
	{ config_id = 4, name = "isLock_1", value = 1, no_refresh = true },
	{ config_id = 5, name = "isLock_2", value = 1, no_refresh = true }
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
		gadgets = { 7001, 7002, 7006, 7007, 7008, 7009, 7010, 7013, 7015, 7016, 7017, 7018, 7019, 7020, 7021, 7022, 7025, 7026 },
		regions = { 7032, 7033 },
		triggers = { "SELECT_OPTION_7003", "ANY_GADGET_DIE_7004", "ANY_GADGET_DIE_7011", "SELECT_OPTION_7012", "GADGET_STATE_CHANGE_7023", "GADGET_STATE_CHANGE_7024", "GROUP_LOAD_7027", "QUEST_START_7028", "GROUP_LOAD_7029", "TIME_AXIS_PASS_7030", "TIME_AXIS_PASS_7031", "ENTER_REGION_7032", "ENTER_REGION_7033", "GROUP_LOAD_7034" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_SELECT_OPTION_7003(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "turn") == 0 and evt.param2 == 7 then
		ScriptLib.SetGroupVariableValueByGroup(context, "room4", 1, 220135003)
		
		ScriptLib.SetPlatformPointArray(context, 7001, 4, {1}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Prereach, speed_level=0, arrive_range=0})
		
		ScriptLib.SetGroupVariableValue(context, "turn", 1)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220135007, config_id=7014, entity_type=EntityType.GADGET})
		
		if ScriptLib.GetGroupVariableValue(context, "wind") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,7010, GadgetState.GearStart)
			
			ScriptLib.InitTimeAxis(context, "createwind1", {3}, false)
		end
		
		ScriptLib.SetGadgetStateByConfigId(context,7002, GadgetState.Default)
	else
		if ScriptLib.GetGroupVariableValue(context, "turn") == 1 and evt.param2 == 7 then
			ScriptLib.SetGroupVariableValueByGroup(context, "room4", 0, 220135003)
			
			ScriptLib.SetGroupVariableValue(context, "turn", 0)
			
			ScriptLib.SetPlatformPointArray(context, 7001, 4, {2}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Prereach, speed_level=0, arrive_range=0})
			
			ScriptLib.SetGadgetStateByConfigId(context,7010, GadgetState.Default)
			
			ScriptLib.InitTimeAxis(context, "createwind2", {3}, false)
			
			ScriptLib.KillEntityByConfigId(context, {group_id=220135007, config_id=7005, entity_type=EntityType.GADGET})
			
			ScriptLib.SetGadgetStateByConfigId(context,7002, GadgetState.GearStart)
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7004(context, evt)
	if 7016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7004(context, evt)
	-- 将本组内变量名为 "isLock_1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLock_1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 7008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_7011(context, evt)
	if 7022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_7011(context, evt)
	-- 将本组内变量名为 "isLock_2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLock_2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 7009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_7012(context, evt)
	-- 判断是gadgetid 7002 option_id 7
	if 7002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_7012(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=121.43, y=72.28, z=74.54}，持续时间为3.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=121.43, y=72.28, z=74.54}
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
function condition_EVENT_GADGET_STATE_CHANGE_7023(context, evt)
	-- 检测config_id为7013的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 7013 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 7015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7024(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 0, 7006) == 201 and ScriptLib.GetGadgetStateByConfigId(context, 0, 7007) == 201 then
		if evt.param2 == 7006 or evt.param2 == 7007 then
			ScriptLib.SetGroupVariableValue(context, "wind", 1)
			
			ScriptLib.SetGroupVariableValue(context, "door", 1)
			
			if ScriptLib.GetGroupVariableValue(context, "turn") == 1 then
				ScriptLib.CreateGadget(context, {config_id=7005})
				
				ScriptLib.SetGadgetStateByConfigId(context,7010, GadgetState.GearStart)
			end
			
			ScriptLib.AddQuestProgress(context, "4006609")
		end
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_7027(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "turn") == 1 and ScriptLib.GetGroupVariableValue(context, "wind") == 1 then
		ScriptLib.CreateGadget(context, {config_id=7005})
	end
	
	if ScriptLib.GetGroupVariableValue(context, "turn") == 0 then
		ScriptLib.CreateGadget(context, {config_id=7014})
		
		ScriptLib.SetPlatformPointArray(context, 7001, 5, {1}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Reach, speed_level=0, arrive_range=0})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_7028(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220135007, 7010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_7028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006609") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_7029(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220135007, 7010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_7029(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006609") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_7030(context, evt)
	if "createwind1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_7030(context, evt)
	-- 创建id为7005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_7031(context, evt)
	if "createwind2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_7031(context, evt)
	-- 创建id为7014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7032(context, evt)
	if evt.param1 ~= 7032 then return false end
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
		
	-- 判断变量"turn"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "turn", 220135002) ~= 1 then
		return false
	end
		
	if ScriptLib.CheckSceneTag(context, 20135, 1073) ~= true then
		return false
	end
		
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7032(context, evt)
	ScriptLib.ChangeToTargetLevelTag(context, 37)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7033(context, evt)
	if evt.param1 ~= 7033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7033(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 11)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_7034(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "turn") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,7002, GadgetState.Default)
	else
		ScriptLib.SetGadgetStateByConfigId(context,7002, GadgetState.GearStart)
	end
	
	return 0
end

require "V2_8/FireMachineColorHandle"
require "V2_8/KazuhaServeItem"