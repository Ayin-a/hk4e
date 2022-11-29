-- 基础信息
local base_info = {
	group_id = 133304397
}

-- Trigger变量
local defs = {
	point_camera = 397009,
	gadget_lookEntity = 397001,
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
	[397001] = { config_id = 397001, gadget_id = 70330236, pos = { x = -1858.922, y = 217.531, z = 2952.412 }, rot = { x = 2.260, y = 20.223, z = 1.828 }, level = 30, persistent = true, area_id = 21 },
	[397002] = { config_id = 397002, gadget_id = 70330236, pos = { x = -1859.525, y = 107.430, z = 2955.885 }, rot = { x = 4.839, y = 184.144, z = 358.845 }, level = 30, persistent = true, area_id = 21 },
	-- 1号门trigger 下面参数为传送后坐标
	[397003] = { config_id = 397003, gadget_id = 70290264, pos = { x = -1858.468, y = 218.003, z = 2953.333 }, rot = { x = 0.000, y = 313.090, z = 0.000 }, level = 30, area_id = 21 },
	-- 2号门trigger 下面参数为传送后坐标
	[397004] = { config_id = 397004, gadget_id = 70290264, pos = { x = -1859.721, y = 107.402, z = 2954.558 }, rot = { x = 0.000, y = 7.949, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号门成功时注目
	{ config_id = 1397005, name = "GADGET_STATE_CHANGE_397005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_397005", action = "action_EVENT_GADGET_STATE_CHANGE_397005" },
	-- 1号门触发
	{ config_id = 1397006, name = "GADGET_STATE_CHANGE_397006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_397006", action = "action_EVENT_GADGET_STATE_CHANGE_397006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1397007, name = "GADGET_STATE_CHANGE_397007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_397007", action = "action_EVENT_GADGET_STATE_CHANGE_397007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1397008, name = "GADGET_STATE_CHANGE_397008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_397008", action = "action_EVENT_GADGET_STATE_CHANGE_397008" }
}

-- 点位
points = {
	[397009] = { config_id = 397009, pos = { x = -1859.837, y = 220.568, z = 2961.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 21 }
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
		gadgets = { 397001, 397002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_397005", "GADGET_STATE_CHANGE_397006", "GADGET_STATE_CHANGE_397007", "GADGET_STATE_CHANGE_397008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 397001, 397002, 397003, 397004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_397005", "GADGET_STATE_CHANGE_397006", "GADGET_STATE_CHANGE_397007", "GADGET_STATE_CHANGE_397008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_397005(context, evt)
	if 397001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_397005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_397006(context, evt)
	if 397001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_397006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304397, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 397002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 397002, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_397007(context, evt)
	if 397002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_397007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304397, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 397001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 397001, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_397008(context, evt)
	if 397002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_397008(context, evt)
	-- 触发镜头注目，注目位置为坐标（-1858.863，219.5，2952.408），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1858.863, y=219.5, z=2952.408}
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