-- 基础信息
local base_info = {
	group_id = 155005118
}

-- Trigger变量
local defs = {
	pointarryRot = 500500007,
	pointarryRott = 500500008
}

-- DEFS_MISCS
local EnvControlGadgets = {118003,118004}
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
	{ config_id = 118001, gadget_id = 70290170, pos = { x = 644.987, y = 191.653, z = 491.749 }, rot = { x = 0.000, y = 170.000, z = 0.000 }, level = 36, persistent = true, is_use_point_array = true, area_id = 200 },
	{ config_id = 118002, gadget_id = 70211101, pos = { x = 631.762, y = 192.268, z = 494.572 }, rot = { x = 0.000, y = 82.509, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 118003, gadget_id = 70360305, pos = { x = 642.484, y = 191.668, z = 480.686 }, rot = { x = 4.548, y = 161.352, z = 357.743 }, level = 36, area_id = 200 },
	{ config_id = 118004, gadget_id = 70360309, pos = { x = 646.886, y = 192.219, z = 498.093 }, rot = { x = 0.000, y = 78.295, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 118005, gadget_id = 70211101, pos = { x = 643.522, y = 192.320, z = 499.430 }, rot = { x = 0.000, y = 168.680, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 118006, gadget_id = 70290170, pos = { x = 639.047, y = 191.653, z = 495.544 }, rot = { x = 0.000, y = 80.520, z = 0.000 }, level = 36, persistent = true, is_use_point_array = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1118007, name = "GADGET_STATE_CHANGE_118007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118007", action = "action_EVENT_GADGET_STATE_CHANGE_118007", trigger_count = 0 },
	{ config_id = 1118008, name = "GADGET_STATE_CHANGE_118008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118008", action = "action_EVENT_GADGET_STATE_CHANGE_118008", trigger_count = 0 },
	{ config_id = 1118009, name = "GROUP_LOAD_118009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_118009", trigger_count = 0 },
	-- 判断Door02
	{ config_id = 1118010, name = "GROUP_LOAD_118010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_118010", action = "action_EVENT_GROUP_LOAD_118010", trigger_count = 0 },
	-- 判断Door01
	{ config_id = 1118011, name = "GROUP_LOAD_118011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_118011", action = "action_EVENT_GROUP_LOAD_118011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Door02", value = 0, no_refresh = true },
	{ config_id = 2, name = "Door01", value = 0, no_refresh = true }
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
		gadgets = { 118001, 118002, 118003, 118004, 118005, 118006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_118007", "GADGET_STATE_CHANGE_118008", "GROUP_LOAD_118009", "GROUP_LOAD_118010", "GROUP_LOAD_118011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118007(context, evt)
	if 118003 ~= evt.param2 or 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155005118, 118003) then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118007(context, evt)
		ScriptLib.SetPlatformPointArray(context, 118001, defs.pointarryRot, { 1 }, { route_type = 0,turn_mode=true })
	
			local pos = {x=644.9871, y=195, z=492}
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
function condition_EVENT_GADGET_STATE_CHANGE_118008(context, evt)
	if 118004 ~= evt.param2 or 322 ~= ScriptLib.GetGadgetStateByConfigId(context, 155005118, 118004) then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118008(context, evt)
		ScriptLib.SetPlatformPointArray(context, 118006, defs.pointarryRott, { 1 }, { route_type = 0,turn_mode=true })
		ScriptLib.SetPlatformPointArray(context, 118001, defs.pointarryRot, { 1 }, { route_type = 0,turn_mode=true })
		-- 将本组内变量名为 "Door02" 的变量设置为 1
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "Door02", 1) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		  return -1
		end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_118009(context, evt)
	DayNight_Gadget_Unlock(context,118003)
	DayNight_Gadget_Unlock(context,118004)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_118010(context, evt)
	-- 判断变量"Door02"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Door02", 155005118) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_118010(context, evt)
		ScriptLib.SetPlatformPointArray(context, 118006, defs.pointarryRott, { 1 }, { route_type = 0,turn_mode=true })
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_118011(context, evt)
	-- 判断变量"Door01"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Door01", 155005118) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_118011(context, evt)
		ScriptLib.SetPlatformPointArray(context, 118001, defs.pointarryRot, { 1 }, { route_type = 0,turn_mode=true })
	return 0
end

require "V2_4/EnvState"