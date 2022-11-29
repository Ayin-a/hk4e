-- 基础信息
local base_info = {
	group_id = 133315111
}

-- Trigger变量
local defs = {
	point_camera = 111009,
	gadget_lookEntity = 111001,
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
	[111001] = { config_id = 111001, gadget_id = 70330236, pos = { x = -114.932, y = 307.203, z = 2137.055 }, rot = { x = 0.002, y = 263.793, z = 359.953 }, level = 27, persistent = true, area_id = 20 },
	[111002] = { config_id = 111002, gadget_id = 70330236, pos = { x = -103.895, y = 253.640, z = 2157.662 }, rot = { x = 0.000, y = 166.090, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 1号门trigger 下面参数为传送后坐标
	[111003] = { config_id = 111003, gadget_id = 70290264, pos = { x = -114.932, y = 307.783, z = 2137.055 }, rot = { x = 0.002, y = 263.793, z = 359.953 }, level = 27, area_id = 20 },
	-- 2号门trigger 下面参数为传送后坐标
	[111004] = { config_id = 111004, gadget_id = 70290264, pos = { x = -103.895, y = 253.987, z = 2157.662 }, rot = { x = 0.000, y = 166.090, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2号门成功时注目
	{ config_id = 1111005, name = "GADGET_STATE_CHANGE_111005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111005", action = "action_EVENT_GADGET_STATE_CHANGE_111005" },
	-- 1号门触发
	{ config_id = 1111006, name = "GADGET_STATE_CHANGE_111006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111006", action = "action_EVENT_GADGET_STATE_CHANGE_111006", trigger_count = 0 },
	-- 2号门触发
	{ config_id = 1111007, name = "GADGET_STATE_CHANGE_111007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111007", action = "action_EVENT_GADGET_STATE_CHANGE_111007", trigger_count = 0 },
	-- 1号门成功时注目
	{ config_id = 1111008, name = "GADGET_STATE_CHANGE_111008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111008", action = "action_EVENT_GADGET_STATE_CHANGE_111008" }
}

-- 点位
points = {
	[111009] = { config_id = 111009, pos = { x = -124.452, y = 311.606, z = 2139.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
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
		gadgets = { 111001, 111002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_111005", "GADGET_STATE_CHANGE_111006", "GADGET_STATE_CHANGE_111007", "GADGET_STATE_CHANGE_111008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 111001, 111002, 111003, 111004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_111005", "GADGET_STATE_CHANGE_111006", "GADGET_STATE_CHANGE_111007", "GADGET_STATE_CHANGE_111008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_111005(context, evt)
	if 111001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111005(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_111006(context, evt)
	if 111001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315111, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 111002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111002, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_111007(context, evt)
	if 111002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315111, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将configid为 111001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111001, GadgetState.GearStart) then
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
function condition_EVENT_GADGET_STATE_CHANGE_111008(context, evt)
	if 111002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111008(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-114.9319, y=308.2029, z=2137.055}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-114.9319, y=308.2029, z=2137.055}
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