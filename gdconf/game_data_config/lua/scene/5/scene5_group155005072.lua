-- 基础信息
local base_info = {
	group_id = 155005072
}

-- Trigger变量
local defs = {
	pointarryRot = 500500002,
	pointarryRott = 500500003
}

-- DEFS_MISCS
local EnvControlGadgets = {72003,72004}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

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
	{ config_id = 72001, gadget_id = 70290170, pos = { x = 559.380, y = 217.438, z = 860.408 }, rot = { x = 0.000, y = 270.000, z = 359.858 }, level = 36, persistent = true, is_use_point_array = true, area_id = 200 },
	{ config_id = 72002, gadget_id = 70211101, pos = { x = 566.809, y = 217.970, z = 860.475 }, rot = { x = 0.000, y = 269.981, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 72003, gadget_id = 70360305, pos = { x = 545.494, y = 217.382, z = 857.626 }, rot = { x = 0.000, y = 90.952, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 72004, gadget_id = 70360309, pos = { x = 561.303, y = 218.020, z = 873.728 }, rot = { x = 0.000, y = 90.199, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 72005, gadget_id = 70211101, pos = { x = 566.141, y = 217.944, z = 850.356 }, rot = { x = 0.000, y = 91.178, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 72006, gadget_id = 70290170, pos = { x = 573.906, y = 217.600, z = 865.509 }, rot = { x = 0.000, y = 359.317, z = 0.000 }, level = 36, persistent = true, is_use_point_array = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1072007, name = "GADGET_STATE_CHANGE_72007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72007", action = "action_EVENT_GADGET_STATE_CHANGE_72007", trigger_count = 0 },
	{ config_id = 1072008, name = "GADGET_STATE_CHANGE_72008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_72008", action = "action_EVENT_GADGET_STATE_CHANGE_72008", trigger_count = 0 },
	{ config_id = 1072009, name = "GROUP_LOAD_72009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_72009", trigger_count = 0 },
	-- Door01
	{ config_id = 1072010, name = "GROUP_LOAD_72010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_72010", action = "action_EVENT_GROUP_LOAD_72010", trigger_count = 0 },
	-- Door02
	{ config_id = 1072011, name = "GROUP_LOAD_72011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_72011", action = "action_EVENT_GROUP_LOAD_72011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Door01", value = 0, no_refresh = true },
	{ config_id = 2, name = "Door02", value = 0, no_refresh = true }
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
		gadgets = { 72001, 72002, 72003, 72004, 72005, 72006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_72007", "GADGET_STATE_CHANGE_72008", "GROUP_LOAD_72009", "GROUP_LOAD_72010", "GROUP_LOAD_72011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_72007(context, evt)
	if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155005072, 72003) then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72007(context, evt)
		ScriptLib.SetPlatformPointArray(context, 72001, defs.pointarryRot, { 1 }, { route_type = 0,turn_mode=true })
	
		-- 触发镜头注目，注目位置为坐标（559.38，220.4384，860.4082），持续时间为2秒，并且为强制注目形式，不广播其他玩家
			local pos = {x=559.38, y=220.4384, z=860.4082}
		  local pos_follow = {x=0, y=0, z=0}
		    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
		                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
		                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
						ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
		        return -1
					end 
	-- 将本组内变量名为 "Door01" 的变量设置为 1
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "Door01", 1) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		  return -1
		end
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_72008(context, evt)
	if 322 ~= ScriptLib.GetGadgetStateByConfigId(context, 155005072, 72004) then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_72008(context, evt)
		ScriptLib.SetPlatformPointArray(context, 72006, defs.pointarryRott, { 1 }, { route_type = 0,turn_mode=true })
	
			--触发镜头注目，注目位置为坐标（573.9063，220.4384，865.5082），持续时间为2秒，并且为强制注目形式，不广播其他玩家
				local pos = {x=573.9063, y=220.4384, z=865.5082}
			  local pos_follow = {x=0, y=0, z=0}
			    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
			                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
			                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
							ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
			        return -1
						end 
	-- 将本组内变量名为 "Door02" 的变量设置为 1
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "Door02", 1) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		  return -1
		end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_72009(context, evt)
	DayNight_Gadget_Unlock(context,72003)
	DayNight_Gadget_Unlock(context,72004)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_72010(context, evt)
	-- 判断变量"Door01"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Door01", 155005072) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_72010(context, evt)
		ScriptLib.SetPlatformPointArray(context, 72001, defs.pointarryRot, { 1 }, { route_type = 0,turn_mode=true })
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_72011(context, evt)
	-- 判断变量"Door02"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Door02", 155005072) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_72011(context, evt)
		ScriptLib.SetPlatformPointArray(context, 72006, defs.pointarryRott, { 1 }, { route_type = 0,turn_mode=true })
	return 0
end

require "V2_4/EnvState"