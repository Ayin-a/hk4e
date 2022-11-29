-- 基础信息
local base_info = {
	group_id = 133302367
}

-- Trigger变量
local defs = {
	point_camera = 367009,
	gadget_lookEntity = 367001,
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
	[367001] = { config_id = 367001, gadget_id = 70330236, pos = { x = -706.954, y = 202.146, z = 2939.967 }, rot = { x = 359.966, y = 192.334, z = 359.968 }, level = 27, persistent = true, area_id = 24 },
	[367002] = { config_id = 367002, gadget_id = 70330236, pos = { x = -723.501, y = 153.685, z = 2940.265 }, rot = { x = 354.061, y = 348.911, z = 357.534 }, level = 27, persistent = true, area_id = 24 },
	-- 1号门trigger 下面参数为传送后坐标
	[367003] = { config_id = 367003, gadget_id = 70290264, pos = { x = -707.086, y = 202.922, z = 2939.911 }, rot = { x = 0.000, y = 191.487, z = 0.000 }, level = 27, area_id = 24 },
	-- 2号门trigger 下面参数为传送后坐标
	[367004] = { config_id = 367004, gadget_id = 70290264, pos = { x = -723.487, y = 154.275, z = 2940.239 }, rot = { x = 0.000, y = 351.485, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号门成功时注目
	{ config_id = 1367005, name = "GADGET_STATE_CHANGE_367005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367005", action = "action_EVENT_GADGET_STATE_CHANGE_367005" },
	-- 1号门触发
	{ config_id = 1367006, name = "GADGET_STATE_CHANGE_367006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367006", action = "action_EVENT_GADGET_STATE_CHANGE_367006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1367007, name = "GADGET_STATE_CHANGE_367007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367007", action = "action_EVENT_GADGET_STATE_CHANGE_367007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1367008, name = "GADGET_STATE_CHANGE_367008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_367008", action = "action_EVENT_GADGET_STATE_CHANGE_367008" }
}

-- 点位
points = {
	[367009] = { config_id = 367009, pos = { x = -709.385, y = 206.369, z = 2930.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
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
		gadgets = { 367001, 367002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_367005", "GADGET_STATE_CHANGE_367006", "GADGET_STATE_CHANGE_367007", "GADGET_STATE_CHANGE_367008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 367001, 367002, 367003, 367004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_367005", "GADGET_STATE_CHANGE_367006", "GADGET_STATE_CHANGE_367007", "GADGET_STATE_CHANGE_367008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_367005(context, evt)
	if 367001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_367006(context, evt)
	if 367001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302367, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 367002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 367002, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_367007(context, evt)
	if 367002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302367, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 367001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 367001, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_367008(context, evt)
	if 367002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_367008(context, evt)
	-- 触发镜头注目，注目位置为坐标（-707，203，2939），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-707, y=203, z=2939}
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