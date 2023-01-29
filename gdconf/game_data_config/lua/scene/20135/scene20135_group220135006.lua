-- 基础信息
local base_info = {
	group_id = 220135006
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                        6011
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [6011] = 1,
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
                        [6012] = {0, 102, 103, 104},
                 [6013] = {0, 102, 103, 104},
                 [6014] = {0, 102, 103, 104},
                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
                        [6012] = {0, 302, 303, 304},
                 [6013] = {0, 302, 303, 304},
                 [6014] = {0, 302, 303, 304},
                },
              serve_items = {6018}

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
	{ config_id = 6001, gadget_id = 70590060, pos = { x = 50.830, y = 123.660, z = 31.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, start_route = false, persistent = true, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
	{ config_id = 6002, gadget_id = 70360170, pos = { x = 53.723, y = 121.975, z = 45.906 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { init_options = { 7 } } },
	{ config_id = 6005, gadget_id = 70690036, pos = { x = 43.072, y = 102.715, z = 37.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6006, gadget_id = 70310369, pos = { x = 49.169, y = 137.957, z = 23.241 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 6009, gadget_id = 70290375, pos = { x = 54.200, y = 142.866, z = 17.022 }, rot = { x = 0.000, y = 358.334, z = 180.000 }, level = 1, persistent = true },
	{ config_id = 6010, gadget_id = 70290375, pos = { x = 56.648, y = 141.538, z = 39.561 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, state = GadgetState.GearStart, persistent = true },
	{ config_id = 6011, gadget_id = 70310367, pos = { x = 47.149, y = 119.769, z = 38.090 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 6012, gadget_id = 70310368, pos = { x = 59.891, y = 120.226, z = 38.236 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 6013, gadget_id = 70310368, pos = { x = 59.891, y = 120.226, z = 24.362 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 6014, gadget_id = 70310368, pos = { x = 50.665, y = 120.226, z = 24.362 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 6018, gadget_id = 70310363, pos = { x = 51.002, y = 120.226, z = 28.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 6019, gadget_id = 70310418, pos = { x = 51.002, y = 121.010, z = 28.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true },
	{ config_id = 6021, gadget_id = 70310365, pos = { x = 66.659, y = 142.565, z = 26.927 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 6016, shape = RegionShape.SPHERE, radius = 6, pos = { x = 59.903, y = 103.850, z = 23.588 } },
	{ config_id = 6022, shape = RegionShape.SPHERE, radius = 8, pos = { x = 53.723, y = 121.975, z = 45.906 } }
}

-- 触发器
triggers = {
	{ config_id = 1006003, name = "SELECT_OPTION_6003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_6003", trigger_count = 0 },
	{ config_id = 1006004, name = "SELECT_OPTION_6004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6004", action = "action_EVENT_SELECT_OPTION_6004", trigger_count = 0 },
	{ config_id = 1006007, name = "GROUP_LOAD_6007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_6007", trigger_count = 0 },
	{ config_id = 1006008, name = "GADGET_STATE_CHANGE_6008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6008", action = "action_EVENT_GADGET_STATE_CHANGE_6008" },
	-- 4006605 任务保底
	{ config_id = 1006015, name = "QUEST_START_6015", event = EventType.EVENT_QUEST_START, source = "4006605", condition = "condition_EVENT_QUEST_START_6015", action = "action_EVENT_QUEST_START_6015", trigger_count = 0 },
	{ config_id = 1006016, name = "ENTER_REGION_6016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6016", action = "action_EVENT_ENTER_REGION_6016", trigger_count = 0 },
	-- 4006605 任务保底
	{ config_id = 1006017, name = "GROUP_LOAD_6017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6017", action = "action_EVENT_GROUP_LOAD_6017", trigger_count = 0 },
	{ config_id = 1006020, name = "ANY_GADGET_DIE_6020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6020", action = "action_EVENT_ANY_GADGET_DIE_6020" },
	{ config_id = 1006022, name = "ENTER_REGION_6022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6022", action = "action_EVENT_ENTER_REGION_6022", trigger_count = 0 },
	{ config_id = 1006023, name = "GROUP_LOAD_6023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_6023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "turn", value = 1, no_refresh = true },
	{ config_id = 1, name = "room", value = 0, no_refresh = true },
	{ config_id = 3, name = "isLock_1", value = 1, no_refresh = true }
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
		gadgets = { 6001, 6002, 6005, 6006, 6009, 6010, 6011, 6012, 6013, 6014, 6018, 6019, 6021 },
		regions = { 6016, 6022 },
		triggers = { "SELECT_OPTION_6003", "SELECT_OPTION_6004", "GROUP_LOAD_6007", "GADGET_STATE_CHANGE_6008", "QUEST_START_6015", "ENTER_REGION_6016", "GROUP_LOAD_6017", "ANY_GADGET_DIE_6020", "ENTER_REGION_6022", "GROUP_LOAD_6023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_SELECT_OPTION_6003(context, evt)
	if evt.param2 == 7 and ScriptLib.GetGroupVariableValue(context, "turn") == 0 then
		ScriptLib.SetGroupVariableValueByGroup(context, "room3", 1, 220135003)
		
		ScriptLib.SetGroupVariableValue(context, "turn", 1)
		
		ScriptLib.SetPlatformPointArray(context, 6001, 1, {1}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Prereach, speed_level=0, arrive_range=0})
		
		ScriptLib.SetGadgetStateByConfigId(context,6006, GadgetState.Default)
		
		ScriptLib.SetGadgetStateByConfigId(context,6002, GadgetState.Default)
	else
		if evt.param2 == 7 and ScriptLib.GetGroupVariableValue(context, "turn") == 1 then
			ScriptLib.SetGadgetStateByConfigId(context,6002, GadgetState.GearStart)
			
			ScriptLib.SetGroupVariableValueByGroup(context, "room3", 0, 220135003)
			
			ScriptLib.SetGroupVariableValue(context, "turn", 0)
			
			ScriptLib.SetPlatformPointArray(context, 6001, 1, {2}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Prereach, speed_level=0, arrive_range=0})
			
			if ScriptLib.GetGroupVariableValue(context, "room") == 1 then
				ScriptLib.SetGadgetStateByConfigId(context,6006, GadgetState.GearStart)
			end
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6004(context, evt)
	-- 判断是gadgetid 6002 option_id 7
	if 6002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6004(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=50.83, y=123.66, z=31.48}，持续时间为3.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=50.83, y=123.66, z=31.48}
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
function action_EVENT_GROUP_LOAD_6007(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "turn") == 0 then
		ScriptLib.SetPlatformPointArray(context, 6001, 6, {1}, {route_type=RouteType.OneWay, turn_mode=true, record_mode=RouteRecordMode.Reach, speed_level=0, arrive_range=0})
	end
	
	ScriptLib.SetGadgetStateByConfigId(context,6021, GadgetState.Default)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6008(context, evt)
	if 6009 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6008(context, evt)
	-- 将本组内变量名为 "room" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "room", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 6006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_6015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220135006, 6006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_6015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6016(context, evt)
	if evt.param1 ~= 6016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"turn"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "turn", 220135006) ~= 1 then
			return false
		
	end
	
	if ScriptLib.CheckSceneTag(context, 20135, 1072) ~= true then
			return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6016(context, evt)
	ScriptLib.ChangeToTargetLevelTag(context, 35)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_6017(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220135006, 6006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_6020(context, evt)
	if 6019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6020(context, evt)
	-- 将本组内变量名为 "isLock_1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLock_1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 6018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6022(context, evt)
	if evt.param1 ~= 6022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6022(context, evt)
	ScriptLib.ActivateDungeonCheckPoint(context, 7)
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6023(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "turn") == 1 then
		ScriptLib.SetGadgetStateByConfigId(context,6002, GadgetState.Default)
	else
		ScriptLib.SetGadgetStateByConfigId(context,6002, GadgetState.GearStart)
	end
	
	return 0
end

require "V2_8/FireMachineColorHandle"
require "V2_8/KazuhaServeItem"