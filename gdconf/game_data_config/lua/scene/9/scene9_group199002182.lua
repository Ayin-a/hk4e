-- 基础信息
local base_info = {
	group_id = 199002182
}

-- DEFS_MISCS
local shadowConfigIDList = {182002,182003,182004}
local questID = 7902406

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
	{ config_id = 182001, gadget_id = 70500053, pos = { x = 702.960, y = 120.534, z = -568.589 }, rot = { x = 0.000, y = 130.502, z = 0.000 }, level = 20, persistent = true, arguments = { 40 }, is_use_point_array = true, area_id = 401 },
	{ config_id = 182002, gadget_id = 70500051, pos = { x = 702.596, y = 120.995, z = -562.839 }, rot = { x = 0.000, y = 147.124, z = 0.000 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 182003, gadget_id = 70500041, pos = { x = 701.629, y = 120.848, z = -564.453 }, rot = { x = 0.000, y = 41.144, z = 0.000 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 182004, gadget_id = 70500047, pos = { x = 710.243, y = 120.000, z = -567.704 }, rot = { x = 0.000, y = 105.048, z = 0.000 }, level = 20, persistent = true, area_id = 401 },
	{ config_id = 182007, gadget_id = 70500054, pos = { x = 702.960, y = 120.997, z = -568.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 401 },
	{ config_id = 182013, gadget_id = 70290196, pos = { x = 702.960, y = 120.997, z = -568.589 }, rot = { x = 0.000, y = 130.502, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 182015, gadget_id = 70380324, pos = { x = 702.960, y = 120.997, z = -568.589 }, rot = { x = 0.000, y = 130.502, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 182017, gadget_id = 70500053, pos = { x = 702.960, y = 120.997, z = -568.589 }, rot = { x = 0.000, y = 130.502, z = 0.000 }, level = 1, persistent = true, arguments = { 40 }, area_id = 401 },
	{ config_id = 182018, gadget_id = 70710786, pos = { x = 703.649, y = 120.352, z = -569.158 }, rot = { x = 276.088, y = 180.000, z = 180.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 182005, shape = RegionShape.SPHERE, radius = 12, pos = { x = 704.742, y = 120.247, z = -567.889 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1182006, name = "GADGET_CREATE_182006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_182006", action = "action_EVENT_GADGET_CREATE_182006", trigger_count = 0 },
	{ config_id = 1182008, name = "VARIABLE_CHANGE_182008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "" },
	{ config_id = 1182009, name = "GADGET_GIVING_FINISHED_182009", event = EventType.EVENT_GADGET_GIVING_FINISHED, source = "", condition = "", action = "action_EVENT_GADGET_GIVING_FINISHED_182009", trigger_count = 0 },
	{ config_id = 1182010, name = "PLATFORM_REACH_POINT_182010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_182010", action = "action_EVENT_PLATFORM_REACH_POINT_182010" },
	{ config_id = 1182011, name = "QUEST_START_182011", event = EventType.EVENT_QUEST_START, source = "7902414", condition = "", action = "action_EVENT_QUEST_START_182011", trigger_count = 0 },
	{ config_id = 1182012, name = "QUEST_START_182012", event = EventType.EVENT_QUEST_START, source = "7903307", condition = "", action = "action_EVENT_QUEST_START_182012", trigger_count = 0 },
	{ config_id = 1182014, name = "GROUP_LOAD_182014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_182014", action = "action_EVENT_GROUP_LOAD_182014", trigger_count = 0 },
	{ config_id = 1182016, name = "ANY_GADGET_DIE_182016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_182016", action = "action_EVENT_ANY_GADGET_DIE_182016" },
	{ config_id = 1182019, name = "GROUP_LOAD_182019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_182019", action = "action_EVENT_GROUP_LOAD_182019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Isdone", value = 0, no_refresh = true }
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
		gadgets = { 182001, 182018 },
		regions = { 182005 },
		triggers = { "GADGET_CREATE_182006", "VARIABLE_CHANGE_182008", "GADGET_GIVING_FINISHED_182009", "PLATFORM_REACH_POINT_182010", "QUEST_START_182011", "QUEST_START_182012", "GROUP_LOAD_182014", "ANY_GADGET_DIE_182016", "GROUP_LOAD_182019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 182007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 182002, 182003, 182004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 182013, 182015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_182006(context, evt)
	if 182007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_182006(context, evt)
	ScriptLib.ActiveGadgetItemGiving(context, 10000116, 199002182, 182007)
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_GIVING_FINISHED_182009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 199002182, EntityType.GADGET, 182007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Isdone" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Isdone", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 182001, 900200137, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（702.9603，120.9969，-568.589），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=702.9603, y=120.9969, z=-568.589}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_182010(context, evt)
	-- 判断是gadgetid 为 182001的移动平台，是否到达了900200137 的点集中的 2 点
	
	if 182001 ~= evt.param1 then
	  return false
	end
	
	if 900200137 ~= evt.param2 then
	  return false
	end
	
	if 2 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_182010(context, evt)
	-- 将configid为 182001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_182011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002182, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_182012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002182, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_182014(context, evt)
	-- 判断变量"Isdone"为1
	if ScriptLib.GetGroupVariableValue(context, "Isdone") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_182014(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 182001, 900200137, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	ScriptLib.SetGadgetStateByConfigId(context, 182001, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_182016(context, evt)
	if 182001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_182016(context, evt)
	-- 创建id为182017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 182017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_182019(context, evt)
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 199002182, 182001) then
	
	    return false
	
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_182019(context, evt)
	ScriptLib.AddQuestProgress(context, "7902406")
	return 0
end

require "V2_8/EchoConch_Quest"