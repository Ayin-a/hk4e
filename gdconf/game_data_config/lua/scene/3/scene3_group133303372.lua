-- 基础信息
local base_info = {
	group_id = 133303372
}

-- Trigger变量
local defs = {
	point_camera = 372009,
	gadget_lookEntity = 372001,
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
	[372001] = { config_id = 372001, gadget_id = 70330236, pos = { x = -1880.151, y = 366.800, z = 3756.615 }, rot = { x = 0.000, y = 141.513, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	[372002] = { config_id = 372002, gadget_id = 70330236, pos = { x = -1869.600, y = 324.730, z = 3730.710 }, rot = { x = 0.000, y = 305.670, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	-- 1号门trigger 下面参数为传送后坐标
	[372003] = { config_id = 372003, gadget_id = 70290264, pos = { x = -1880.290, y = 367.176, z = 3756.765 }, rot = { x = 0.000, y = 141.975, z = 0.000 }, level = 30, area_id = 23 },
	-- 2号门trigger 下面参数为传送后坐标
	[372004] = { config_id = 372004, gadget_id = 70290264, pos = { x = -1869.798, y = 325.414, z = 3731.132 }, rot = { x = 0.000, y = 295.278, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号门成功时注目
	{ config_id = 1372005, name = "GADGET_STATE_CHANGE_372005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_372005", action = "action_EVENT_GADGET_STATE_CHANGE_372005" },
	-- 1号门触发
	{ config_id = 1372006, name = "GADGET_STATE_CHANGE_372006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_372006", action = "action_EVENT_GADGET_STATE_CHANGE_372006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1372007, name = "GADGET_STATE_CHANGE_372007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_372007", action = "action_EVENT_GADGET_STATE_CHANGE_372007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1372008, name = "GADGET_STATE_CHANGE_372008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_372008", action = "action_EVENT_GADGET_STATE_CHANGE_372008" }
}

-- 点位
points = {
	-- 相机点
	[372009] = { config_id = 372009, pos = { x = -1876.066, y = 370.734, z = 3748.498 }, rot = { x = 0.000, y = 314.752, z = 0.000 }, area_id = 23 }
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
		gadgets = { 372001, 372002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_372005", "GADGET_STATE_CHANGE_372006", "GADGET_STATE_CHANGE_372007", "GADGET_STATE_CHANGE_372008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 372001, 372002, 372003, 372004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_372005", "GADGET_STATE_CHANGE_372006", "GADGET_STATE_CHANGE_372007", "GADGET_STATE_CHANGE_372008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_372005(context, evt)
	if 372001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_372006(context, evt)
	if 372001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303372, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 372002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372002, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_372007(context, evt)
	if 372002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303372, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 372001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372001, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_372008(context, evt)
	if 372002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_372008(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-1869.6, y=324.73, z=3730.71}，持续时间为0秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1869.6, y=324.73, z=3730.71}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 0, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/CameraLook"