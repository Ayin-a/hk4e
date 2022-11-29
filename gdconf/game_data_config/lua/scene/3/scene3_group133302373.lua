-- 基础信息
local base_info = {
	group_id = 133302373
}

-- Trigger变量
local defs = {
	point_camera = 373009,
	gadget_lookEntity = 373001,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
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
	[373001] = { config_id = 373001, gadget_id = 70330236, pos = { x = -936.304, y = 211.475, z = 2763.987 }, rot = { x = 359.975, y = 206.438, z = 359.961 }, level = 27, persistent = true, area_id = 24 },
	[373002] = { config_id = 373002, gadget_id = 70330236, pos = { x = -924.372, y = 160.962, z = 2762.437 }, rot = { x = 0.035, y = 288.052, z = 359.969 }, level = 27, persistent = true, area_id = 24 },
	-- 1号门trigger 下面参数为传送后坐标
	[373003] = { config_id = 373003, gadget_id = 70290264, pos = { x = -936.534, y = 211.489, z = 2763.737 }, rot = { x = 0.000, y = 223.551, z = 0.000 }, level = 27, area_id = 24 },
	-- 2号门trigger 下面参数为传送后坐标
	[373004] = { config_id = 373004, gadget_id = 70290264, pos = { x = -924.694, y = 161.503, z = 2762.653 }, rot = { x = 0.000, y = 276.909, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号门成功时注目
	{ config_id = 1373005, name = "GADGET_STATE_CHANGE_373005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373005", action = "action_EVENT_GADGET_STATE_CHANGE_373005" },
	-- 1号门触发
	{ config_id = 1373006, name = "GADGET_STATE_CHANGE_373006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373006", action = "action_EVENT_GADGET_STATE_CHANGE_373006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1373007, name = "GADGET_STATE_CHANGE_373007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373007", action = "action_EVENT_GADGET_STATE_CHANGE_373007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1373008, name = "GADGET_STATE_CHANGE_373008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_373008", action = "action_EVENT_GADGET_STATE_CHANGE_373008" }
}

-- 点位
points = {
	[373009] = { config_id = 373009, pos = { x = -940.346, y = 214.872, z = 2757.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
}

-- 变量
variables = {
	{ config_id = 1, name = "first", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 373001, 373002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_373005", "GADGET_STATE_CHANGE_373006", "GADGET_STATE_CHANGE_373007", "GADGET_STATE_CHANGE_373008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 373001, 373002, 373003, 373004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_373005", "GADGET_STATE_CHANGE_373006", "GADGET_STATE_CHANGE_373007", "GADGET_STATE_CHANGE_373008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373005(context, evt)
	if 373001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373006(context, evt)
	if 373001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302373, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 373002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 373002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373007(context, evt)
	if 373002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302373, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 373001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 373001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_373008(context, evt)
	if 373002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_373008(context, evt)
	-- 触发镜头注目，注目位置为坐标（-932，211，2762），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-932, y=211, z=2762}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/CameraLook"